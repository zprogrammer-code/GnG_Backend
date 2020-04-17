class CreateContacts < ActiveRecord::Migration[6.0]
  def change
    create_table :contacts do |t|
      t.string :email
      t.integer :number
      t.string :comment

      t.timestamps
    end
  end
end
