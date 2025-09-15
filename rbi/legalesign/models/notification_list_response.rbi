# typed: strong

module Legalesign
  module Models
    class NotificationListResponseItem < Legalesign::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Legalesign::Models::NotificationListResponseItem,
            Legalesign::Internal::AnyHash
          )
        end

      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :active

      sig { params(active: T::Boolean).void }
      attr_writer :active

      sig do
        returns(T.nilable(Legalesign::WebhookEventFilterEnum::TaggedSymbol))
      end
      attr_reader :event_filter

      sig do
        params(event_filter: Legalesign::WebhookEventFilterEnum::OrSymbol).void
      end
      attr_writer :event_filter

      sig { returns(T.nilable(Integer)) }
      attr_reader :group_id

      sig { params(group_id: Integer).void }
      attr_writer :group_id

      # 1 = every 6 minutes, 2 = upon signing, 3 = sent, 4 = rejected, 10 = realtime
      sig do
        returns(
          T.nilable(
            Legalesign::Models::NotificationListResponseItem::NotifyWhen::TaggedInteger
          )
        )
      end
      attr_reader :notify_when

      sig do
        params(
          notify_when:
            Legalesign::Models::NotificationListResponseItem::NotifyWhen::OrInteger
        ).void
      end
      attr_writer :notify_when

      sig { returns(T.nilable(String)) }
      attr_reader :url

      sig { params(url: String).void }
      attr_writer :url

      sig do
        params(
          active: T::Boolean,
          event_filter: Legalesign::WebhookEventFilterEnum::OrSymbol,
          group_id: Integer,
          notify_when:
            Legalesign::Models::NotificationListResponseItem::NotifyWhen::OrInteger,
          url: String
        ).returns(T.attached_class)
      end
      def self.new(
        active: nil,
        event_filter: nil,
        group_id: nil,
        # 1 = every 6 minutes, 2 = upon signing, 3 = sent, 4 = rejected, 10 = realtime
        notify_when: nil,
        url: nil
      )
      end

      sig do
        override.returns(
          {
            active: T::Boolean,
            event_filter: Legalesign::WebhookEventFilterEnum::TaggedSymbol,
            group_id: Integer,
            notify_when:
              Legalesign::Models::NotificationListResponseItem::NotifyWhen::TaggedInteger,
            url: String
          }
        )
      end
      def to_hash
      end

      # 1 = every 6 minutes, 2 = upon signing, 3 = sent, 4 = rejected, 10 = realtime
      module NotifyWhen
        extend Legalesign::Internal::Type::Enum

        TaggedInteger =
          T.type_alias do
            T.all(
              Integer,
              Legalesign::Models::NotificationListResponseItem::NotifyWhen
            )
          end
        OrInteger = T.type_alias { Integer }

        NOTIFY_WHEN_1 =
          T.let(
            1,
            Legalesign::Models::NotificationListResponseItem::NotifyWhen::TaggedInteger
          )
        NOTIFY_WHEN_2 =
          T.let(
            2,
            Legalesign::Models::NotificationListResponseItem::NotifyWhen::TaggedInteger
          )
        NOTIFY_WHEN_3 =
          T.let(
            3,
            Legalesign::Models::NotificationListResponseItem::NotifyWhen::TaggedInteger
          )
        NOTIFY_WHEN_4 =
          T.let(
            4,
            Legalesign::Models::NotificationListResponseItem::NotifyWhen::TaggedInteger
          )
        NOTIFY_WHEN_10 =
          T.let(
            10,
            Legalesign::Models::NotificationListResponseItem::NotifyWhen::TaggedInteger
          )

        sig do
          override.returns(
            T::Array[
              Legalesign::Models::NotificationListResponseItem::NotifyWhen::TaggedInteger
            ]
          )
        end
        def self.values
        end
      end
    end

    NotificationListResponse =
      T.let(
        Legalesign::Internal::Type::ArrayOf[
          Legalesign::Models::NotificationListResponseItem
        ],
        Legalesign::Internal::Type::Converter
      )
  end
end
