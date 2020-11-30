class CreatePatient < ActiveRecord::Migration[6.0]
  def change
    create_table :patients do |t|
      t.string :name
      t.string :profile
      t.string :comments
      t.boolean :has_covid
      t.integer :office_id
      t.integer :age
      t.string :gender
      t.string :floor
      t.string :reason_for_visit
      t.boolean :priority
      t.string :image

    end
  end
end
