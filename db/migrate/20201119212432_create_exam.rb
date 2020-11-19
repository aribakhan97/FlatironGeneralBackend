class CreateExam < ActiveRecord::Migration[6.0]
  def change
    create_table :exams do |t|
      t.integer :patient_id
      t.datetime :date
      t.string :vitals
      t.string :diagnosis
      t.string :comments
    end
  end
end
