class CreateUsers < Sequel::Migration
  def up
    alter_table :posts do
      add_column :created_at, :datetime
      add_column :updated_at, :datetime
    end
  end

  def down
    alter_table :posts do
      drop_column :users, :created_at
      drop_column :users, :updated_at
    end
  end
end
