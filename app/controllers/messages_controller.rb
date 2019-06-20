class MessagesController < ApplicationController
  def index
    @messages = Message.all
  end

  def create
    @message = Message.new(message_params)

    if @message.save
      redirect_back fallback_location: root_path, notice: "message ajouté, merci à vous!"
    else
      #flash[:alert] = @message.errors_to_sentence
      redirect_back fallback_location: root_path
    end
  end

  private
  def message_params
    params.require(:message).permit(:content, :author)
  end
end
