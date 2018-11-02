class CreatePartners < ActiveRecord::Migration[5.1]
  def change
    create_table :partners do |t|
      t.string :title
      t.string :description
      t.string :link
      t.string :logo
      t.boolean :ispublished
      t.references :section, foreign_key: true

      t.timestamps
    end
  end
end
