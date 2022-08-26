class AddTypeToProfessionalApplications < ActiveRecord::Migration[7.0]
  def change
    add_column :professional_applications, :type, :string
  end
end
