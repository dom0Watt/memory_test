require 'm_test/utils/objects'
module MTest
  module Services
    ##
    # Objects
    class Objects

      def build
        GC.start
        Utils::Objects.create_hashes
      end
    end
  end
end
