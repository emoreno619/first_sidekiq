class SnippetController < ApplicationController
	def show
	  aWorker = PygmentWorker.new
	  aWorker.perform
	end

	def new

	end

	def create
	  
	end
end
