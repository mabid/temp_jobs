class CreateTempJobs < ActiveRecord::Migration[7.0]
  def change
    create_table :temp_jobs do |t|
      t.integer :office_id
      t.string :notes
      t.date :when

      t.timestamps
    end
  end
end
