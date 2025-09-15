# typed: strong

module Legalesign
  module Models
    class DocumentListResponse < Legalesign::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Legalesign::Models::DocumentListResponse,
            Legalesign::Internal::AnyHash
          )
        end

      sig { returns(T.nilable(Legalesign::ListMeta)) }
      attr_reader :meta

      sig { params(meta: Legalesign::ListMeta::OrHash).void }
      attr_writer :meta

      sig do
        returns(
          T.nilable(T::Array[Legalesign::Models::DocumentListResponse::Object])
        )
      end
      attr_reader :objects

      sig do
        params(
          objects:
            T::Array[Legalesign::Models::DocumentListResponse::Object::OrHash]
        ).void
      end
      attr_writer :objects

      sig do
        params(
          meta: Legalesign::ListMeta::OrHash,
          objects:
            T::Array[Legalesign::Models::DocumentListResponse::Object::OrHash]
        ).returns(T.attached_class)
      end
      def self.new(meta: nil, objects: nil)
      end

      sig do
        override.returns(
          {
            meta: Legalesign::ListMeta,
            objects: T::Array[Legalesign::Models::DocumentListResponse::Object]
          }
        )
      end
      def to_hash
      end

      class Object < Legalesign::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Legalesign::Models::DocumentListResponse::Object,
              Legalesign::Internal::AnyHash
            )
          end

        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :archived

        sig { params(archived: T::Boolean).void }
        attr_writer :archived

        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :auto_archive

        sig { params(auto_archive: T::Boolean).void }
        attr_writer :auto_archive

        sig { returns(T.nilable(String)) }
        attr_reader :cc_emails

        sig { params(cc_emails: String).void }
        attr_writer :cc_emails

        sig { returns(T.nilable(Time)) }
        attr_reader :created

        sig { params(created: Time).void }
        attr_writer :created

        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :do_email

        sig { params(do_email: T::Boolean).void }
        attr_writer :do_email

        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :download_final

        sig { params(download_final: T::Boolean).void }
        attr_writer :download_final

        sig { returns(T.nilable(String)) }
        attr_reader :group

        sig { params(group: String).void }
        attr_writer :group

        sig { returns(T.nilable(Time)) }
        attr_reader :modified

        sig { params(modified: Time).void }
        attr_writer :modified

        sig { returns(T.nilable(String)) }
        attr_reader :name

        sig { params(name: String).void }
        attr_writer :name

        sig { returns(T.nilable(String)) }
        attr_reader :pdftext

        sig { params(pdftext: String).void }
        attr_writer :pdftext

        sig { returns(T.nilable(String)) }
        attr_reader :redirect

        sig { params(redirect: String).void }
        attr_writer :redirect

        sig { returns(T.nilable(String)) }
        attr_reader :resource_uri

        sig { params(resource_uri: String).void }
        attr_writer :resource_uri

        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :return_signer_links

        sig { params(return_signer_links: T::Boolean).void }
        attr_writer :return_signer_links

        # nested arrays with signer details
        sig { returns(T.nilable(T::Array[T::Array[String]])) }
        attr_reader :signers

        sig { params(signers: T::Array[T::Array[String]]).void }
        attr_writer :signers

        sig do
          returns(
            T.nilable(
              Legalesign::Models::DocumentListResponse::Object::SignersInOrder::TaggedInteger
            )
          )
        end
        attr_reader :signers_in_order

        sig do
          params(
            signers_in_order:
              Legalesign::Models::DocumentListResponse::Object::SignersInOrder::OrInteger
          ).void
        end
        attr_writer :signers_in_order

        # Document status options:
        #
        # - 10 - Initial state, check signer status for sent/unsent
        # - 20 - Fields completed
        # - 30 - Signed
        # - 40 - Removed (before signing)
        # - 50 - Rejected
        sig do
          returns(T.nilable(Legalesign::DocumentStatusEnum::TaggedInteger))
        end
        attr_reader :status

        sig { params(status: Legalesign::DocumentStatusEnum::OrInteger).void }
        attr_writer :status

        sig { returns(T.nilable(String)) }
        attr_reader :tag

        sig { params(tag: String).void }
        attr_writer :tag

        sig { returns(T.nilable(String)) }
        attr_reader :tag1

        sig { params(tag1: String).void }
        attr_writer :tag1

        sig { returns(T.nilable(String)) }
        attr_reader :tag2

        sig { params(tag2: String).void }
        attr_writer :tag2

        sig { returns(T.nilable(String)) }
        attr_accessor :template

        sig { returns(T.nilable(String)) }
        attr_accessor :templatepdf

        sig { returns(T.nilable(String)) }
        attr_accessor :text

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
            archived: T::Boolean,
            auto_archive: T::Boolean,
            cc_emails: String,
            created: Time,
            do_email: T::Boolean,
            download_final: T::Boolean,
            group: String,
            modified: Time,
            name: String,
            pdftext: String,
            redirect: String,
            resource_uri: String,
            return_signer_links: T::Boolean,
            signers: T::Array[T::Array[String]],
            signers_in_order:
              Legalesign::Models::DocumentListResponse::Object::SignersInOrder::OrInteger,
            status: Legalesign::DocumentStatusEnum::OrInteger,
            tag: String,
            tag1: String,
            tag2: String,
            template: T.nilable(String),
            templatepdf: T.nilable(String),
            text: T.nilable(String),
            user: String,
            uuid: String
          ).returns(T.attached_class)
        end
        def self.new(
          archived: nil,
          auto_archive: nil,
          cc_emails: nil,
          created: nil,
          do_email: nil,
          download_final: nil,
          group: nil,
          modified: nil,
          name: nil,
          pdftext: nil,
          redirect: nil,
          resource_uri: nil,
          return_signer_links: nil,
          # nested arrays with signer details
          signers: nil,
          signers_in_order: nil,
          # Document status options:
          #
          # - 10 - Initial state, check signer status for sent/unsent
          # - 20 - Fields completed
          # - 30 - Signed
          # - 40 - Removed (before signing)
          # - 50 - Rejected
          status: nil,
          tag: nil,
          tag1: nil,
          tag2: nil,
          template: nil,
          templatepdf: nil,
          text: nil,
          user: nil,
          uuid: nil
        )
        end

        sig do
          override.returns(
            {
              archived: T::Boolean,
              auto_archive: T::Boolean,
              cc_emails: String,
              created: Time,
              do_email: T::Boolean,
              download_final: T::Boolean,
              group: String,
              modified: Time,
              name: String,
              pdftext: String,
              redirect: String,
              resource_uri: String,
              return_signer_links: T::Boolean,
              signers: T::Array[T::Array[String]],
              signers_in_order:
                Legalesign::Models::DocumentListResponse::Object::SignersInOrder::TaggedInteger,
              status: Legalesign::DocumentStatusEnum::TaggedInteger,
              tag: String,
              tag1: String,
              tag2: String,
              template: T.nilable(String),
              templatepdf: T.nilable(String),
              text: T.nilable(String),
              user: String,
              uuid: String
            }
          )
        end
        def to_hash
        end

        module SignersInOrder
          extend Legalesign::Internal::Type::Enum

          TaggedInteger =
            T.type_alias do
              T.all(
                Integer,
                Legalesign::Models::DocumentListResponse::Object::SignersInOrder
              )
            end
          OrInteger = T.type_alias { Integer }

          SIGNERS_IN_ORDER_0 =
            T.let(
              0,
              Legalesign::Models::DocumentListResponse::Object::SignersInOrder::TaggedInteger
            )
          SIGNERS_IN_ORDER_1 =
            T.let(
              1,
              Legalesign::Models::DocumentListResponse::Object::SignersInOrder::TaggedInteger
            )

          sig do
            override.returns(
              T::Array[
                Legalesign::Models::DocumentListResponse::Object::SignersInOrder::TaggedInteger
              ]
            )
          end
          def self.values
          end
        end
      end
    end
  end
end
