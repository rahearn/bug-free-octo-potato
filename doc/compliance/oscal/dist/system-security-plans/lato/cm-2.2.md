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
sort-id: cm-02.02
---

# cm-2.2 - \[\] Automation Support for Accuracy and Currency

## Control Statement

Maintain the currency, completeness, accuracy, and availability of the baseline configuration of the system using automated mechanisms as identified in the SSPP/CM Plan.

## Control guidance

Automated mechanisms that help organizations maintain consistent baseline configurations for systems include configuration management tools, hardware, software, firmware inventory tools, and network management tools. Automated tools can be used at the organization level, mission and business process level, or system level on workstations, servers, notebook computers, network components, or mobile devices. Tools can be used to track version numbers on operating systems, applications, types of software installed, and current patch levels. Automation support for accuracy and currency can be satisfied by the implementation of [CM-8(2)](#cm-8.2) for organizations that combine system component inventory and baseline configuration activities.

## Control assessment-objective

the currency of the baseline configuration of the system is maintained using automated mechanisms as identified in the SSPP/CM Plan;
the completeness of the baseline configuration of the system is maintained using automated mechanisms as identified in the SSPP/CM Plan;
the accuracy of the baseline configuration of the system is maintained using automated mechanisms as identified in the SSPP/CM Plan;
the availability of the baseline configuration of the system is maintained using automated mechanisms as identified in the SSPP/CM Plan.

______________________________________________________________________

## What is the solution and how is it implemented?

### github_api

The github_api team develops, documents, and maintains a current baseline for the github_api application
components under configuration control, managed via git and github.com, and orchestrated using GitHub Actions
and the cloud.gov Cloud Foundry CLI.

Note: All cloud.gov brokered services (including databases) are fully managed by the cloud.gov platform.
Due to this, the configuration and security of these services are not included in the github_api configuration baseline.


Add control implementation description here for control cm-2.2

______________________________________________________________________
