class ChatsController < ApplicationController
  before_action :set_chat, only:[:show, :edit, :update, :destroy]


    def index
     @chat=Chat.all

    end


    def new
     @chat=Chat.new
    end


    def show
      redirect_to new_chat_path
    end

    def create
      @chat= Chat.new(chat_params)
      if params[:back]
       render :new
      else
       if @chat.save
        redirect_to chats_path, notice: "New Post!"
       else
        render :new
       end
     end
    end

    def edit

    end

    def update


    end

    def destroy

    end

    private
    def set_chat
      @chat=Chat.find(params[:id])
    end
    def chat_params
      params.require(:chat).permit(:post)
    end

 end
