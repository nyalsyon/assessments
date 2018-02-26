class CreateRatings < ActiveRecord::Migration[5.1]
  def change
    create_table :ratings do |t|
      t.integer :score
      t.integer :source_id
      t.integer :assesment_prompt_id
      t.integer :user_id
      t.string :data_source_url
      t.string :data_source_name
      t.string :creator_meta
      t.string :dependency_meta
      t.string :callback_meta

      t.timestamps
    end
  end
end
