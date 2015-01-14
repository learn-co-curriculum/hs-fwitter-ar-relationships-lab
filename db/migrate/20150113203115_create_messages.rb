class CreateMessages < ActiveRecord::Migration
  def up
    create_table :messages do |t|
      t.integer :sender_id
      t.integer :receiver_id
      t.string  :message
    end
  end

  def down
    drop_table :messages
  end
end
