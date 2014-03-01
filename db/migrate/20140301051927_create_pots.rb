class CreatePots < ActiveRecord::Migration
  def change
    create_table :pots do |t|
      t.string :name
      t.string :wallet_address
      t.timestamps
    end
  end
end
