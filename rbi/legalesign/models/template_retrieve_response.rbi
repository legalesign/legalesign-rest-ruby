# typed: strong

module Legalesign
  module Models
    class TemplateRetrieveResponse < Legalesign::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Legalesign::Models::TemplateRetrieveResponse,
            Legalesign::Internal::AnyHash
          )
        end

      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :archive

      sig { params(archive: T::Boolean).void }
      attr_writer :archive

      sig { returns(T.nilable(Time)) }
      attr_reader :created

      sig { params(created: Time).void }
      attr_writer :created

      sig { returns(T.nilable(String)) }
      attr_reader :group

      sig { params(group: String).void }
      attr_writer :group

      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :has_fields

      sig { params(has_fields: T::Boolean).void }
      attr_writer :has_fields

      sig { returns(T.nilable(String)) }
      attr_reader :latest_text

      sig { params(latest_text: String).void }
      attr_writer :latest_text

      sig { returns(T.nilable(Time)) }
      attr_reader :modified

      sig { params(modified: Time).void }
      attr_writer :modified

      sig { returns(T.nilable(String)) }
      attr_reader :resource_uri

      sig { params(resource_uri: String).void }
      attr_writer :resource_uri

      sig { returns(T.nilable(Integer)) }
      attr_reader :signee_count

      sig { params(signee_count: Integer).void }
      attr_writer :signee_count

      sig { returns(T.nilable(String)) }
      attr_reader :title

      sig { params(title: String).void }
      attr_writer :title

      sig { returns(T.nilable(String)) }
      attr_reader :user

      sig { params(user: String).void }
      attr_writer :user

      sig { returns(T.nilable(String)) }
      attr_reader :uuid

      sig { params(uuid: String).void }
      attr_writer :uuid

      sig do
        params(
          archive: T::Boolean,
          created: Time,
          group: String,
          has_fields: T::Boolean,
          latest_text: String,
          modified: Time,
          resource_uri: String,
          signee_count: Integer,
          title: String,
          user: String,
          uuid: String
        ).returns(T.attached_class)
      end
      def self.new(
        archive: nil,
        created: nil,
        group: nil,
        has_fields: nil,
        latest_text: nil,
        modified: nil,
        resource_uri: nil,
        signee_count: nil,
        title: nil,
        user: nil,
        uuid: nil
      )
      end

      sig do
        override.returns(
          {
            archive: T::Boolean,
            created: Time,
            group: String,
            has_fields: T::Boolean,
            latest_text: String,
            modified: Time,
            resource_uri: String,
            signee_count: Integer,
            title: String,
            user: String,
            uuid: String
          }
        )
      end
      def to_hash
      end
    end
  end
end
