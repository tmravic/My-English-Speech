class SpeechesController < ApplicationController
  def index
    @speeches = policy_scope(Speech).order(created_at: :desc)
  end

  def new
    @speech = Speech.new
    authorize @speech
    if current_user.teacher? && params["training"].present?
      @training = Training.find_by(id: params["training"].to_i)
    end
    # raise
  end

  def show
    @speech = Speech.find(params[:id])
    # @teacher_speech = Speech.find(params[:id])
    authorize @speech
  end

  def create
    @speech = Speech.new(speech_params)
    @speech.user = current_user
    if params["training"].nil? #@speech.training.blank?
      @training = Training.new
      @training.user = current_user
      @speech.training = @training
    else
      @training = Training.find_by(id: params["training"].to_i)
      @speech.training = @training
    end
    authorize @speech
    # byebug
    if @speech.save
      redirect_to root_path, notice: 'Your speech was saved successfully'
    else
      render :new, notice: 'Please try again, your speech could not be saved'
    end
  end

  def edit
  end

  private

  def speech_params
    params.require(:speech).permit(:title, :length, :notes, :transcript, :audio, :status)
  end

end
