# frozen_string_literal: true

module Legalesign
  module Models
    # @see Legalesign::Resources::Unsubscribe#delete_webhook
    class UnsubscribeDeleteWebhookParams < Legalesign::Internal::Type::BaseModel
      extend Legalesign::Internal::Type::RequestParameters::Converter
      include Legalesign::Internal::Type::RequestParameters

      # @!attribute url
      #   URL to remove, it must match any registered callback exactly
      #
      #   @return [String]
      required :url, String

      # @!attribute event_filter
      #
      #   @return [Symbol, Legalesign::Models::WebhookEventFilterEnum, nil]
      optional :event_filter, enum: -> { Legalesign::WebhookEventFilterEnum }, api_name: :eventFilter

      # @!attribute group
      #   if a group filter is applied refer to it with slug or resource_uri
      #
      #   @return [Integer, nil]
      optional :group, Integer

      # @!method initialize(url:, event_filter: nil, group: nil, request_options: {})
      #   @param url [String] URL to remove, it must match any registered callback exactly
      #
      #   @param event_filter [Symbol, Legalesign::Models::WebhookEventFilterEnum]
      #
      #   @param group [Integer] if a group filter is applied refer to it with slug or resource_uri
      #
      #   @param request_options [Legalesign::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
