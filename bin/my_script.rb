require 'addressable/uri'
require 'rest-client'

def create_user
  url = Addressable::URI.new(
    scheme: 'http',
    host: 'localhost',
    port: 3000,
    path: '/users.json'
  ).to_s

  begin
    puts RestClient.post(
      url,
      { user: { name: "Gizmo", Email: "gizmo@gizmo.gizmo" } }
    )
  rescue RestClient::Exception
    puts "unprocessable_entity error"
  end
end

def show_user
  url = Addressable::URI.new(
    scheme: 'http',
    host: 'localhost',
    port: 3000,
    path: '/users/4'
  ).to_s

  begin
    puts RestClient.get(url)
  rescue RestClient::Exception
    puts "error"
    # render json: , status: :unprocessable_entity
  end
end

def destroy_user
  url = Addressable::URI.new(
    scheme: 'http',
    host: 'localhost',
    port: 3000,
    path: '/users/3'
  ).to_s

  puts RestClient.delete(url)
end

# create_user
destroy_user
