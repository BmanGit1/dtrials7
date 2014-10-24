class StaticPagesController < ApplicationController

  def home
  end

  def help
  end

  def about
  end

  def contact
  end


  # DTrials Methods
  #ER specific 
  def er
  end

  def inclexcl
  end

  def trialelim
  end

  def patientdata
  end

  def datastack
  end



  #Admin Specific
  def admin
  end

  def tedit
  end

  def teammanagement
  end

  def teamcommunication
  end

  def certification
  end
  
  def datastackadd    # add dtrial media and data to datastack
	if signed_in?
	  @micropost = current_user.microposts.build if signed_in?  # enable post field
	  @feed_items = current_user.feed.paginate(page: params[:page]) # pull params for page
	end
  end

end



