class CreateProfessionalApplications < ActiveRecord::Migration[7.0]
  def change
    create_table :professional_applications do |t|
      t.integer :temp_job_id
      t.integer :status
      t.integer :professional_id

      t.timestamps
    end
  end
end
