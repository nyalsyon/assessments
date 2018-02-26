class CreateClientAccesses < ActiveRecord::Migration[5.1]
  def change
    create_table :client_accesses do |t|
      t.string :name
      t.string :token

      t.timestamps
    end
  end
end
