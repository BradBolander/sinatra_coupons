require 'sinatra/base'

Dir.glob('./{controllers,models}/*.rb').each do
 |file| require file
end


map('/') { run HomeController }
map('/coupons') { run CouponsController }
map('/') { run UsersController }
