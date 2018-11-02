class AddTemplateToArticle < ActiveRecord::Migration[5.1]
  def change
    add_column :articles, :template, :string
  end
end
