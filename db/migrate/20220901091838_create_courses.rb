class CreateCourses < ActiveRecord::Migration[6.1]
  def change
    create_table :courses do |t|
      t.string :course_name
      t.integer :fees_amount
      t.string :department
      t.integer :course_period
      t.integer :total_units
      t.timestamps
    end
  end
end
