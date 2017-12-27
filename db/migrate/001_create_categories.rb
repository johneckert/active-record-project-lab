class CreateCategories < ActiveRecord::Migration[5.1]
  def change
    create_table :authors do |t|
      t.string :name
    end

    create_table :books do |t|
      t.string :title
    end

    create_table :categories do |t|
      t.string :name
    end

    create_table :users do |t|
      t.string :name
    end

    create_table :loans do |t|
      t.belongs_to :book, index: true
      t.belongs_to :user, index: true
      t.boolean :checked_out?, default: false
    end
  end
end
