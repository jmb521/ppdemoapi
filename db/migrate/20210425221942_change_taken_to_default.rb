class ChangeTakenToDefault < ActiveRecord::Migration[6.1]
  def change
    remove_column :timeslots, :taken
    add_column :timeslots, :taken, :boolean, default: false
  end
end
