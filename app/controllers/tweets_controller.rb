class TweetsController < ApplicationController
  def search
    if params[:search]
      @tweets = TwitterSearchServices.new.search_tweets(params[:search])
    end
  end
end
