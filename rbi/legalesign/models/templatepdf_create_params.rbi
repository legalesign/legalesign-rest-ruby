# typed: strong

module Legalesign
  module Models
    class TemplatepdfCreateParams < Legalesign::Internal::Type::BaseModel
      extend Legalesign::Internal::Type::RequestParameters::Converter
      include Legalesign::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            Legalesign::TemplatepdfCreateParams,
            Legalesign::Internal::AnyHash
          )
        end

      sig { returns(String) }
      attr_accessor :group

      # base64 encoded PDF file data
      sig { returns(String) }
      attr_accessor :pdf_file

      # archive PDF when sent
      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :archive_upon_send

      sig { params(archive_upon_send: T::Boolean).void }
      attr_writer :archive_upon_send

      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :process_tags

      sig { params(process_tags: T::Boolean).void }
      attr_writer :process_tags

      sig { returns(T.nilable(String)) }
      attr_reader :title

      sig { params(title: String).void }
      attr_writer :title

      # assign to group member if not api user
      sig { returns(T.nilable(String)) }
      attr_reader :user

      sig { params(user: String).void }
      attr_writer :user

      sig do
        params(
          group: String,
          pdf_file: String,
          archive_upon_send: T::Boolean,
          process_tags: T::Boolean,
          title: String,
          user: String,
          request_options: Legalesign::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        group:,
        # base64 encoded PDF file data
        pdf_file:,
        # archive PDF when sent
        archive_upon_send: nil,
        process_tags: nil,
        title: nil,
        # assign to group member if not api user
        user: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            group: String,
            pdf_file: String,
            archive_upon_send: T::Boolean,
            process_tags: T::Boolean,
            title: String,
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
