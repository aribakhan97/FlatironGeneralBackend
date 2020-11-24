class CreateExam < ActiveRecord::Migration[6.0]
  def change
    create_table :exams do |t|
      t.integer :patient_id
      t.datetime :date
      t.string :vitals
      t.string :diagnosis
      t.string :comments
      t.string :physical
    end
  end
end
