class AddColumnToStudents < ActiveRecord::Migration[7.1]
  def change
    unless column_exists?(:students, :email_address)
      add_column :students, :email_address, :string
    end
  end
end
