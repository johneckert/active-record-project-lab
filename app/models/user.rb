class User < ActiveRecord::Base

  has_many :loans
  has_many :books, through: :loans

  def check_out_book(book, due_date)
    new_loan = Loan.new
    new_loan.book = book
    new_loan.user = self
    new_loan.due_date = due_date
    new_loan.save
  end


end
