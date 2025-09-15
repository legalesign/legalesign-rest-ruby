# typed: strong

module Legalesign
  module Models
    class SignerRetrieveFieldsResponseItem < Legalesign::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Legalesign::Models::SignerRetrieveFieldsResponseItem,
            Legalesign::Internal::AnyHash
          )
        end

      sig { returns(T.nilable(Integer)) }
      attr_accessor :fieldorder

      sig { returns(T.nilable(String)) }
      attr_reader :label

      sig { params(label: String).void }
      attr_writer :label

      sig { returns(T.nilable(String)) }
      attr_reader :label_extra

      sig { params(label_extra: String).void }
      attr_writer :label_extra

      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :state

      sig { params(state: T::Boolean).void }
      attr_writer :state

      # If the field is a signer file this value will be a short lived download URL
      sig { returns(T.nilable(String)) }
      attr_accessor :value

      sig do
        params(
          fieldorder: T.nilable(Integer),
          label: String,
          label_extra: String,
          state: T::Boolean,
          value: T.nilable(String)
        ).returns(T.attached_class)
      end
      def self.new(
        fieldorder: nil,
        label: nil,
        label_extra: nil,
        state: nil,
        # If the field is a signer file this value will be a short lived download URL
        value: nil
      )
      end

      sig do
        override.returns(
          {
            fieldorder: T.nilable(Integer),
            label: String,
            label_extra: String,
            state: T::Boolean,
            value: T.nilable(String)
          }
        )
      end
      def to_hash
      end
    end

    SignerRetrieveFieldsResponse =
      T.let(
        Legalesign::Internal::Type::ArrayOf[
          Legalesign::Models::SignerRetrieveFieldsResponseItem
        ],
        Legalesign::Internal::Type::Converter
      )
  end
end
