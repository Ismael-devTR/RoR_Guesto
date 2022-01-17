class CreateGrettings < ActiveRecord::Migration[6.1]
  def change
    create_table :grettings do |t|
      t.string :name
      t.text :message

      t.timestamps
    end
  end
end
