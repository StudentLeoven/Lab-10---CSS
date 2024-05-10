class SetDefaultValues < ActiveRecord::Migration[7.1]
  def change
    change_column :students, :number_of_units, :integer, default: 0
    change_column :students, :total_assessment, :float, default: 0
    change_column :subjects, :number_of_units, :integer, default: 0
  end
end
