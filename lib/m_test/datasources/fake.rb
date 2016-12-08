require 'm_test/datasources/connection'
module MTest
  module Datasources
    ##
    # 
    class Fake
      include Connection

      def fake_call
        { id: client.id, object_id: client.object_id }
      end
    end
  end
end
