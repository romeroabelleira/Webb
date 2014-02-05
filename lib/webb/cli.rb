require "thor"
require "thor/actions"
require "webb"
require "ipaddr"
require "typhoeus"

class Webb::CLI < Thor
  include Thor::Shell
  include Thor::Actions

  desc "scan ADDRESS", "Scans a single address for responding webservers."
  def scan(address)
    request = Typhoeus::Request.new(address, followlocation: true, timeout: 2)

    request.on_complete do |response|
      %x{open http://#{address}} if response.success?
    end
    request.run
  end

  desc "sweep FROM TO", "Sweeps a certain IP range for responding webservers."
  def sweep( from, to)
    range = (IPAddr.new(from)..IPAddr.new(to))

    queue = Typhoeus::Hydra.new
    range.each do |ip|
      request = Typhoeus::Request.new(ip.to_s, followlocation: true)
      request.on_complete do |response|
        %x{open http://#{ip}} if response.success?
      end
      queue.queue(request)
    end
    queue.run
  end

end
