# typed: strong

module Legalesign
  class Client < Legalesign::Internal::Transport::BaseClient
    DEFAULT_MAX_RETRIES = 2

    DEFAULT_TIMEOUT_IN_SECONDS = T.let(60.0, Float)

    DEFAULT_INITIAL_RETRY_DELAY = T.let(0.5, Float)

    DEFAULT_MAX_RETRY_DELAY = T.let(8.0, Float)

    sig { returns(String) }
    attr_reader :api_key

    sig { returns(Legalesign::Resources::Attachment) }
    attr_reader :attachment

    sig { returns(Legalesign::Resources::Document) }
    attr_reader :document

    sig { returns(Legalesign::Resources::Groups) }
    attr_reader :groups

    sig { returns(Legalesign::Resources::Invited) }
    attr_reader :invited

    sig { returns(Legalesign::Resources::Member) }
    attr_reader :member

    sig { returns(Legalesign::Resources::Notifications) }
    attr_reader :notifications

    sig { returns(Legalesign::Resources::Pdf) }
    attr_reader :pdf

    sig { returns(Legalesign::Resources::Signer) }
    attr_reader :signer

    sig { returns(Legalesign::Resources::Status) }
    attr_reader :status

    sig { returns(Legalesign::Resources::Subscribe) }
    attr_reader :subscribe

    sig { returns(Legalesign::Resources::Template) }
    attr_reader :template

    sig { returns(Legalesign::Resources::Templatepdf) }
    attr_reader :templatepdf

    sig { returns(Legalesign::Resources::Unsubscribe) }
    attr_reader :unsubscribe

    sig { returns(Legalesign::Resources::User) }
    attr_reader :user

    # @api private
    sig { override.returns(T::Hash[String, String]) }
    private def auth_headers
    end

    # Creates and returns a new client for interacting with the API.
    sig do
      params(
        api_key: T.nilable(String),
        base_url: T.nilable(String),
        max_retries: Integer,
        timeout: Float,
        initial_retry_delay: Float,
        max_retry_delay: Float
      ).returns(T.attached_class)
    end
    def self.new(
      # Defaults to `ENV["LEGALESIGN_API_KEY"]`
      api_key: ENV["LEGALESIGN_API_KEY"],
      # Override the default base URL for the API, e.g.,
      # `"https://api.example.com/v2/"`. Defaults to `ENV["LEGALESIGN_BASE_URL"]`
      base_url: ENV["LEGALESIGN_BASE_URL"],
      # Max number of retries to attempt after a failed retryable request.
      max_retries: Legalesign::Client::DEFAULT_MAX_RETRIES,
      timeout: Legalesign::Client::DEFAULT_TIMEOUT_IN_SECONDS,
      initial_retry_delay: Legalesign::Client::DEFAULT_INITIAL_RETRY_DELAY,
      max_retry_delay: Legalesign::Client::DEFAULT_MAX_RETRY_DELAY
    )
    end
  end
end
