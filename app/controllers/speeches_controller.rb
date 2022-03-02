class SpeechesController < ApplicationController
  def index
    @speeches = policy_scope(Speech).order(created_at: :desc)
  end

  def new
    @speech = Speech.new
    authorize @speech
  end

  def show
    @speech = Speech.find(params[:id])
    authorize @speech
  end

  def create
    @speech = Speech.new(speech_params)
    @speech.user = current_user
    authorize @speech
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
    params.require(:speech).permit(:title, :length, :notes, :transcript)
  end

end
