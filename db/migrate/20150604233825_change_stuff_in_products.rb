class ChangeStuffInProducts < ActiveRecord::Migration
  def change
    change_table :products do |t|
      t.rename :title, :name
      t.change :description, :text
      t.change :price, :decimal, precision: 8, scale: 2
      t.remove :isbn, :string
    end
  end
end
