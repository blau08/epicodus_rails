class ChaptersController < ApplicationController
  def index
    @chapters = Chapter.all
  end

  def show
    @chapters = Chapter.find(params[:id])
  end

  #----------------- CREATE ----------------- #
  def new
    @chapter = Chapter.new
  end

  def create
    @chapter = Chapter.new(chapter_params)
    if @chapter.save
      redirect_to chapters_path
    else
      render :new
    end
  end


  #----------------- UPDATE ----------------- #

  #----------------- DESTROY ----------------- #

private
def chapter_params
  params.require(:chapter).permit(:name)
end

end
