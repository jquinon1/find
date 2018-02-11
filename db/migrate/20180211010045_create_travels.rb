class CreateTravels < ActiveRecord::Migration[5.1]
  def change
    create_table :travels do |t|
      t.string :title
      t.string :created_by
      t.boolean :done

      t.timestamps
    end
  end
end
