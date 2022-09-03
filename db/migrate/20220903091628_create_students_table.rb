class CreateStudentsTable < ActiveRecord::Migration[7.0]
  def change
    create_table :students do |t|
      t.string :name
      t.string :race
      t.string :planet
      t.integer :course_id
      t.integer :teacher_id
    end
  end
end
