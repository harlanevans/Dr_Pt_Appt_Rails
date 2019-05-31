class CreateAppts < ActiveRecord::Migration[5.2]
  def change
    create_table :appts do |t|
      t.date :date
      t.time :time
      t.belongs_to :patient, foreign_key: true
      t.belongs_to :doctor, foreign_key: true

      t.timestamps
    end
  end
end
