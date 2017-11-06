require("minitest/autorun")
require("minitest/rg")
require_relative("../library_as_class.rb")

class TestLibrary < MiniTest::Test

  def setup

    @books = [
      {
        title: "Catcher in the Rye",
        rental_details:
        {
          student_name: "John",
          due_date: "31/11/17"
        }
      },

      {
        title: "To Kill a Mockingbird",
        rental_details:
        {
          student_name: "Amy",
          due_date: "15/11/17"
        }
      },

      {
        title: "In cold blood",
        rental_details:
        {
          student_name: "Kim",
          due_date: "04/12/17"
        }
      }
    ]

    @library = Library.new(@books)

  end


  def test_list_books_in_library
    assert_equal([
      {
        title: "Catcher in the Rye",
        rental_details:
        {
          student_name: "John",
          due_date: "31/11/17"
        }
      },

      {
        title: "To Kill a Mockingbird",
        rental_details:
        {
          student_name: "Amy",
          due_date: "15/11/17"
        }
      },

      {
        title: "In cold blood",
        rental_details:
        {
          student_name: "Kim",
          due_date: "04/12/17"
        }
      }
    ], @library.books)
  end

  def test_book_details

end
