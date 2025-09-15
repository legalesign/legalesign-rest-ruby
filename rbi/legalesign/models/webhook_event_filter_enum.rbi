# typed: strong

module Legalesign
  module Models
    module WebhookEventFilterEnum
      extend Legalesign::Internal::Type::Enum

      TaggedSymbol =
        T.type_alias { T.all(Symbol, Legalesign::WebhookEventFilterEnum) }
      OrSymbol = T.type_alias { T.any(Symbol, String) }

      EMPTY = T.let(:"", Legalesign::WebhookEventFilterEnum::TaggedSymbol)
      DOCUMENT =
        T.let(:"document.*", Legalesign::WebhookEventFilterEnum::TaggedSymbol)
      DOCUMENT_CREATED =
        T.let(
          :"document.created",
          Legalesign::WebhookEventFilterEnum::TaggedSymbol
        )
      DOCUMENT_REJECTED =
        T.let(
          :"document.rejected",
          Legalesign::WebhookEventFilterEnum::TaggedSymbol
        )
      DOCUMENT_FINAL_PDF_CREATED =
        T.let(
          :"document.finalPdfCreated",
          Legalesign::WebhookEventFilterEnum::TaggedSymbol
        )
      RECIPIENT =
        T.let(:"recipient.*", Legalesign::WebhookEventFilterEnum::TaggedSymbol)
      RECIPIENT_COMPLETED =
        T.let(
          :"recipient.completed",
          Legalesign::WebhookEventFilterEnum::TaggedSymbol
        )
      RECIPIENT_REJECTED =
        T.let(
          :"recipient.rejected",
          Legalesign::WebhookEventFilterEnum::TaggedSymbol
        )
      RECIPIENT_EMAIL_OPENED =
        T.let(
          :"recipient.emailOpened",
          Legalesign::WebhookEventFilterEnum::TaggedSymbol
        )
      RECIPIENT_VISITING =
        T.let(
          :"recipient.visiting",
          Legalesign::WebhookEventFilterEnum::TaggedSymbol
        )
      RECIPIENT_BOUNCED =
        T.let(
          :"recipient.bounced",
          Legalesign::WebhookEventFilterEnum::TaggedSymbol
        )

      sig do
        override.returns(
          T::Array[Legalesign::WebhookEventFilterEnum::TaggedSymbol]
        )
      end
      def self.values
      end
    end
  end
end
