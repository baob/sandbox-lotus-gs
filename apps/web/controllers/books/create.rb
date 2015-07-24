module Web::Controllers::Books
  class Create
    include Web::Action

    expose :book

    params do
      param :book do
        param :title,  presence: true
        param :author, presence: true
      end
    end

    def call(params)
      if params.valid?
        book = Book.new(params[:book])
        @book = BookRepository.create(book)

        redirect_to '/books'
      end
    end
  end
end
