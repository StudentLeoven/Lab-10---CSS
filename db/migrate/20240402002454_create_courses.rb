class CreateCourses < ActiveRecord::Migration[7.1]
  def change
    create_table :courses do |t|
      
    end
  end
end

class CreateCourses < ActiveRecord::Migration[6.0]
  def change
    unless table_exists? :courses
      create_table :courses do |t|
        t.references :subject, null: false, foreign_key: true
        t.references :student, null: false, foreign_key: true

        t.timestamps
      end
    end
  end
end