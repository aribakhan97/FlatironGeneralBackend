class CreatePatient < ActiveRecord::Migration[6.0]
  def change
    create_table :patients do |t|
      t.string :name
      t.string :profile
      t.string :comments
      t.boolean :covid
      t.integer :office_id
    end
  end
end
