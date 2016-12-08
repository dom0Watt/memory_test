require 'ostruct'
module MTest
  module Datasources
    ##
    # Connection class
    module Connection
      def client
        @@client ||= connection
      end

      private

      def connection
        OpenStruct.new(id: Random.new_seed)
      end
    end
  end
end
