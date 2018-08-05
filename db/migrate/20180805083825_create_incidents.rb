class CreateIncidents < ActiveRecord::Migration[5.2]
  def change
    create_table :incidents do |t|
      t.string :school_name
      t.text :description

      t.timestamps
    end
  end
end
