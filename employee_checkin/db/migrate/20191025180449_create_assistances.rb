class CreateAssistances < ActiveRecord::Migration[5.2]
  def change
    create_table :assistances do |t|
      t.integer :employee_id
      t.timestamp :checkin
      t.timestamp :checkout

      t.timestamps
    end
  end
end
