class PagesController < ApplicationController
  EXPERIENCE = [
    {
      role: "US LLC Owner, Independent Contractor",
      org: "Self-Employed",
      period: "2022 — Present",
      log: "$ own_operate --entity=LLC --clients=US,UK --services=dev,devops",
      notes: [
        "Own and operate a US-based LLC providing contract development and DevOps services to clients across the US and UK.",
        "Engage directly with clients on technical strategy, delivery, and ongoing infrastructure support."
      ]
    },
    {
      role: "Independent Contractor",
      org: "Sachse Construction",
      period: "2025 — Present",
      log: "$ deploy --feature=bug-lifecycle --target=production",
      notes: [
        "Transforming the bug management lifecycle into a smoother, more transparent process for end users.",
        "Developing and delivering new product features."
      ]
    },
    {
      role: "Technical Lead",
      org: "Wild West Pool Supplies, LLC",
      period: "2023 — 2025",
      log: "$ launch --product=Wild-West-RV-Supplies --solo-dev=true",
      notes: [
        "Managed all development and server infrastructure as sole developer.",
        "Successfully launched a new product line, Wild West RV Supplies."
      ]
    },
    {
      role: "Technical Team Lead",
      org: "Wego Health (acquired by Health Union)",
      period: "2021 — 2023",
      log: "$ reduce --metric=downtime --by=20% --infra=DigitalOcean/Chef",
      notes: [
        "Managed development of multiple products and technical teams for the Patient Leader Network.",
        "Implemented process improvements, reducing server downtime by 20%."
      ]
    },
    {
      role: "Senior Developer",
      org: "GrowthPhysics",
      period: "2021 — 2022",
      log: "$ review --scope=architecture --mentor=junior_devs",
      notes: [
        "Provided part-time senior development support, contributing to architecture design and code reviews.",
        "Mentored junior developers, fostering a culture of learning and collaboration."
      ]
    },
    {
      role: "Senior Software Engineer",
      org: "EZO (AssetSonar)",
      period: "2014 — 2021",
      log: "$ lead --team=10_engineers --product=AssetSonar --clouds=private",
      notes: [
        "Led the tech team for AssetSonar, the company's flagship product.",
        "Built and integrated multiple private clouds for enterprise clients, improving data security.",
        "Integrated Jira Service Desk, Zendesk, and OneDrive across the product suite."
      ]
    }
  ].freeze

  def home
    @experience = EXPERIENCE
    @projects = defined?(Project) ? Project.order(:position) : []
  end
end