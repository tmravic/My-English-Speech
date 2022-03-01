class SpeechesController < ApplicationController
  def index
    @speeches = policy_scope(Speech).order(created_at: :desc)
  end

  def new
    @speech = Speech.new
    authorize @speech
  end

  def edit
  end
end
