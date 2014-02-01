require "spec_helper"

describe String do
  before do
    @string = "192.168.1.20"
    @array = [192, 168, 1, 20]
  end

  describe "when converted to ip" do
    it "responds with an array of integers" do
      @string.to_ip.must_equal @array
    end

    it "raises an error, when the length of the array is not 4" do
      ->{"0".to_ip}.must_raise RuntimeError
    end
  end
end
