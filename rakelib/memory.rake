require 'rake'
require 'm_test/workers/fake'
require 'm_test/workers/fake_with_service'
namespace :memory do
  desc 'run mutliple sidekiq jobs'
  task '10_at_a_time' do
    10.times do
      MTest::Workers::Fake.perform_async
    end
  end

  desc 'run mutiple jobs with a service and Garbage'
  task '10_with_service' do
    10.times do
      MTest::Workers::FakeWithService.perform_async
    end
  end
end
