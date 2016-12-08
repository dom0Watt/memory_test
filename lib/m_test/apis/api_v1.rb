require 'grape'
require 'm_test/controllers/memory'
module MTest
  ##
  # API version 1
  class APIv1 < Grape::API
    mount Controllers::Memory
  end
end
