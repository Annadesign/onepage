class CreateServices < ActiveRecord::Migration[5.1]
  def change
    create_table :services do |t|
      t.string :title
      t.string :description
      t.string :icon
      t.references :section, foreign_key: true

      t.timestamps
    end
  end
end
