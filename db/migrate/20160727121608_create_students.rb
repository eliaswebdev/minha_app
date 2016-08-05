class CreateStudents < ActiveRecord::Migration[5.0]
  def change
    create_table :students do |t|
      t.string :name
      t.string :registration
      t.date :birth_date
      t.boolean :status
      t.integer :age

      t.timestamps
    end
  end
end
