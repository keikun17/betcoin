class AddMatchIdToPot < ActiveRecord::Migration
  def change
    add_column :pots, :match_id, :integer
  end
end
