class SnippetController < ApplicationController
	def show
	  aWorker = PygmentWorker.new
	  aWorker.perform
	end

	def new
		@snippet = Snippet.new
	end

	def create
	  redirect_to show_path
	end
end
