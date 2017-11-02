class CreateProfiles < ActiveRecord::Migration[5.1]
  def change
    create_table :profiles do |t|
      t.references :user, index: true

      t.string :full_name
      t.integer :age
      t.string :gender
      t.text :about
      
      t.timestamps
    end
  end
end
