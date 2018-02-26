class CreateAssessables < ActiveRecord::Migration[5.1]
  def change
    create_table :assessables do |t|

      t.timestamps
    end
  end
end
