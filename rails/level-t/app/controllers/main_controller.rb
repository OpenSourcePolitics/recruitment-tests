class MainController < ApplicationController
  def index
    @links = Link.all
  end

  def create
    Link.create title: params[:title], body: "https://#{params[:body]}", author: params[:author]
    redirect_to '/main/index'
  end
end
