class CreateCities < ActiveRecord::Migration[6.1]
  def change
    create_table :cities do |t|
      t.string :name

      t.timestamps
    end

    add_reference :cities, :doctor, foreign_key: true
    add_reference :cities, :patient, foreign_key: true
    add_reference :cities, :appointment, foreign_key: true
  
  end
end
