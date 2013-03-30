class ChangeFormatOfPriceInTable < ActiveRecord::Migration
  def self.up
   change_column :products, :price_in_cents, :decimal, :precision => 8, :scale => 2
  end

  def self.down
   change_column :products, :price_in_cents, :integer
  end

end
