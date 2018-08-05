class CreateIncidentImages < ActiveRecord::Migration[5.2]
  def change
    create_table :incident_images do |t|
      t.string :image
      t.references :incident, foreign_key: true

      t.timestamps
    end
  end
end
