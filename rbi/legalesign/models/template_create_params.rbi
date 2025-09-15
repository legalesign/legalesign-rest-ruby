# typed: strong

module Legalesign
  module Models
    class TemplateCreateParams < Legalesign::Internal::Type::BaseModel
      extend Legalesign::Internal::Type::RequestParameters::Converter
      include Legalesign::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(Legalesign::TemplateCreateParams, Legalesign::Internal::AnyHash)
        end

      sig { returns(String) }
      attr_accessor :group

      # text/html for template
      sig { returns(String) }
      attr_accessor :latest_text

      sig { returns(String) }
      attr_accessor :title

      # assign to a user if not api user
      sig { returns(T.nilable(String)) }
      attr_reader :user

      sig { params(user: String).void }
      attr_writer :user

      sig do
        params(
          group: String,
          latest_text: String,
          title: String,
          user: String,
          request_options: Legalesign::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        group:,
        # text/html for template
        latest_text:,
        title:,
        # assign to a user if not api user
        user: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            group: String,
            latest_text: String,
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
