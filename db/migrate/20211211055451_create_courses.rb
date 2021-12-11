class CreateCourses < ActiveRecord::Migration[6.1]
  def change
    create_table :courses do |t|
      t.string :course_name
      t.string :duration
      t.integer :cost
      t.string :description
      t.integer :student_count
      t.references :user, null: false, foreign_key: true
      t.string :category
      t.integer :total_videos
      t.string :image

      t.timestamps
    end
  end
end
