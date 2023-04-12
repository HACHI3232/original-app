class DictionariesController < ApplicationController
  def index
    @dictionaries = Dictionary.all
  end

  def new
    @dictionary = Dictionary.new
  end

  def create
    dictionary = Dictionary.new(dictionary_params)
    if dictionary.save
      redirect_to root_path
    end
  end

  def destroy
    dictionary = Dictionary.find(params[:id])
    if dictionary.destroy
      redirect_to root_path
    end
  end

  private

    def dictionary_params
      params.require(:dictionary).permit(:word,:mean)
    end
end
