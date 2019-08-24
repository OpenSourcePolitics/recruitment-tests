class LinksController < ApplicationController

  def index

    @links = Link.order('RANDOM()')
  end

  def show

    @link = Link.find(params[:id])


  end

  def edit
    @link = Link.find(params[:id])

  end

  def update

    @link = Link.find(params[:id])
    @link.update(links_params)

    redirect_to links_path


  end

  def destroy

    @link = Link.find(params[:id])
    @link.destroy

    redirect_to offres_path

  end



  def new

    @link = Link.new

  end

  def create

    link = Link.create(links_params)
    redirect_to link_path(link.id)

  end

  private

  def links_params

    params.require(:link).permit(:title, :name, :description)

  end

end
