class MyBooks

    attr_accessor :title, :author, :pub_date, :genre, :pages_read, :location

    def initialize(title, author, date, genre, bookmark, location)
        @title      = title
        @author     = author
        @pub_date   = date
        @genre      = genre
        @pages_read = bookmark
        @location   = location
    end

    def been_read()
        return true
    end

    def get_genre(book_genre)
        if @genre == book_genre
            return true
        else
            return false
        end
    end

    def set_bookmark(page_num)
        @pages_read = page_num
        return @pages_read
    end

    def on_loan()
        if @location != "home"
            return true
        else
            return false
        end
    end

end