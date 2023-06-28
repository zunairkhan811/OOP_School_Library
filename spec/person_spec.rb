require_relative '../person'

describe Person do
  before :each do
    @person = Person.new(30, 'Shubham', true)
    @person_without_name = Person.new(25, 'unknown', 'false')
    @person_without_permission = Person.new(15, 'Alice', false)
  end

  it 'constructor sets a default value for the optional name parameter' do
    expect(@person_without_name.name).to eq('unknown')
  end

  it 'can_use_services? method returns false if underage and no parent permission' do
    expect(@person_without_permission.can_use_services?).to be false
    expect(@person.can_use_services?).to be true
  end

  it 'can_use_services? method returns true if has parent permission' do
    expect(@person.can_use_services?).to be true
  end

  it 'checking person instance' do
    expect(@person).to be_instance_of Person
  end

  it 'checking attributes' do
    expect(@person).to have_attributes(age: 30, name: 'Shubham', parent_permission: true)
  end

  it 'test for add_rental' do
    book = double('book', rentals: [])
    allow(book).to receive(:title) { 'Harry Potter' }
    allow(book).to receive(:author) { 'Shubham' }
    rental = @person.add_rental('2323-23-23', book)
    expect(rental.book.title).to eq('Harry Potter')
  end

  it 'correct name method' do
    expect(@person.correct_name).to eq('Shubham')
  end

  it 'correct age method' do
    expect(@person.send('of_age?')).to be true
  end

  it 'can use services' do
    expect(@person.can_use_services?).to be true
  end
end
