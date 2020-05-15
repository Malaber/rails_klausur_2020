class CreatePatients < ActiveRecord::Migration[6.0]
  def change
    create_table :patients do |t|
      t.string :name
      t.string :email
      t.string :mobile
      t.belongs_to :doctor

      t.timestamps
    end
  end
end
