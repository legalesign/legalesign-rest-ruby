# frozen_string_literal: true

module Legalesign
  module Models
    class NotificationListResponseItem < Legalesign::Internal::Type::BaseModel
      # @!attribute active
      #
      #   @return [Boolean, nil]
      optional :active, Legalesign::Internal::Type::Boolean

      # @!attribute event_filter
      #
      #   @return [Symbol, Legalesign::Models::WebhookEventFilterEnum, nil]
      optional :event_filter, enum: -> { Legalesign::WebhookEventFilterEnum }

      # @!attribute group_id
      #
      #   @return [Integer, nil]
      optional :group_id, Integer

      # @!attribute notify_when
      #   1 = every 6 minutes, 2 = upon signing, 3 = sent, 4 = rejected, 10 = realtime
      #
      #   @return [Integer, Legalesign::Models::NotificationListResponseItem::NotifyWhen, nil]
      optional :notify_when, enum: -> { Legalesign::Models::NotificationListResponseItem::NotifyWhen }

      # @!attribute url
      #
      #   @return [String, nil]
      optional :url, String

      # @!method initialize(active: nil, event_filter: nil, group_id: nil, notify_when: nil, url: nil)
      #   @param active [Boolean]
      #
      #   @param event_filter [Symbol, Legalesign::Models::WebhookEventFilterEnum]
      #
      #   @param group_id [Integer]
      #
      #   @param notify_when [Integer, Legalesign::Models::NotificationListResponseItem::NotifyWhen] 1 = every 6 minutes, 2 = upon signing, 3 = sent, 4 = rejected, 10 = realtime
      #
      #   @param url [String]

      # 1 = every 6 minutes, 2 = upon signing, 3 = sent, 4 = rejected, 10 = realtime
      #
      # @see Legalesign::Models::NotificationListResponseItem#notify_when
      module NotifyWhen
        extend Legalesign::Internal::Type::Enum

        NOTIFY_WHEN_1 = 1
        NOTIFY_WHEN_2 = 2
        NOTIFY_WHEN_3 = 3
        NOTIFY_WHEN_4 = 4
        NOTIFY_WHEN_10 = 10

        # @!method self.values
        #   @return [Array<Integer>]
      end
    end

    # @type [Legalesign::Internal::Type::Converter]
    NotificationListResponse =
      Legalesign::Internal::Type::ArrayOf[-> { Legalesign::Models::NotificationListResponseItem }]
  end
end
