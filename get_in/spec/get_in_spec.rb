require 'spec_helper'

describe 'get_in' do
  it 'takes an arguement of a nested hash and an array of keys and returns deepest value' do
    data = { an_outer: "hash",
              with_another: {
                inner: "hash",
                and_another: {
                  inside: "that"
                }
              }
           }

    expect(get_in(data, [:with_another, :and_another, :inside])).to eq('that')
  end
end
