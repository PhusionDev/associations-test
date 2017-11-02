class CreateEvents < ActiveRecord::Migration[5.1]
  def change
    create_table :events do |t|
      t.references :user, index: true
      
      t.string :title
      t.text :description
      t.string :location
      t.datetime :date

      t.timestamps
    end
  end
end
