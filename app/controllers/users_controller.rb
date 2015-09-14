class UsersController < ApplicationController
    def index
      render text: "I'm in the index action!"
    end

    def show
      render json: {'key' => 'value'}
    end

    def new
    end
end
