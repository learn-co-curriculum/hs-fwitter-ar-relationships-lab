class CreateRelationships < ActiveRecord::Migration
  def up
    create_table :relationships do |t|
      t.integer :followed_id
      t.integer :follower_id
    end
  end

  def down
    drop_table :relationships
  end
end
