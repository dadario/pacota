class Thing

  attr_accessor :id, :content

  def initialize(fields = {})
    @content = fields.dup
  end

  def save
    raise "missing implementation"
  end

  def to_doc
    doc = new_doc
    doc << new_field('ferret_table', self.class.name, Ferret::Document::Field::Store::YES, Ferret::Document::Field::Index::UNTOKENIZED)
    @content.each{|key, value| doc << new_field(key, value)}
    doc
  end

  def new_doc
    Ferret::Document::Document.new
  end

  def new_field(name, value, store = Ferret::Document::Field::Store::YES, tokenized = Ferret::Document::Field::Index::TOKENIZED)
    Ferret::Document::Field.new(name, value, store, tokenized)
  end
end
