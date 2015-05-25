class PhotosController < ApplicationController
  before_action :set_photo, only: [:show]

  def index
    @photos = Admin::Photo.paginate(:page => params[:page], :per_page => 12)
  end


  def show
  end


  private
    def set_photo
      @photo =  Admin::Photo.find(params[:id])
    end


end
