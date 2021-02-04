class Company
    attr_accessor :name, :size

    def initialize(name, size)
        @name = name
        @size = size
    end
end

companies = [
    Company.new('Alpha', 30),
    Company.new('Beta', 300),
    Company.new('Delta', 3000)
]

### Your code below this
#* Generate a list of strings with the name and size (eg. "Alpha - 30")
def all_companies(companies)
    companies.map do |name_size|
        "#{name_size.name} - #{name_size}"
    end
end

#* Combine all the sizes with reduce
def get_all_sizes(companies)
    companies.reduce(0) do |sum, current_size|
        sum + current_size.size
    end
end
#* Filter the list to show only companies over 100
def companies_over_100(companies)
    companies.filter do |company|
        company.size > 100
    end
end

#* Find the company named "Beta"
def company_named_beta(companies)
    companies.find do |company|
        company.name == "Beta"
    end
end

#* Find the largest company
def largest_company(companies)
    companies.max do |a, b|
        a.size <=> b.size
    end
end

#* Sort the companies from largest to smallest
def company_sort_l_to_s(companies)
    companies.sort.last do |a, b|
        b.size <=> a.size
    end
end

p all_companies(companies)
p get_all_sizes(companies)
p companies_over_100(companies)
p company_named_beta(companies)
p largest_company(companies)
p company_sort_l_to_s(companies)
