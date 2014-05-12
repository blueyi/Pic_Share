class BasePagesController < ApplicationController
  def home
	@album = current_user.albums.build if signed_in?
	@shared = Album.all
  end

  def help
  end

  def about 
  end

  def contact
  end

  def feedback
  end
end
