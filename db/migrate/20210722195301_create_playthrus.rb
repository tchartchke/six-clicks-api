class CreatePlaythrus < ActiveRecord::Migration[6.1]
  def change
    create_table :playthrus do |t|
      t.string :name
      t.integer :clicks
      t.string :start
      t.string :end
      t.string :path, array: true

      t.timestamps
    end
  end
end
