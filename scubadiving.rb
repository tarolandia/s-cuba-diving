require "cuba"
require "rack/protection"

Cuba.use Rack::Session::Cookie, :secret => "thisissecretshhhhhhh"
Cuba.use Rack::Protection

Cuba.define do
  on get do
    on root do
      res.status = 200
      res.write 'OK'
    end
  end
end
