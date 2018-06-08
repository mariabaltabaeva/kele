require 'httparty'

class Kele
  include HTTParty
  base_uri 'https://www.bloc.io/api/v1'


  def initialize(email, password)
    response = self.class.post('/sessions')

    p response

    @auth_token = [:auth_token]
  end



end
