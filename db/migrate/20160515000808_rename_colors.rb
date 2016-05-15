class RenameColors < ActiveRecord::Migration
  def self.up
      rename_table :colors, :a_colors
  end
  
  def self.down
      rename_table :a_colors, :colors
  end
  
end
