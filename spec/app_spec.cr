require "./spec_helper"

describe Kebab do
  # TODO: Write tests

  it "works on camel case" do
    "SomeCamelCaseName".kebabcase.should eq("some-camel-case-name")
  end

  it "works on snake case" do
    "some_snake_case_name".kebabcase.should eq("some-snake-case-name")
  end

  it "works inversely on camel case" do
    "some-camel-case-name".camelcase.should eq("SomeCamelCaseName")
  end

  it "works inversely on snake case" do
    "some-snake-case-name".underscore.should eq("some_snake_case_name")
  end
end
