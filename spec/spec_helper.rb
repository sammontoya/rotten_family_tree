require 'active_record'
require 'rspec'
require 'shoulda-matchers'

require 'person'

database_configuration = YAML::load(File.open('./db/config.yml'))
test_configuration = database_configuration["test"]
ActiveRecord::Base.establish_connection(test_configuration)

RSpec.configure do |config|
  config.after(:each) do
    #Person.all.each { |person| person.destroy }
  end
end
