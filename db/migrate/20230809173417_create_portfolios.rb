class CreatePortfolios < ActiveRecord::Migration[7.0]
  def change
    create_table :portfolios do |t|
      t.string :titel
      t.string :sublitel
      t.text :body
      t.text :main_image
      t.text :thumb_image

      t.timestamps
    end
  end
end
