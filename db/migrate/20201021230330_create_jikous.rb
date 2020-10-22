class CreateJikous < ActiveRecord::Migration[5.1]
  def change
    create_table :jikous do |t|
      t.string :jikou

      t.timestamps
    end
  end
end
