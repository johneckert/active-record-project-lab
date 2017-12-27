class ChangeCheckedOutToReturned < ActiveRecord::Migration[5.1]
  def change
    remove_column :loans, :checked_out?
    add_column :loans, :returned?, :boolean, default: false
  end
end
