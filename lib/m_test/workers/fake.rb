require 'sidekiq'
require 'm_test/utils/objects'
module MTest
  module Workers
    ##
    # Fake worker
    class Fake
      include Sidekiq::Worker

      def perform
        MTest::Utils::Objects.create_hashes
      end
    end
  end
end
