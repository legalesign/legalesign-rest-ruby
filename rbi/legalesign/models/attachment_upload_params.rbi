# typed: strong

module Legalesign
  module Models
    class AttachmentUploadParams < Legalesign::Internal::Type::BaseModel
      extend Legalesign::Internal::Type::RequestParameters::Converter
      include Legalesign::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            Legalesign::AttachmentUploadParams,
            Legalesign::Internal::AnyHash
          )
        end

      # Simple alphanumeric name ending .pdf
      sig { returns(String) }
      attr_accessor :filename

      # URI of the group name
      sig { returns(String) }
      attr_accessor :group

      # Base64 encoded PDF file data, max size is a group setting, 5MB by default
      sig { returns(String) }
      attr_accessor :pdf_file

      sig { returns(T.nilable(String)) }
      attr_reader :description

      sig { params(description: String).void }
      attr_writer :description

      # Assign to group member if not the api user
      sig { returns(T.nilable(String)) }
      attr_reader :user

      sig { params(user: String).void }
      attr_writer :user

      sig do
        params(
          filename: String,
          group: String,
          pdf_file: String,
          description: String,
          user: String,
          request_options: Legalesign::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # Simple alphanumeric name ending .pdf
        filename:,
        # URI of the group name
        group:,
        # Base64 encoded PDF file data, max size is a group setting, 5MB by default
        pdf_file:,
        description: nil,
        # Assign to group member if not the api user
        user: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            filename: String,
            group: String,
            pdf_file: String,
            description: String,
            user: String,
            request_options: Legalesign::RequestOptions
          }
        )
      end
      def to_hash
      end
    end
  end
end
