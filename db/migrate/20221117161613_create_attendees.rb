class CreateAttendees < ActiveRecord::Migration[5.2]
  def change
    create_table :attendees do |t|
      create_table :attendees do |t|
        t.belongs_to :user, foreign_key: true
        t.belongs_to :event, foreign_key: true
  
        t.timestamps
    end
  end
end
