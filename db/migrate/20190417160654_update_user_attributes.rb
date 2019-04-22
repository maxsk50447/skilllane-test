class UpdateUserAttributes < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :first_name, :string, null: false, default: ""
    add_column :users, :last_name, :string, null: false, default: ""
    add_column :users, :nick_name, :string, null: false, default: ""
    add_column :users, :birthday, :date, null: false
    add_column :users, :gender, :string, null: false
  end
end
