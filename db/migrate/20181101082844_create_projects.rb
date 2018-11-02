class CreateProjects < ActiveRecord::Migration[5.1]
  def change
    create_table :projects do |t|
      t.string :title
      t.string :summary
      t.text :content
      t.string :image
      t.boolean :ispublished
      t.references :section, foreign_key: true

      t.timestamps
    end
  end
end
