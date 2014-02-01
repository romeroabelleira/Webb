require "spec_helper"

describe Webb::IPv4 do
  before do
    @ip1 = Webb::IPv4.new("172.16.255.0")
    @ip2 = Webb::IPv4.new("172.18.1.255")
  end

  describe "when compared" do
    it "finds ip1 to be lesser than ip2" do
      @ip1.must_be :<=, @ip2
    end
  end
end
