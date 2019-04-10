namespace :github_issues do
  desc "populate github issues on repo"
  task :populate => :environment do
    api = Github::Api.new
    issues = api.issues
    Author.find_each do |author|
      issue = issues.create(author.name, author.biography)
      author.update(platform_author_id: issue.number)
    end
  end
end
