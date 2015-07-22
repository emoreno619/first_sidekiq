class PygmentWorker 

	include Sidekiq::Worker
	
	def perform id
		puts "Doing hard work"
		snippet = Snippet.find(id)
		updated = Net::HTTP.post_form(URI.parse('http://pygments.simplabs.com/'), { 'lang' => 'ruby', 'code' => snippet.body })
		snippet.update_attribute(:body, updated.body)
	end
end