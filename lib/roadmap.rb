require 'httparty'
require 'json'


module Roadmap
  def get_roadmap(id)
    response = self.class.get('/roadmaps/6660', headers: { "authorization" => @auth_token })
    JSON.parse(response.body)
  end

  def get_checkpoint(id)
    response = self.class.get('/checkpoints/2265', headers: { "authorization" => @auth_token })
    JSON.parse(response.body)
  end
end
