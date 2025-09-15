# frozen_string_literal: true

module Legalesign
  class Client < Legalesign::Internal::Transport::BaseClient
    # Default max number of retries to attempt after a failed retryable request.
    DEFAULT_MAX_RETRIES = 2

    # Default per-request timeout.
    DEFAULT_TIMEOUT_IN_SECONDS = 60.0

    # Default initial retry delay in seconds.
    # Overall delay is calculated using exponential backoff + jitter.
    DEFAULT_INITIAL_RETRY_DELAY = 0.5

    # Default max retry delay in seconds.
    DEFAULT_MAX_RETRY_DELAY = 8.0

    # @return [String]
    attr_reader :api_key

    # @return [Legalesign::Resources::Attachment]
    attr_reader :attachment

    # @return [Legalesign::Resources::Document]
    attr_reader :document

    # @return [Legalesign::Resources::Group]
    attr_reader :group

    # @return [Legalesign::Resources::Invited]
    attr_reader :invited

    # @return [Legalesign::Resources::Member]
    attr_reader :member

    # @return [Legalesign::Resources::Notifications]
    attr_reader :notifications

    # @return [Legalesign::Resources::Pdf]
    attr_reader :pdf

    # @return [Legalesign::Resources::Signer]
    attr_reader :signer

    # @return [Legalesign::Resources::Status]
    attr_reader :status

    # @return [Legalesign::Resources::Subscribe]
    attr_reader :subscribe

    # @return [Legalesign::Resources::Template]
    attr_reader :template

    # @return [Legalesign::Resources::Templatepdf]
    attr_reader :templatepdf

    # @return [Legalesign::Resources::Unsubscribe]
    attr_reader :unsubscribe

    # @return [Legalesign::Resources::User]
    attr_reader :user

    # @api private
    #
    # @return [Hash{String=>String}]
    private def auth_headers
      {"authorization" => @api_key}
    end

    # Creates and returns a new client for interacting with the API.
    #
    # @param api_key [String, nil] Defaults to `ENV["LEGALESIGN_API_KEY"]`
    #
    # @param base_url [String, nil] Override the default base URL for the API, e.g.,
    # `"https://api.example.com/v2/"`. Defaults to `ENV["LEGALESIGN_BASE_URL"]`
    #
    # @param max_retries [Integer] Max number of retries to attempt after a failed retryable request.
    #
    # @param timeout [Float]
    #
    # @param initial_retry_delay [Float]
    #
    # @param max_retry_delay [Float]
    def initialize(
      api_key: ENV["LEGALESIGN_API_KEY"],
      base_url: ENV["LEGALESIGN_BASE_URL"],
      max_retries: self.class::DEFAULT_MAX_RETRIES,
      timeout: self.class::DEFAULT_TIMEOUT_IN_SECONDS,
      initial_retry_delay: self.class::DEFAULT_INITIAL_RETRY_DELAY,
      max_retry_delay: self.class::DEFAULT_MAX_RETRY_DELAY
    )
      base_url ||= "https://eu-api.legalesign.com/api/v1"

      if api_key.nil?
        raise ArgumentError.new("api_key is required, and can be set via environ: \"LEGALESIGN_API_KEY\"")
      end

      @api_key = api_key.to_s

      super(
        base_url: base_url,
        timeout: timeout,
        max_retries: max_retries,
        initial_retry_delay: initial_retry_delay,
        max_retry_delay: max_retry_delay
      )

      @attachment = Legalesign::Resources::Attachment.new(client: self)
      @document = Legalesign::Resources::Document.new(client: self)
      @group = Legalesign::Resources::Group.new(client: self)
      @invited = Legalesign::Resources::Invited.new(client: self)
      @member = Legalesign::Resources::Member.new(client: self)
      @notifications = Legalesign::Resources::Notifications.new(client: self)
      @pdf = Legalesign::Resources::Pdf.new(client: self)
      @signer = Legalesign::Resources::Signer.new(client: self)
      @status = Legalesign::Resources::Status.new(client: self)
      @subscribe = Legalesign::Resources::Subscribe.new(client: self)
      @template = Legalesign::Resources::Template.new(client: self)
      @templatepdf = Legalesign::Resources::Templatepdf.new(client: self)
      @unsubscribe = Legalesign::Resources::Unsubscribe.new(client: self)
      @user = Legalesign::Resources::User.new(client: self)
    end
  end
end
