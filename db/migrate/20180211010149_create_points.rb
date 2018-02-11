class CreatePoints < ActiveRecord::Migration[5.1]
  def change
    create_table :points do |t|
      t.string :latitude
      t.string :longitude
      t.references :travel, foreign_key: true

      t.timestamps
    end
  end
end
