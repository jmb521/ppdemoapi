class CreateTimeslots < ActiveRecord::Migration[6.1]
  def change
    create_table :timeslots do |t|
      t.string :activity
      t.boolean :taken
      t.string :booked_email
      t.datetime :booked_time
      t.belongs_to :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
