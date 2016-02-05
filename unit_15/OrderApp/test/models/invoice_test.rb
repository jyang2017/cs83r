require 'test_helper'

class InvoiceTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  test "there should be 5 records" do
    counter = Invoice.count()
    assert_equal( counter, 5, "not fix records found" )
  end

  test "computing solutions should have the biggest quantity" do
    count = 0
    cust = nil
    invoices = Invoice.all()
    invoices.each do |invoice|
        if (invoice.quantity > count)
           count = invoice.quantity
           cust = invoice.customer
        end
    end
    assert_equal( cust.customer_name, "Computing Solutions", "Computing Solutions is not the match" )
  end

  test "there is no invoice for customer Ballard Computer" do
    fail = false
    invoices = Invoice.all()
    invoices.each do |invoice|
        if (invoice.customer.customer_name == "Ballard Computer") 
           fail = true;
        end
    end
    assert( !fail, "Ballard Computer had an invoice" )  
  end
end
