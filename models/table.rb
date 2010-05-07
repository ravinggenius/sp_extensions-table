class Table < Node
  key :caption, String
  key :data, Array
  key :has_header_row, Boolean

  validates_presence_of :caption, :data, :has_header_row

  before_save :set_defaults

  private

  def set_defaults
    self.has_header_row ||= true
  end
end
