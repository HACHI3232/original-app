class DictionariesController < ApplicationController
  def index
    @dictionaries = Dictionary.all
  end

  def new
    @dictionaries = Dictionary.new
  end

  def create
    Dictionary.create(dictionary_params)
  end

  def destroy
    dictionary = Dictionary.find(params[:id])
    dictionary.destroy
  end

private

  def dictionary_params
    params.require(:dictionary).permit(:word,:mean)
  end
end
