class RenameChapters < ActiveRecord::Migration
  def change
    rename_table :chapters, :chapter
  end
end
