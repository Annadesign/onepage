class CreateHomes < ActiveRecord::Migration[5.1]
  def change
    create_table :homes do |t|
      t.string :title
      t.string :summary
      t.string :image
      t.string :ispublished
      t.references :section, foreign_key: true

      t.timestamps
    end
  end
end
