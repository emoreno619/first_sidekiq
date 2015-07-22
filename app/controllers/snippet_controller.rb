class SnippetController < ApplicationController
	def show
	  @snippets = Snippet.all
	  # aWorker = PygmentWorker.new
	  # aWorker.perform
	end

	def new
		@snippet = Snippet.new
	end

	def create
		@snippet = Snippet.new(params.require(:snippet).permit(:body))
		
		if @snippet.save
			aWorker = PygmentWorker.new
			aWorker.perform(@snippet.id)
		end
	  redirect_to show_path
	end
end
