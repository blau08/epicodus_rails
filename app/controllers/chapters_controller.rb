class ChaptersController < ApplicationController
  def index
    @chapters = Chapter.all
    render :index
  end

  def show
    @chapters = Chapter.find(params[:id])
  end

end
