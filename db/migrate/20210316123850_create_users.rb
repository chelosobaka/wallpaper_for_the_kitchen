class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.date :date
      t.string :name
      t.string :family_name
      t.string :patronymic
      t.date :birthday
      t.string :url

      t.timestamps
    end
  end
end
