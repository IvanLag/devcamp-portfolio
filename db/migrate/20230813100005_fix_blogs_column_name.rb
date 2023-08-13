class FixBlogsColumnName < ActiveRecord::Migration[7.0]
  def change
    rename_column :blogs, :titel, :title
  end
end
