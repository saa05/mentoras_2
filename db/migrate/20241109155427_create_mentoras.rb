class CreateMentoras < ActiveRecord::Migration[8.1]
  def change
    create_table :mentoras do |t|
      t.string :name
      t.string :email
      t.string :abilities

      t.timestamps
    end
  end
end
