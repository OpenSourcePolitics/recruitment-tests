class LinksController < ApplicationController
  before_action :current_link, only: [:show, :edit, :update, :destroy]

  def index
    @links = Link.all
  end

  def show
    # @link = Link.find(params[:id])
  end

  def new
    @link = Link.new
  end

  def create
    link = Link.create(link_params)

    redirect_to link_path(link)
  end

  def edit
    # @link = Link.find(params[:id])
  end

  def update
    # @link = Link.find(params[:id])
    @link.update(link_params)

    redirect_to link_path(@link)
  end

  def destroy
    @link.destroy

    redirect_to links_path
  end

  private

  def link_params
    params.require(:link).permit(:url, :title, :body, :name)
  end

  # mise en commun pour toutes les opérations
  def current_link
    @link = Link.find(params[:id])
  end
end
