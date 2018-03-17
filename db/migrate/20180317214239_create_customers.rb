class CreateCustomers < ActiveRecord::Migration[5.1]
  def change
    create_table :customers do |t|
      t.string :Full_name
      t.string :Phone_name
      t.string :Email_address
      t.string :Image
      t.text :Notes

      t.timestamps
    end
  end
end
