---
implementation-status:
  - c-not-implemented
  - c-partially-implemented
  - c-planned
  - c-alternative-implementation
  - c-not-applicable
control-origination:
  - c-inherited
  - c-common-control
  - c-hybrid-control
  - c-system-specific-control
sort-id: sc-07
---

# sc-7 - \[\] Boundary Protection

## Control Statement

- \[a.\] Monitor and control communications at the external managed interfaces to the system and at key internal managed interfaces within the system;

- \[b.\] Implement subnetworks for publicly accessible system components that are logically separated from internal organizational networks; and

- \[c.\] Connect to external networks or systems only through managed interfaces consisting of boundary protection devices arranged in accordance with an organizational security and privacy architecture.

## Control guidance

Managed interfaces include gateways, routers, firewalls, guards, network-based malicious code analysis, virtualization systems, or encrypted tunnels implemented within a security architecture. Subnetworks that are physically or logically separated from internal networks are referred to as demilitarized zones or DMZs. Restricting or prohibiting interfaces within organizational systems includes restricting external web traffic to designated web servers within managed interfaces, prohibiting external traffic that appears to be spoofing internal addresses, and prohibiting internal traffic that appears to be spoofing external addresses. [SP 800-189](#f5edfe51-d1f2-422e-9b27-5d0e90b49c72) provides additional information on source address validation techniques to prevent ingress and egress of traffic with spoofed addresses. Commercial telecommunications services are provided by network components and consolidated management systems shared by customers. These services may also include third party-provided access lines and other service elements. Such services may represent sources of increased risk despite contract security provisions. Boundary protection may be implemented as a common control for all or part of an organizational network such that the boundary to be protected is greater than a system-specific boundary (i.e., an authorization boundary).

## Control assessment-objective

communications at external managed interfaces to the system are monitored;
communications at external managed interfaces to the system are controlled;
communications at key internal managed interfaces within the system are monitored;
communications at key internal managed interfaces within the system are controlled;
subnetworks for publicly accessible system components are logically separated from internal organizational networks;
external networks or systems are only connected to through managed interfaces consisting of boundary protection devices arranged in accordance with an organizational security and privacy architecture.

______________________________________________________________________

## What is the solution and how is it implemented?

<!-- Please leave this section blank and enter implementation details in the parts below. -->

______________________________________________________________________

## Implementation a.

Add control implementation description here for item sc-7_smt.a

______________________________________________________________________

## Implementation b.

Add control implementation description here for item sc-7_smt.b

______________________________________________________________________

## Implementation c.

### github_api

github_api is deployed to a restricted-egress cloud.gov space as described in [cloud.gov - controlling egress traffic](https://cloud.gov/docs/management/space-egress/).
The restricted-egress space allows only communication to cloud.gov managed services including RDS.

github_api includes an egress proxy in a public-egress cloud.gov space. This proxy includes an allow-list of allowed external connections. All other
connections are blocked.


Add control implementation description here for item sc-7_smt.c

______________________________________________________________________
