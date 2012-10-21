class PhotosController < ApplicationController
  def index
    
  end
  
  def upload
    @photo = Photo.new
    @photo.raw = request.raw_post
    
    if @photo.save
      flash[:notice] = "Success!"
    else
      flash[:notice] = "Error."
    end
    
    render root_path
  end
  
  def show
    @photo = Photo.find(params[:id])
    send_data @photo.raw, :type => 'image/jpeg',:disposition => 'inline'
  end
  
end
