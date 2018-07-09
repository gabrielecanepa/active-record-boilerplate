class CreateConsultations < ActiveRecord::Migration[5.1]
  def change
    create_table :consultations do |t|
      t.references :doctor, index: true
      t.references :patient, index: true
      t.timestamps
    end
  end
end
