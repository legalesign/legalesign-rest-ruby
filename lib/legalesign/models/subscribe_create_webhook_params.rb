# frozen_string_literal: true

module Legalesign
  module Models
    # @see Legalesign::Resources::Subscribe#create_webhook
    class SubscribeCreateWebhookParams < Legalesign::Internal::Type::BaseModel
      extend Legalesign::Internal::Type::RequestParameters::Converter
      include Legalesign::Internal::Type::RequestParameters

      # @!attribute notify
      #   The type of callback to receive, value must be all, signed, sent, rejected or
      #   realtime
      #
      #   @return [String]
      required :notify, String

      # @!attribute url
      #   The URL where you wish to get notified
      #
      #   @return [String]
      required :url, String

      # @!attribute event_filter
      #
      #   @return [Symbol, Legalesign::Models::WebhookEventFilterEnum, nil]
      optional :event_filter, enum: -> { Legalesign::WebhookEventFilterEnum }, api_name: :eventFilter

      # @!attribute group
      #
      #   @return [String, nil]
      optional :group, String

      # @!method initialize(notify:, url:, event_filter: nil, group: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {Legalesign::Models::SubscribeCreateWebhookParams} for more details.
      #
      #   @param notify [String] The type of callback to receive, value must be all, signed, sent, rejected or re
      #
      #   @param url [String] The URL where you wish to get notified
      #
      #   @param event_filter [Symbol, Legalesign::Models::WebhookEventFilterEnum]
      #
      #   @param group [String]
      #
      #   @param request_options [Legalesign::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
