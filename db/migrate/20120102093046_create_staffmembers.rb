class CreateStaffmembers < ActiveRecord::Migration
  def change
    create_table :staffmembers do |t|
      t.string :forename
      t.string :surname
      t.string :position
      t.boolean :is_manager
      t.timestamps
    end
  end
end
