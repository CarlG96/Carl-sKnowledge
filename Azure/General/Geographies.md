# Azure Geographies

Azure geographies refers to the global infrastructure of Azure

# Azure Regions

Azure Regions are specific geographical areas of Azure that exist. Because each region may have different laws and policies these are important. 

# Azure Availability Zones

Availability Zones are separate data centers within a single Region. They have low latency data transfer between two availability zones in the same area.

They allow some services such as SQL Managed Identity, Azure App Services and Azure Virtual Machines to stay up. They offer resiliency for services. Each availability zone has separate power, networking, cooling and support.

# Azure Region Pairs

Azure Region Pairs are Regions, each with their own availability zones that have a pair, so that if a whole region goes down, the services would failover automatically to the other region in its pair.

Region Pairs are usually in the same general Geography (ie Europe) but at least 300 miles away from the other region to ensure local disasters to not stop services.