# typed: strong

module Legalesign
  module Models
    class DocumentPreviewParams < Legalesign::Internal::Type::BaseModel
      extend Legalesign::Internal::Type::RequestParameters::Converter
      include Legalesign::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            Legalesign::DocumentPreviewParams,
            Legalesign::Internal::AnyHash
          )
        end

      sig { returns(T.nilable(String)) }
      attr_reader :group

      sig { params(group: String).void }
      attr_writer :group

      sig { returns(T.nilable(Integer)) }
      attr_reader :signee_count

      sig { params(signee_count: Integer).void }
      attr_writer :signee_count

      sig { returns(T.nilable(String)) }
      attr_reader :text

      sig { params(text: String).void }
      attr_writer :text

      sig { returns(T.nilable(String)) }
      attr_reader :title

      sig { params(title: String).void }
      attr_writer :title

      sig do
        params(
          group: String,
          signee_count: Integer,
          text: String,
          title: String,
          request_options: Legalesign::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        group: nil,
        signee_count: nil,
        text: nil,
        title: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            group: String,
            signee_count: Integer,
            text: String,
            title: String,
            request_options: Legalesign::RequestOptions
          }
        )
      end
      def to_hash
      end
    end
  end
end
