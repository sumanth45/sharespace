class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.integer :uid
      t.string :name
      t.string :email

      t.timestamps
    end
  end
end
