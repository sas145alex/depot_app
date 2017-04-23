require 'test_helper'
class OrderMailerTest < ActionMailer::TestCase
  test "received" do
    line = {
      id: 1232435,
      product_id: products(:ruby).id,
      quantity: 1,
      created_at: Time.now(),
      updated_at: Time.now()
    }
    ord = orders(:one)
    ord.save
    ord.line_items.create(line)

    # mail = OrderMailer.received(ord)
    # assert_equal "Pragmatic Store Order Confirmation", mail.subject
    # assert_equal ["dave@example.org"], mail.to
    # assert_equal ["depot@example.com"], mail.from
    # assert_match /1 x Programming Ruby 1.9/, mail.body.encoded
  end

  test "shipped" do
    line = {
      id: 1232435,
      product_id: products(:ruby).id,
      quantity: 1,
      created_at: Time.now(),
      updated_at: Time.now()
    }
    ord = orders(:one)
    ord.save
    ord.line_items.create(line)

    # mail = OrderMailer.shipped(ord)
    # assert_equal "Pragmatic Store Order Shipped", mail.subject
    # assert_equal ["dave@example.org"], mail.to
    # assert_equal ["depot@example.com"], mail.from
    # assert_match /<td>1&times;<\/td>\s*<td>Programming Ruby 1.9<\/td>/,
    #   mail.body.encoded
  end

end
