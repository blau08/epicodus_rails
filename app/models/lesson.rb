class Lesson < ActiveRecord::Base
  validates :title, :presence => true
  validates :number, :presence => true
  validates :content, :presence => true
  belongs_to :chapter

  default_scope { order('number ASC')}

  def next
    if self.number
      Lesson.where(:number => (self.number + 1),:chapter_id => self.chapter_id).first
    end
  end

  def previous
    if self.number
      Lesson.where(:number => (self.number - 1),:chapter_id => self.chapter_id).first
    end
  end
end
