class AddBooleansToTempJob < ActiveRecord::Migration[7.0]
  def change
    add_column :temp_jobs, :proposal, :boolean
    add_column :temp_jobs, :request, :boolean
    add_column :temp_jobs, :post, :boolean
  end
end
