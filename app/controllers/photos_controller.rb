class PhotosController < ApplicationController
  def index
    
  end
  
  def upload
    flash[:notice] = request.raw_post
    flash[:color] = "invalid"
    redirect_to index_path
  end
end
