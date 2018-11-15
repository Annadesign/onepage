class AddReferencesToProject < ActiveRecord::Migration[5.1]
  def change
    add_reference :projects, :service, foreign_key: true
  end
end
