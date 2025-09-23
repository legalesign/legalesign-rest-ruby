# typed: strong

module LegalesignSDK
  module Resources
    class Templatepdf
      class Fields
        # Replace existing pdf fields with new ones
        sig do
          params(
            pdf_id: String,
            body:
              T::Array[
                LegalesignSDK::Templatepdf::FieldCreateParams::Body::OrHash
              ],
            request_options: LegalesignSDK::RequestOptions::OrHash
          ).void
        end
        def create(
          # uploaded PDF id
          pdf_id,
          body:,
          request_options: {}
        )
        end

        # Get PDF template fields
        sig do
          params(
            pdf_id: String,
            request_options: LegalesignSDK::RequestOptions::OrHash
          ).returns(LegalesignSDK::Models::Templatepdf::FieldListResponse)
        end
        def list(
          # uploaded PDF id
          pdf_id,
          request_options: {}
        )
        end

        # @api private
        sig { params(client: LegalesignSDK::Client).returns(T.attached_class) }
        def self.new(client:)
        end
      end
    end
  end
end
