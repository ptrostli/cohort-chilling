class CreateEvents < ActiveRecord::Migration[5.2]
  def change
    create_table :events do |t|
      t.string :title, null:false
      t.date :date, null:false
      t.time :time, null:false
      t.string :city, null:false
      t.string :state, null:false
      t.string :zip, null:false
      t.string :address, null:false
      t.string :event_type
      t.string :description

      t.timestamps
    end
  end
end
