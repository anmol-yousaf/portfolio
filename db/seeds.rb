Project.destroy_all

Project.create!([
  {
    title: "Open-Source ActiveCampaign Integration for Rails",
    description: "Built a Ruby gem for ActiveCampaign when the existing ones died, including undocumented API support no one else covered.",
    url: nil,
    github_url: "https://rubygems.org/gems/active_campaign_wrapper",
    tech_stack: "Ruby on Rails · RubyGems · ActiveCampaign",
    position: 1
  },
  {
    title: "Bug Management Lead, Sachse Construction & EZO",
    description: "Serve as Bug Lead at Sachse Construction, redesigning the bug management lifecycle for greater transparency and speed while shipping new features.",
    tech_stack: "Ruby on Rails · AWS · Private Cloud · Team Leadership",
    position: 2
  },
  {
    title: "Private Cloud Infrastructure for Enterprise Clients",
    description: "Architected and built multiple private cloud environments at EZO to meet the security and compliance requirements of enterprise clients, including UK Police and Amazon.",
    tech_stack: "Ruby on Rails · AWS · Private Cloud",
    position: 3
  },
  {
    title: "Zero-Downtime Deployment Pipeline",
    description: "Resolved a production server babysitting issue for GrowthPhysics using ECS, then rebuilt the CI/CD pipeline to guarantee zero-downtime releases going forward.",
    tech_stack: "Ruby on Rails · AWS ECS · GitHub Actions · PostgreSQL",
    position: 4
  },
  {
    title: "This Portfolio",
    description: "A database-backed Rails site, deployed on Render with a Postgres backend on Neon, built end to end, from schema to deploy pipeline, as a live example of the infrastructure work described above.",
    url: nil,
    github_url: "https://github.com/anmol-yousaf/portfolio",
    tech_stack: "Ruby on Rails · Tailwind CSS · PostgreSQL · Render",
    position: 5
  }
])

puts "Seeded #{Project.count} projects."
