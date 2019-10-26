class CreateEmployees < ActiveRecord::Migration[5.2]
  def change
    create_table :employees do |t|
      t.string :names, :null => false
      t.string :last_name, :null => false
      t.string :email, :null => false
      t.binary :gender

      t.timestamps
    end
  end
end
