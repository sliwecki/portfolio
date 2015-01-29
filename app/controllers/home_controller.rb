class HomeController < ApplicationController

  before_filter :load_message_form

  def index; end

  def send_message; end

  private

  def load_message_form
    @form = MessageForm.new(params[:form_data])
  end
end
