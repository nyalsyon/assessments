class AssessmentPromptsController < ApplicationController
	before_action :set_assessment_prompt, only: [:show, :update, :destroy]
	def index
		@assessment_prompts = AssessmentPrompt.all
		render json: @assessment_prompts
	end

	def create
		@assessment_prompt = AssessmentPrompt.new(assessment_prompt_params)
		if @assessment_prompt.save
			render json: @assessment_prompt
		else
			render json: {error: {message: 'Unable to create assessment prompt.'}}
		end
	end

	def update
		if @assessment_prompt.update(assessment_prompt_params)
			render json: @assessment_prompt
		else
			render json: {error: {message: 'Unable to update assessment prompt.'}}
		end
	end

	def show
		if @assessment_prompt.present?
			render json: @assessment_prompt
		else
			render json: {error: {message: 'Unable to find assessment prompt'}}
		end

	end

	def destroy
		if @assessment_prompt.present?
			@assessment_prompt.destroy
			render json: {success: {message: 'Successfully destroyed'}}
		else
			render json: {error: {message: 'Unable to destroy assessment prompt'}}
		end
	end

	private

	def set_assessment_prompt
		@assessment_prompt = AssessmentPrompt.find(params[:id])
	end

	def assessment_prompt_params
		params.require(:assessment_prompt).permit(:description, 
                          									  :hint,
                          									  :assessable_type,
                          									  :answer_meta_data,
                                              :data_source_url,
                                              :data_source_name,
                                              :creator_meta,
                                              :dependency_meta,
                                              :callback_meta
                                             )
	end
end
