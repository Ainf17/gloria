class CreateArticles < ActiveRecord::Migration[5.0]
  def change
    create_table :articles do |t|
      t.references :article_type
      t.string :name
      t.references :manufacturer
      t.references :units
      t.references :period_save
      t.references :technical_features
      t.references :country
      t.string :description
      t.decimal :price_per_unit, precision: 10, scale: 2
      t.float :volume_netto
      t.float :volume_brutto
      t.float :weight_netto
      t.float :weight_brutto
      t.float :height
      t.float :width
      t.references :color
      t.boolean :fragile
      t.boolean :radioactive
      t.boolean :toxic
      t.references :packing_type
      t.references :transport
      t.references :analogues
      t.references :special_features
      t.references :special_conditions

      t.timestamps
    end
  end
end
