require('minitest/autorun')
require('minitest/rg')
require_relative('../my_books')

class TestMyBooks < MiniTest::Test

    def test_get_book_name
        fiction_book = MyBooks.new("To Kill A Mockingbird", "Harper Lee", 1960, "fiction", "home", 0)
        assert_equal("To Kill A Mockingbird", fiction_book.title)
    end

    def test_get_genre
        fiction_book = MyBooks.new("To Kill A Mockingbird", "Harper Lee", 1960, "fiction", "home", 0)
        genre = fiction_book.get_genre("poetry")
        assert_equal(false, genre)
    end

    def test_been_read
        fiction_book = MyBooks.new("To Kill A Mockingbird", "Harper Lee", 1960, "fiction", "home", 0)
        read = fiction_book.been_read()
        assert_equal(true, read)
    end

  
    def test_set_bookmark
        fiction_book = MyBooks.new("To Kill A Mockingbird", "Harper Lee", 1960, "fiction", "home", 0)
        page = fiction_book.set_bookmark(250)
        assert_equal(250, page)
    end

    def test_on_loan
        fiction_book = MyBooks.new("To Kill A Mockingbird", "Harper Lee", 1960, "fiction", "Diana", 0)
        loan = fiction_book.on_loan()
        assert_equal(true, loan)
    end

end