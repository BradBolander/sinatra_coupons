class CouponsController < ApplicationController

  #Default route
  get '/' do
    @coupons = CoupsModel.all
    erb :coupons_index
  end

  #Coupon creation page
  get '/create' do
    erb :coupons_create
  end

  #Create a new coupon
  post '/create' do
    @coupon = CoupsModel.new

    @coupon.title = params[:title]
    @coupon.description = params[:description]
    @coupon.product = params[:product]
    @coupon.discount = params[:discount]
    @coupon.exp_date = params[:exp_date]
    @coupon.save
    erb :coupons_create_success
  end

  #Edit a coupon page
  get '/edit/:id' do
    @id = params[:id]
    @coupon = CoupsModel.find(@id)

    erb :coupons_edit
  end

  #Edit a coupon
  post '/edit' do
    @coupon = CoupsModel.find(params[:id])
    @coupon.title = params[:title]
    @coupon.description = params[:description]
    @coupon.product = params[:product]
    @coupon.discount = params[:discount]
    @coupon.exp_date = params[:exp_date]
    @coupon.save

    erb :coupons_edit_success
  end

  #Delete a coupon
  post '/delete' do
    @id = params[:id]
    @coupon = CoupsModel.find(@id)
    @coupon.destroy

    erb :coupons_delete_success
  end

end
