module Github
  class Api
    attr_accessor :client, :repo

    def initialize
    end

    def client
      @client ||= Octokit::Client.new(:access_token => ENV['GITHUB_ACCESS_TOKEN'])
    end

    def issues
      @issues ||= Issues.new(repo, client)
    end

    def repo
      "#{ENV['GITHUB_USERNAME']}/#{ENV['GITHUB_REPO_NAME']}"
    end
  end
end
