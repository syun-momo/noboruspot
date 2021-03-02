class CreateItems < ActiveRecord::Migration[6.0]
  def change
    create_table :items do |t|
      t.references :user,                   null: false
      t.string     :name,                   null: false
      t.text       :info,                   null: false
      t.integer    :category_id,            null: false
      t.integer    :prefecture_id,          null: false
      t.timestamps
    end
  end
end
