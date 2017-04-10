class Backer
  attr_reader :name

  def initialize(name)
    @name = name
  end

  def backed_projects
    donations.collect { |donation| donation.project }
  end

  def back_project(project)
    Donation.new(self, project)
  end

  def donations
    Donation.select_by_backer(self)
  end
end
