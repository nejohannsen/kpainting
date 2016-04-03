class ArtWorksController < ApplicationController
  def index
    @art_works = ArtWork.all
  end

  def show
    @art_work = ArtWork.find(params[:id])
  end

  def new
    @art_work = ArtWork.new
  end

  def create
    @art_work = ArtWork.new(art_work_params)
    if @art_work.save
      flash[:notice] = "Artwork has been saved"
      redirect_to action: "Index"
    else
      flash[:alert] = "Artwork failed to save"
      render "Index"
    end
  end

  def edit
  end

  def update
  end

  def delete
  end

  def art_work_params
    params.require(:art_work).permit(:Title, :Technique, :Height, :Width, :Price, :Sold, :Description, :Image)
  end
end
