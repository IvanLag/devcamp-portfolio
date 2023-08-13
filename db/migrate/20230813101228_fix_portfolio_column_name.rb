class FixPortfolioColumnName < ActiveRecord::Migration[7.0]
  def change
    rename_column :portfolios, :titel, :title
    rename_column :portfolios, :sublitel, :subtitle
  end
end
