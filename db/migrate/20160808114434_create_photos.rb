class CreatePhotos < ActiveRecord::Migration[5.0]
  def change
    create_table :photos do |t|
      t.string :title
      t.text :description
      t.string :file
      t.boolean :status

      t.timestamps
    end
  end
end
