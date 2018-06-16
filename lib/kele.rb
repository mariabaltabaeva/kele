require 'httparty'
require 'json'
require './lib/roadmap.rb'

class Kele
  include HTTParty
  include JSON
  include Roadmap
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

    @auth_token = response['auth_token']
  end

    def get_me
    response = self.class.get('/users/me', headers: { "authorization" => @auth_token })
    JSON.parse(response.body)
  end

  def get_mentor_availability(id)
   response = self.class.get('/mentors/529277/student_availability', headers: { "authorization" => @auth_token })
   JSON.parse(response.body)
  end

  def get_messages
    response = self.class.get('/message_threads', headers: { "authorization" => @auth_token })
    JSON.parse(response.body)
  end

  def create_message(sender, recipient_id, token, subject, stripped_text)
    options = {
        "body": {
        "sender": sender,
        "recipient_id": recipient_id,
        "token": token,
        "subject": subject,
        "stripped-text": stripped_text
      }
    }
    response = self.class.post('/messages', options)

  end

  def get_remaining_checkpoints(id)
   response = self.class.get('/enrollment_chains/6660/checkpoints_remaining_in_section', headers: { "authorization" => @auth_token })
   JSON.parse(response.body)
 end
end
