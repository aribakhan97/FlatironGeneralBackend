class CreateDoctor < ActiveRecord::Migration[6.0]
  def change
    create_table :doctors do |t|
      t.string :name
      t.string :username
      t.string :password
      t.string :email
      t.string :speciality
      t.integer :office_id
    end
  end
end
