1000.times do |i|
  Professional.create(name: "Professional #{i + 1}")
end

Office.create(name: 'Office 1')
Office.create(name: 'Office 2')

Office.all.each do |office|
  # Example 1: Single Booking Request for multiple professionals

  Professional.all.sample(20).each do |provider|
    100.times do |i|
      tj = BookingRequest.create(office: office, when: rand(10.years).seconds.from_now, notes: "notes for #{provider.name}")
      tj.invites.create(professional: provider)
    end
  end

  # Example 2: Single Booking Proposal

  Professional.all.sample(20).each do |provider|
    100.times do |i|
      tj = BookingProposal.create(office: office, post: true, when: rand(10.years).seconds.from_now, notes: "notes for #{provider.name}")
      tj.proposals.create(professional: provider)
    end
  end

  # Example 3: Temp Job Post and Multiple Applications by multiple providers
  100.times do
    tj = TempJobPost.create(office: office, when: rand(10.years).seconds.from_now, notes: "notes")
    Professional.all.sample(10).each do |provider|
      tj.applications.create(professional: provider)
    end
  end

  # Example 11: Provider creates Booking Proposal, receiving owner invites other providers, then makes it a job post to be applied to

  Professional.all.sample(100).each do |provider|
    tj = BookingProposal.create(office: office, post: true, when: rand(10.years).seconds.from_now, notes: "notes for #{provider.name}")
    tj.invites.create(professional: provider)
    tj.update(request: true)
    Professional.where.not(id: provider.id).sample(10).each do |provider2|
      tj.invites.create(professional: provider2)
    end
  end
end
