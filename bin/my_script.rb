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

create_user

# if __FILE__ == $PROGRAM_NAME
#
# end
