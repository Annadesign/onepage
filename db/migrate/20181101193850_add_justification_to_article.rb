class AddJustificationToArticle < ActiveRecord::Migration[5.1]
  def change
    add_column :articles, :justification, :string
  end
end
