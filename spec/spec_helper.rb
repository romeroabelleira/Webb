require 'minitest/spec'
require 'minitest/autorun'
require "minitest/reporters"

Dir["#{File.dirname(__FILE__)}/../lib/**/*.rb"].each do |f|
    require f
end

MiniTest::Reporters.use!
