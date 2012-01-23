class CreateAppointments < ActiveRecord::Migration
  def change
    create_table :appointments do |t|
      t.integer :staffmember_id
      t.integer :meeting_id
      t.timestamps
    end
  end
end
