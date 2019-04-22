class CreateCourses < ActiveRecord::Migration[5.2]
  def change
    create_table :courses do |t|
      t.string :name
      t.string :description
      t.string :course_type
      t.string :date
      t.integer :student_amount
      t.references :user, index: true

      t.timestamps
    end
  end
end
