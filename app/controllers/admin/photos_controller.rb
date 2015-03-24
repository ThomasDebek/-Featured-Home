class Admin::PhotosController < ApplicationController
  before_action :set_admin_photo, only: [:show, :edit, :update, :destroy]

  def index
    @admin_photos = Admin::Photo.all
  end

  def show
  end

  def new
    @admin_photo = Admin::Photo.new
    @photo = Admin::Photo.new
  end

  def edit
  end

  def create
    @admin_photo = Admin::Photo.new(admin_photo_params)
    @photo = Photo.new(admin_photo_params)

    if @admin_photo.save
      redirect_to @admin_photo, notice: 'Photo was successfully created.'
    else
      render :new
    end
  end

  def update
    if @admin_photo.update(admin_photo_params)
       @photo.update(admin_photo_params)
      redirect_to @admin_photo, notice: 'Photo was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    @admin_photo.destroy
    @photo.destroy
    redirect_to admin_photos_url, notice: 'Photo was successfully destroyed.'
  end

  private
  def set_admin_photo
    @admin_photo = Admin::Photo.find(params[:id])
    @photo = Admin::Photo.find(params[:id])
  end

  def admin_photo_params
    params.require(:admin_photo).permit(:name, :image_uid, :image)
  end
end
