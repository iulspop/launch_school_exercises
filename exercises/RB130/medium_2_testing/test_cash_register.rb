require 'minitest/autorun'
require_relative 'cash_register'
require_relative 'transaction'

class TestCashRegister < Minitest::Test
  def test_accept_money_increases_total_money
    register = CashRegister.new(1000)
    transaction = Transaction.new(20)
    transaction.amount_paid = 20

    previous_amount = register.total_money
    register.accept_money(transaction)
    current_amount = register.total_money
    assert_equal previous_amount + 20, current_amount
  end

  def test_change_returns_difference_of_amount_paid_and_cost
    register = CashRegister.new(100)
    transaction = Transaction.new(20)
    transaction.amount_paid = 25

    assert_equal 5, register.change(transaction)
  end

  def test_give_receipts_displays_correct_receipt
    item_cost = 20
    register = CashRegister.new(100)
    transaction = Transaction.new(item_cost)
    out, err = capture_io do
      register.give_receipt(transaction)
    end

    assert_equal "You've paid $20.\n", out
  end
end