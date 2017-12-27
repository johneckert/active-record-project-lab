class AddDueDateToLoan < ActiveRecord::Migration[5.1]
  def change
    add_column :loans, :due_date, :string
  end
end
