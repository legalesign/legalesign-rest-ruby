# frozen_string_literal: true

require_relative "../test_helper"

class LegalesignSDK::Test::Resources::PdfTest < LegalesignSDK::Test::ResourceTest
  def test_retrieve
    skip("Prism doesn't support application/pdf responses")

    response = @legalesign_sdk.pdf.retrieve("docId")

    assert_pattern do
      response => StringIO
    end
  end
end
