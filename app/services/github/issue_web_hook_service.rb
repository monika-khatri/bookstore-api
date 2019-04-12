module Github
  class IssueWebHookService

    def self.process(action, payload)
      begin
        if action == 'opened'
          Author.create(
            name: payload[:title],
            biography: payload[:body],
            platform_author_id: payload[:number])
        elsif action == 'edited'
          Author.find_or_create_by(platform_author_id: payload[:number])
            .update(
              name: payload[:title],
              biography: payload[:body])
        elsif action == 'closed'
          Author.find_by(platform_author_id: payload[:number])
            .destroy
        else
          puts "#{action} is not supported yet."
        end
      rescue => e
        puts "Exception raised during processing web hook payload: #{e.inspect}"
      end
    end
  end
end
