class CreateContacts < ActiveRecord::Migration[5.0]
  def change
    create_table :contacts do |t|
      t.string :name
      t.string :email
      t.string :mobile
      t.text :message
      t.boolean :status

      t.timestamps
    end
  end
end
