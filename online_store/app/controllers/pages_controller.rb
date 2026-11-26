class PagesController < ApplicationController
  def home
  end

  def about
  end

  def survey
  end

  def submit_survey
    @name = params[:name]
    @email = params[:email]
    @feedback = params[:feedback]
  end
end
