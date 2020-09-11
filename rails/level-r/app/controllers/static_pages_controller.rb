class StaticPagesController < ApplicationController
  before_action :authenticate_user!, except: [:welcome]

  def welcome
     respond_to do |format|
       format.html { render :welcome }
     end
  end
end
