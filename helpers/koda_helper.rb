require 'sinatra'
require 'net/http'
require 'json'
require 'dalli'

helpers do
  
  def get(key, time_to_live=settings.long_ttl)

    if(!settings.enable_cache)
      return get(key);
    end
    if(settings.cache.get(key) == nil)
      settings.cache.set(key, get(key), ttl=time_to_live+rand(100))
    end

    return settings.cache.get(key)

  end
  
  private 
  
  def get(path)
      http = Net::HTTP.new(request.host, request.port)
      request = Net::HTTP::Get.new(path)
      response = http.request(request)
      JSON.parse(response.body)
  end
  
end