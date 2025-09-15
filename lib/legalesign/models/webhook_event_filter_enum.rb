# frozen_string_literal: true

module Legalesign
  module Models
    module WebhookEventFilterEnum
      extend Legalesign::Internal::Type::Enum

      EMPTY = :""
      DOCUMENT = :"document.*"
      DOCUMENT_CREATED = :"document.created"
      DOCUMENT_REJECTED = :"document.rejected"
      DOCUMENT_FINAL_PDF_CREATED = :"document.finalPdfCreated"
      RECIPIENT = :"recipient.*"
      RECIPIENT_COMPLETED = :"recipient.completed"
      RECIPIENT_REJECTED = :"recipient.rejected"
      RECIPIENT_EMAIL_OPENED = :"recipient.emailOpened"
      RECIPIENT_VISITING = :"recipient.visiting"
      RECIPIENT_BOUNCED = :"recipient.bounced"

      # @!method self.values
      #   @return [Array<Symbol>]
    end
  end
end
