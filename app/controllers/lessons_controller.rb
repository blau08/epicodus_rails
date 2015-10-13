class LessonsController < ApplicationController

def show
  @chapter = Chapter.find(params[:chapter_id])
  @lesson = Lesson.find(params[:id])
end

#----------------- CREATE ----------------- #

def new
  @chapter = Chapter.find(params[:chapter_id])
  @lesson = @chapter.lessons.new
end

def create
  @chapter = Chapter.find(params[:chapter_id])
  @lesson = @chapter.lessons.new(lesson_params)
  if @lesson.save
    redirect_to chapters_path(@lesson.chapter)
  else
    render :new
  end
end

#----------------- UPDATE ----------------- #

def edit
  @chapter = Chapter.find(params[:chapter_id])
  @lesson = @chapter.lessons.find(params[:id])
end

def update
  @chapter = Chapter.find(params[:chapter_id])
  @lesson = @chapter.lessons.find(params[:id])
  if @lesson.update(lesson_params)
    redirect_to chapter_lesson_path(@chapter, @lesson)
  else
    render :edit
  end
end

#----------------- DESTROY ----------------- #

def destroy
  @chapter = Chapter.find(params[:chapter_id])
  @lesson = @chapter.lessons.find(params[:id])
  @lesson.destroy
  redirect_to chapter_path(@chapter)
end

#-------------------------------------------- #

private
def lesson_params
  params.require(:lesson).permit(:title, :content, :number)
end

end
