require 'grape'
require 'm_test/apis/api_v1'
module MTest
  class API < Grape::API
    mount APIv1
  end
end
