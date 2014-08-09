require_relative '../lib/triangle'

describe Triangle do
  context "三角形じゃないです＞＜" do
    let(:result) { "三角形じゃないです＞＜" }

    it "指定した辺が数字以外の場合" do
      expect{ Triangle.new(nil,3,4).print }.to raise_error ArgumentError
      expect{ Triangle.new(2,nil,4).print }.to raise_error ArgumentError
      expect{ Triangle.new(2,3,nil).print }.to raise_error ArgumentError
      expect{ Triangle.new(nil,3,nil).print }.to raise_error ArgumentError
      expect{ Triangle.new("2","3","4").print }.to raise_error ArgumentError
    end

    it "どれか一辺の長さが０以下の場合" do
      expect(Triangle.new(0,3,4).print).to eq result
      expect(Triangle.new(2,0,4).print).to eq result
      expect(Triangle.new(2,3,0).print).to eq result
      expect(Triangle.new(0,0,4).print).to eq result
      expect(Triangle.new(2,0,0).print).to eq result
      expect(Triangle.new(0,3,0).print).to eq result
      expect(Triangle.new(0,0,0).print).to eq result
    end

    it "どれか二辺を足すと三辺目以下の場合" do
      expect(Triangle.new(1,2,3).print).to eq result
      expect(Triangle.new(2,3,1).print).to eq result
      expect(Triangle.new(3,2,1).print).to eq result
      expect(Triangle.new(2,1,3).print).to eq result
    end
  end

  context "正三角形ですね！" do
    let(:result) { "正三角形ですね！" }

    it "三角形で三つの辺とも同じ長さの場合" do
      expect(Triangle.new(1,1,1).print).to eq result
      expect(Triangle.new(2,2,2).print).to eq result
      expect(Triangle.new(3,3,3).print).to eq result
    end
  end

  context "二等辺三角形ですね！" do
    let(:result) { "二等辺三角形ですね！" }

    it "三角形で正三角形ではなくどれか二辺が同じ長さの場合" do
      expect(Triangle.new(2,2,1).print).to eq result
      expect(Triangle.new(2,1,2).print).to eq result
      expect(Triangle.new(1,2,2).print).to eq result
    end
  end

  context "不等辺三角形ですね！" do
    let(:result) { "不等辺三角形ですね！" }

    it "三角形で正三角形でも二等辺三角形でもない場合" do
      expect(Triangle.new(2,3,4).print).to eq result
      expect(Triangle.new(3,4,2).print).to eq result
      expect(Triangle.new(4,2,3).print).to eq result
      expect(Triangle.new(3,2,4).print).to eq result
      expect(Triangle.new(4,3,2).print).to eq result
    end
  end
end
