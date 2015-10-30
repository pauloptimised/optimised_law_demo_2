class DepartmentPresenter < BasePresenter
  presents :department
  delegate :id, :name, to: :department

  def pluralized_name
    name.possessive
  end

  def services
    department.services
  end

  def summary
    h.simple_format department.summary
  end
end
