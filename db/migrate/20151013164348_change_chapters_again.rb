class ChangeChaptersAgain < ActiveRecord::Migration
  def change
    rename_table :chapter, :chapters
  end
end
