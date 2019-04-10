module Github
  class Issues

    attr_accessor :repo, :client

    def initialize(repo, client)
      @repo = repo
      @client = client
    end

    def create(title, description)
      client.create_issue(repo, title, description)
    end

    def all
      client.issues(repo)
    end

    def close(number)
      client.close_issue(repo, number)
    end

    def show(number)
      client.issue(repo, number)
    end
  end

end
