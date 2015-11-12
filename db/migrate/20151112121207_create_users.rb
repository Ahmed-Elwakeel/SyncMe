class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :f_name
      t.string :l_name
      t.string :country
      t.string :city
      t.date :b_date
      t.boolean :gender
      t.string :profile_pic
      t.text :bio
      t.string :email
      t.string :password
      t.string :phone

      t.timestamps null: false
    end
  end
end
