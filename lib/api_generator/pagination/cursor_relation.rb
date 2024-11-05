class ApiGenerator::Pagination::CursorRelation < ApiGenerator::Pagination::Relation
  def size(size)
    expand(size: size)
  end

  def next_cursor(cursor)
    expand(next_cursor: cursor)
  end

  private

  def next_relation
    expand(next_cursor: response['cursor'])
  end

  def last_page?
    response['cursor'].nil?
  end
end
