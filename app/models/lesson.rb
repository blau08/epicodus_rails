class Lesson < ActiveRecord::Base
  validates :title, :presence => true
  validates :number, :presence => true
  validates :content, :presence => true
  belongs_to :chapter

  default_scope { order('number ASC')}
end
