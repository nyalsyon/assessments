class CreateAssessmentPrompts < ActiveRecord::Migration[5.1]
  def change
    create_table :assessment_prompts do |t|
      t.integer :assessable_id
      t.integer :position
      t.string :description
      t.string :hint
      t.string :assessable_type
      t.string :answer_meta_data
      t.string :data_source_url
      t.string :data_source_name
      t.string :creator_meta
      t.string :dependency_meta
      t.string :callback_meta

      t.timestamps
    end
  end
end
