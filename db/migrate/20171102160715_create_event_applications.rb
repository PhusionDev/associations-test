class CreateEventApplications < ActiveRecord::Migration[5.1]
  def change
    create_table :event_applications do |t|
      t.references :user, index: true
      t.references :event, index: true
      t.string :status
      
      t.timestamps
    end
  end
end
