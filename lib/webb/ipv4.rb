module Webb
  class IPv4
    include Comparable
    include Enumerable

    attr :ip

    def initialize( ip_string )
      @ip = ip_string.split(".").to_a.map(&:to_i)
      raise "Length of IP must be 4." unless @ip.length == 4
    end

    def each
      @ip.each{|i| yield i}
    end

    def <=>(other)
      comparison = nil
      ip.each_with_index do |item, index|
        comparison = (item <=> other.to_a[index])
        break unless comparison == 0
      end
      comparison
    end

    def to_s
      ip * "."
    end

    def inspect
      @ip
    end

    def to_a
      ip
    end
  end
end
