class CreateReviews < ActiveRecord::Migration[6.1]
  def change
    create_table :reviews do |t|
      t.date :date
      t.references :user, null: false, foreign_key: true
      t.references :course, null: false, foreign_key: true
      t.references :enrollment, null: false, foreign_key: true

      t.timestamps
    end
  end
end
