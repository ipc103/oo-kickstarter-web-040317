class Project
  attr_reader :title

  def initialize(title)
    @title = title
  end

  def backers
    donations.collect {|donation| donation.backer }
  end

  def donations
    Donation.select_by_project(self)
  end

  def add_backer(backer)
    Donation.new(backer, self)
  end
end
