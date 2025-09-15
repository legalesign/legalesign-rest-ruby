# frozen_string_literal: true

require_relative "../test_helper"

class Legalesign::Test::Resources::PdfTest < Legalesign::Test::ResourceTest
  def test_retrieve
    skip("Prism doesn't support application/pdf responses")

    response = @legalesign.pdf.retrieve("docId")

    assert_pattern do
      response => StringIO
    end
  end

  def test_create_preview_required_params
    skip("Prism doesn't support application/pdf responses")

    response =
      @legalesign.pdf.create_preview(
        group: "/api/v1/group/IK-GV--w1tvt/",
        is_signature_per_page: 0,
        signature_type: 0,
        signee_count: 0,
        text: "text"
      )

    assert_pattern do
      response => StringIO
    end
  end
end
