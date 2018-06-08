require 'httparty'

class Kele
  include HTTParty
  base_uri 'https://www.bloc.io/api/v1'


  def initialize(email, password)
    options = {
      body: {
        email: email,
        password: password
      }
    }
    response = self.class.post('/sessions',options)

    raise 'Invalid credentials' if response.code == 401

    p response

    @auth_token = response['auth_token']

  end
end
