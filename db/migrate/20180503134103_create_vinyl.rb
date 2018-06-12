class CreateVinyl < ActiveRecord::Migration[5.1]
  def change
    create_table :vinyl do |t|
      t.string :title
      t.string :date
      t.timestamps
    end
  end
end