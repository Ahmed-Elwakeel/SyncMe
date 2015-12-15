class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :user_name
      t.string :email
      t.text :token
      t.string :city
      t.string :country
      t.string :bio
      t.string :phone
      t.string :avatar
      t.string :gender
      t.datetime :b_day

      t.timestamps null: false
    end
  end
end
