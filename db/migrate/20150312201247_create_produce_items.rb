class CreateProduceItems < ActiveRecord::Migration
  def change
    create_table :produce_items do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
