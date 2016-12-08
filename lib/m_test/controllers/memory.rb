require 'grape'
require 'ostruct'
require 'm_test/datasources/fake'
require 'm_test/utils/objects'
module MTest
  module Controllers
    ##
    # Memory Controller
    class Memory < Grape::API
      helpers do
        def create_hashes
          Utils::Objects.create_hashes
        end

        def fake
          @fake ||= Datasources::Fake.new
        end
      end
      resource :memory do
        ##
        # CALL THIS SEVERAL TIMES TO SEE GC IN WORK
        # ONCE WE REACH MALLOC SIZE THE GC STARTS WORKING
        get :normal_print do
          create_hashes
          GC.start
        end

        get :instance_variable_fix_struct do
          @instance_variable ||= OpenStruct.new(id: 12_345)
          {
            object_id: @instance_variable.id,
            object_hash: @instance_variable.hash,
            object_id: @instance_variable.object_id
          }
        end

        get :instance_variable_random_struct do
          @instance_variable ||= OpenStruct.new(
            id: Random.new_seed
          )
          {
            object_id: @instance_variable.id,
            object_hash: @instance_variable.hash,
            object_id: @instance_variable.object_id
          }
        end

        get :static_variable_from_datasource do
          fake.fake_call
        end
      end
    end
  end
end
