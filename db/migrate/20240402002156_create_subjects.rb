class CreateSubjects < ActiveRecord::Migration[7.1]
  def change
    unless table_exists? :subjects
      create_table :subjects do |t|
        t.string :name
        t.string :section
        t.integer :number_of_units
        t.integer :number_of_students
        t.float :per_unit_rate

        t.timestamps
      end
    end
  end
end
