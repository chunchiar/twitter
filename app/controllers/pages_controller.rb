class PagesController < ApplicationController
  def index
  end

  def home
  end

  def profile
    # grab the username from URL as an id
    if (User.find_by_username(params[:id]))
      @username = params[:id]
    else
    # redirect to
    redirect_to root_path, :notice=> "User not found!"
    end
  end

  def explore
  end
end
