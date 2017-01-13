# マイグレーションファイル
class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.string :name
      t.string :username
      t.string :location
      t.text :about
      t.binary :image

      t.timestamps
    end
  end
end
