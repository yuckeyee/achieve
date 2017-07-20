require 'rails_helper'

describe Contact do
  # 名前,メールアドレス,内容があれば有効な状態であること
  it "is valid with name" do
    contact = Contact.new(name: '香山', email: 'sample@example.com', content: 'test')
    expect(contact).to be_valid
  end

  #名前がなければ無効であること
  it "is invalid without a name" do
    contact = Contact.new(email: 'sample@example.com', content: 'test')
    expect(contact).not_to be_valid
  end

  #メールアドレスがなければ無効であること
  it "is invalid without a email" do
    contact = Contact.new(name: '香山', content: 'test')
    expect(contact).not_to be_valid
  end

  #内容がなければ無効であること
  it "is invalid without a content" do
    contact = Contact.new(name: '香山', email: 'sample@example.com')
    expect(contact).not_to be_valid
  end
end