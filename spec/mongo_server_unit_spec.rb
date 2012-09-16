require File.join(File.dirname(__FILE__), %w[../koda_app])
require File.join(File.dirname(__FILE__), %w[mongo_server_shared])
require File.join(File.dirname(__FILE__), %w[uniform_server_shared])
require File.join(File.dirname(__FILE__), %w[doubles/mongo_db_double])
require File.join(File.dirname(__FILE__), %w[doubles/mongo_grid_double])
require File.join(File.dirname(__FILE__), %w[doubles/mongo_collection_double])

set :environment, :test

describe 'Mongo KodaRms Unit' do
  include Rack::Test::Methods
  
  before(:each) do
     MongoDbDouble.instance.reset
  end
  
  before do
    MongoConfig.instance_eval do
      
      def GetMongoDatabase 
        MongoDbDouble.instance
      end
      
      def GetGridFS
        MongoGridDouble.instance
      end
    end
  end

  def app
    Sinatra::Application
  end

  it_should_behave_like "Mongo KodaRms options interface"
  it_should_behave_like "Mongo KodaRms read interface"
  it_should_behave_like "Mongo KodaRms write interface"
  
end
