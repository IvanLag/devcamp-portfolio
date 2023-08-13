class FixSkillsColumnName < ActiveRecord::Migration[7.0]
  def change
    rename_column :skills, :titel, :title
  end
end
