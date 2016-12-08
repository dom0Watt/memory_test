require 'sidekiq'
require 'm_test/services/objects'
module MTest
  module Workers
    ##
    # Fake worker
    class FakeWithService
      include Sidekiq::Worker

      def perform
        MTest::Services::Objects.new.build
      end
    end
  end
end
