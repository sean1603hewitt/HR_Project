class AddDefaultValueToApproved < ActiveRecord::Migration
  def change
  end
 def up
  change_column :holidays, :approved, :boolean, :default => true
end

def down
  change_column :holidays, :approved, :boolean, :default => nil
end 
end
