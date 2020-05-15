class CreateInfections < ActiveRecord::Migration[6.0]
  def change
    create_table :infections do |t|
      t.string :name
      t.belongs_to :patient, null: false, foreign_key: true

      t.timestamps
    end
  end
end
