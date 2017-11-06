class Library
  attr_reader :books

  def initialize(books)
    @books = books
  end

  def find_book(book_to_find)
    for book in @books
      if book[:title] == book_to_find
        return book
      end
    end
  end

  def find_book_rental_details(book_to_find)
    for book in @books
      if book[:title] == book_to_find
        return book[:rental_details]
      end
    end
  end












end
