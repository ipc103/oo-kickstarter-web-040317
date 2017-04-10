class Donation
  ALL = []

  def self.all
    ALL
  end

  def self.select_by_backer(backer)
    self.all.select { |donation| donation.backer == backer }
  end

  def self.select_by_project(project)
    self.all.select {|donation| donation.project == project }
  end

  attr_reader :backer, :project

  def initialize(backer, project)
    @backer = backer
    @project = project
    ALL << self
  end
end
