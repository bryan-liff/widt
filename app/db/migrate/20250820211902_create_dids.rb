class CreateDids < ActiveRecord::Migration[8.0]
  def change
    create_table :dids do |t|
      t.json :items
      t.date :day, index: true

      t.timestamps
    end
  end
end
