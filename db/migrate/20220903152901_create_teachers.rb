class CreateTeachers < ActiveRecord::Migration[7.0]
  def change
    create_table :teachers do |t|
      t.string :name
      t.string :street_address
      t.string :specialisation
      t.integer :salary
      t.timestamps
    end
  end
end
