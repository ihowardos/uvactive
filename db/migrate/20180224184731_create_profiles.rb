class CreateProfiles < ActiveRecord::Migration[5.1]
  def change
    create_table :profiles do |t|
      t.string :first_name,  null: false
      t.string :second_name, null: false
      t.string :middle_name
      t.string :phone
      t.string :position,    null: false

      t.timestamps
    end
  end
end
