class BoardsController < ApplicationController
	require 'trello'
	require 'dotenv'

	Trello.configure do |config|
		config.developer_public_key = ENV['TRELLO_KEY']
		config.member_token = ENV['TRELLO_TOKEN']
	end

  def index
  	dave = Trello::Member.find("me")
  	@all_boards = dave.boards

  end

  def show
  end
end
