class ListingsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_listing, only: [:basics, :description, :address, :price, :photos, :calendar, :bankaccount, :bankaccount, :publish]


  def index
  end

  def show
  end

  def new
    #現在のユーザーのリスティングの作成
    @listing = current_user.listings.build
  end

  def create
    @listing = current_user.listings.build(listing_params)

    if @listing.save
      redirect_to manage_listing_basics_path(@listing), notice: "Post your homework!"
    else
      redirect_to new_listing_path, notice: "You couldn't post your homework."
    end

  end

  def edit
  end

  def update
  end

  def basics
  end

  def description
  end

  def address
  end

  def price
  end

  def photos
    @photo = Photo.new
  end

  def calendar
  end

  def bankaccount
  end

  def publish
  end

  private
  def listing_params
    params.require(:listing).permit(:homework_type, :duedate, :listing_title)
  end

  def set_listing
    @listing = Listing.find(params[:id])
end

end
