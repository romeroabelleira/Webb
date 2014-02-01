class String
  def to_ip
    ip = split(".").map(&:to_i)

    raise "Length of #{self} is not 4." unless ip.length == 4

    ip
  end
end
