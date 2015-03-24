class PhotosController < ApplicationController
  before_action :set_photo, only: [:show]

  def index
    @photos = Admin::Photo.all
  end


  def show
  end


  private
    def set_photo
      @photo =  Admin::Photo.find(params[:id])
    end


end
