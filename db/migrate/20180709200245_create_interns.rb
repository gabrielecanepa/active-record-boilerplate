class CreateInterns < ActiveRecord::Migration[5.1]
  def change
    create_table :interns do |t|
      t.string :first_name
      t.string :last_name
      t.references :doctor, index: true # `index: true` for performance reasons, otherwise the query will execute on all the table every time
      t.timestamps
    end
  end
end
