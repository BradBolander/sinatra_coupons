class HomeController < ApplicationController

  get '/' do
    @coupons = CoupsModel.all
    erb :coupons_index
  end

end
