require 'minitest/autorun'
require_relative 'cash_register'
require_relative 'transaction'

class TestTransaction < Minitest::Test
  def test_prompt_for_payment_breaks_if_sufficient_payment
    transaction = Transaction.new(30)
    input = StringIO.new("30\n")
    transaction.prompt_for_payment(input: input)
    assert_equal 30, transaction.amount_paid
  end
end