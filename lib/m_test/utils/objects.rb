module MTest
  module Utils
    ##
    # Objects
    module Objects
      def self.create_hashes
        test = []
        500_000.times do
          test << { id: 'ASDF', name: 'test_hash' }
        end
      end
    end
  end
end
