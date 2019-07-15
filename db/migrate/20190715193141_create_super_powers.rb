class CreateSuperPowers < ActiveRecord::Migration[6.0]
  def change
    create_table :super_powers do |t|
      t.string :element
      t.integer :strength
      t.string :origin

      t.timestamps
    end
  end
end
