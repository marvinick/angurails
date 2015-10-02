require 'spec_helper'

describe 'Storing Files', type: :feature do
  let(:image)    { File.open('spec/fixtures/image.png', 'r') }
  let(:instance) { FeatureUploader.new }

  before do
    instance.aws_acl = 'public-read'
  end

  it 'uploads the file to the configured bucket' do
    instance.store!(image)
    instance.retrieve_from_store!('image.png')

    expect(instance.file.size).to eq(image.size)
    expect(instance.file.read).to eq(image.read)
    expect(instance.file.read).to eq(instance.file.read)

    image.close
    instance.file.delete
  end

  it 'retrieves the attributes for a stored file' do
    instance.store!(image)
    instance.retrieve_from_store!('image.png')

    expect(instance.file.attributes).to include(
      :metadata,
      :content_type,
      :etag,
      :accept_ranges,
      :last_modified,
      :content_length
    )

    expect(instance.file.content_type).to eq('image/png')
    expect(instance.file.filename).to eq('image.png')

    image.close
    instance.file.delete
  end

  it 'checks if a remote file exists' do
    instance.store!(image)
    instance.retrieve_from_store!('image.png')

    expect(instance.file.exists?).to be_truthy

    instance.file.delete

    expect(instance.file.exists?).to be_falsy

    image.close
  end

  it 'gets a url for remote files' do
    instance.store!(image)
    instance.retrieve_from_store!('image.png')

    expect(instance.url).to eq("https://#{ENV['S3_BUCKET_NAME']}.s3.amazonaws.com/#{instance.path}")

    image.close
    instance.file.delete
  end
end
