class RootController < ApplicationController
  def index
    @application = Doorkeeper::Application.find_by(name: 'React')
    @application = {
      name: @application.name,
      client_id: @application.uid,
      client_secret: @application.secret
    }
  end
end
