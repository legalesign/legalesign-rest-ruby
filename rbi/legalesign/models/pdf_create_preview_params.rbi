# typed: strong

module Legalesign
  module Models
    class PdfCreatePreviewParams < Legalesign::Internal::Type::BaseModel
      extend Legalesign::Internal::Type::RequestParameters::Converter
      include Legalesign::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            Legalesign::PdfCreatePreviewParams,
            Legalesign::Internal::AnyHash
          )
        end

      sig { returns(String) }
      attr_accessor :group

      sig { returns(Integer) }
      attr_accessor :is_signature_per_page

      sig { returns(Integer) }
      attr_accessor :signature_type

      # number of signers
      sig { returns(Integer) }
      attr_accessor :signee_count

      # raw html
      sig { returns(String) }
      attr_accessor :text

      sig { returns(T.nilable(String)) }
      attr_reader :footer

      sig { params(footer: String).void }
      attr_writer :footer

      sig { returns(T.nilable(Integer)) }
      attr_reader :footer_height

      sig { params(footer_height: Integer).void }
      attr_writer :footer_height

      sig { returns(T.nilable(String)) }
      attr_reader :header

      sig { params(header: String).void }
      attr_writer :header

      sig { returns(T.nilable(Integer)) }
      attr_reader :header_height

      sig { params(header_height: Integer).void }
      attr_writer :header_height

      # Set to true to use group default
      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :pdfheader

      sig { params(pdfheader: T::Boolean).void }
      attr_writer :pdfheader

      sig { returns(T.nilable(String)) }
      attr_reader :title

      sig { params(title: String).void }
      attr_writer :title

      sig do
        params(
          group: String,
          is_signature_per_page: Integer,
          signature_type: Integer,
          signee_count: Integer,
          text: String,
          footer: String,
          footer_height: Integer,
          header: String,
          header_height: Integer,
          pdfheader: T::Boolean,
          title: String,
          request_options: Legalesign::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        group:,
        is_signature_per_page:,
        signature_type:,
        # number of signers
        signee_count:,
        # raw html
        text:,
        footer: nil,
        footer_height: nil,
        header: nil,
        header_height: nil,
        # Set to true to use group default
        pdfheader: nil,
        title: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            group: String,
            is_signature_per_page: Integer,
            signature_type: Integer,
            signee_count: Integer,
            text: String,
            footer: String,
            footer_height: Integer,
            header: String,
            header_height: Integer,
            pdfheader: T::Boolean,
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
