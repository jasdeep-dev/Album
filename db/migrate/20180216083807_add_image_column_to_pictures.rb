class AddImageColumnToPictures < ActiveRecord::Migration[5.1]
  def change
  	add_column :pictures, :images, :string, array: true
  end
end
