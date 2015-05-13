class WishController < ApplicationController

  def new
    @url = Pic.all.sample.url
  end

  def create
    Spam.new.generate(wish_params[:number], wish_params[:pic], wish_params[:message], wish_params[:url])
    flash[:notice] = "Trolio sent."
    redirect_to root_path
  end

  private

  def wish_params
    params.require(:wish).permit(:number, :pic, :message, :url)
  end

end