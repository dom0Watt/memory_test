require 'rubygems'
require 'bundler'

Bundler.setup(:default)
$LOAD_PATH.unshift("#{File.dirname(__FILE__)}/lib")

require 'm_test'
run MTest::API
