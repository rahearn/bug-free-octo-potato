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
sort-id: si-02
---

# si-2 - \[\] Flaw Remediation

## Control Statement

- \[a.\] Identify, report, and correct system flaws;

- \[b.\] Test software and firmware updates related to flaw remediation for effectiveness and potential side effects before installation;

- \[c.\] Install security-relevant software and firmware updates within the timeframe(s) outlined within the system’s system security plan and as required by CIO 2100.1 and CIO-IT Security-06-30, Managing Enterprise Cybersecurity Risk of the release of the updates; and

- \[d.\] Incorporate flaw remediation into the organizational configuration management process.

## Control guidance

The need to remediate system flaws applies to all types of software and firmware. Organizations identify systems affected by software flaws, including potential vulnerabilities resulting from those flaws, and report this information to designated organizational personnel with information security and privacy responsibilities. Security-relevant updates include patches, service packs, and malicious code signatures. Organizations also address flaws discovered during assessments, continuous monitoring, incident response activities, and system error handling. By incorporating flaw remediation into configuration management processes, required remediation actions can be tracked and verified.

Organization-defined time periods for updating security-relevant software and firmware may vary based on a variety of risk factors, including the security category of the system, the criticality of the update (i.e., severity of the vulnerability related to the discovered flaw), the organizational risk tolerance, the mission supported by the system, or the threat environment. Some types of flaw remediation may require more testing than other types. Organizations determine the type of testing needed for the specific type of flaw remediation activity under consideration and the types of changes that are to be configuration-managed. In some situations, organizations may determine that the testing of software or firmware updates is not necessary or practical, such as when implementing simple malicious code signature updates. In testing decisions, organizations consider whether security-relevant software or firmware updates are obtained from authorized sources with appropriate digital signatures.

## Control assessment-objective

system flaws are identified;
system flaws are reported;
system flaws are corrected;
software updates related to flaw remediation are tested for effectiveness before installation;
software updates related to flaw remediation are tested for potential side effects before installation;
firmware updates related to flaw remediation are tested for effectiveness before installation;
firmware updates related to flaw remediation are tested for potential side effects before installation;
security-relevant software updates are installed within the timeframe(s) outlined within the system’s system security plan and as required by CIO 2100.1 and CIO-IT Security-06-30, Managing Enterprise Cybersecurity Risk of the release of the updates;
security-relevant firmware updates are installed within the timeframe(s) outlined within the system’s system security plan and as required by CIO 2100.1 and CIO-IT Security-06-30, Managing Enterprise Cybersecurity Risk of the release of the updates;
flaw remediation is incorporated into the organizational configuration management process.

______________________________________________________________________

## What is the solution and how is it implemented?

<!-- Please leave this section blank and enter implementation details in the parts below. -->

______________________________________________________________________

## Implementation a.

### github_api

Flaw and vulnerability checks are built into the github_api CI/CD pipeline and automated to ensure compliance.
Dynamic vulnerability scans are performed against github_api before a successful deployment and reports issues after every scan.
Compliance is documented in sections SA-11 and RA-5. The github_api DevOps team uses GitHub as the Product Backlog to
track and prioritize issues related to system flaws.

The responsibility of remediating flaws and vulnerabilities (once a remediation is available) falls on the github_api Developer,
who updates the github_api code and deploys fixes as part of the normal development and CI/CD process.


Add control implementation description here for item si-2_smt.a

______________________________________________________________________

## Implementation b.

### github_api

Any flaws or vulnerabilities resolved in github_api result in a GitHub issue for triage via the github_api CM Configuration Control
process described in CM-2(2). After resolving a vulnerability or flaw in github_api, unit tests and integration tests are updated to
prevent further inclusion of similar flaws.

* All GitHub tickets have accompanying Acceptance Criteria that are used to create unit tests.
* Unit tests are run on the Development environment when new code is pushed.
* Integration tests are run on the Test environment when the remediation is deployed via the CI/CD process to ensure that the production
environment does not suffer from any side effects of the vulnerability remediation.
* Integration tests are run on the Prod environment when the remediation is deployed via the CI/CD process to validate the remediation and application functionality.
* All findings that are not remediated immediately are tracked in the github_api Plan of Action and Milestones (POAM) by github_api Operations and the github_api ISSO.


Add control implementation description here for item si-2_smt.b

______________________________________________________________________

## Implementation c.

Add control implementation description here for item si-2_smt.c

______________________________________________________________________

## Implementation d.

Add control implementation description here for item si-2_smt.d

______________________________________________________________________
