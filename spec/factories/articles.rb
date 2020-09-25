FactoryBot.define do
  factory :article do
    sequence(:title) {|n| "my awsome title #{n}"}
    sequence(:content) { |n| "The content for my awsome article #{n}"}
    sequence(:slug) {|n| "my-awsome-article- #{n}"}
  end
end
