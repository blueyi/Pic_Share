class AlbumsController < ApplicationController
  before_action :signed_in_user

  def new
	@album = current_user.albums.new
	@album_pic = @album.album_pics.build
  end

  def show
	@album = Album.find(params[:id])
	@album_pics = @album.album_pics.all

    @pics = @album.album_pics.paginate(page: params[:page])
  end

  def create
	@album = current_user.albums.build(album_params)

	respond_to do |format|
	  if @album.save
		params[:album_pics]['pic'].each do |a|
		  @album_pic = @album.album_pics.create!(:pic => a, :album_id => @album.id)
		end
		format.html { redirect_to @album, notice: 'Share was successfully created.' }
	  else
		format.html { render action: 'new' }
	  end
	end

  end

  def destroy
  end
end

def signed_in_user
  unless signed_in?
	redirect_to new_user_session_path, notice: "Please sign in."
  end
end

private

def album_params
  params.require(:album).permit(:title,:content, album_pics_attributes: [:id, :album_id, :pic])
end
