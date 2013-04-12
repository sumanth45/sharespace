class CreateDeals < ActiveRecord::Migration
  def change
    create_table :deals do |t|
      t.string :type
      t.date :from
      t.date :to
      t.integer :amount
      t.text :description
      t.integer :user_id

      t.timestamps
    end
  end
end
