class CouponsController < ApplicationController

  get '/' do
    @coupons = CoupsModel.all
    erb :coupons_index
  end

  get '/create' do
    erb :coupons_create
  end

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

  get '/edit/:id' do
    @id = params[:id]
    @coupon = CoupsModel.find(@id)

    erb :coupons_edit
  end

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

  post '/delete' do
    @id = params[:id]
    @coupon = CoupsModel.find(@id)
    @coupon.destroy

    erb :coupons_delete_success
  end

end
