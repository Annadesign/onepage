class CreateContacts < ActiveRecord::Migration[5.1]
  def change
    create_table :contacts do |t|
      t.string :name
      t.string :email
      t.string :telephone
      t.text :description
      t.string :image
      t.boolean :ispublished
      t.references :section, foreign_key: true

      t.timestamps
    end
  end
end
