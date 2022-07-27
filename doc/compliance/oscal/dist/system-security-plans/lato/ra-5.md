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
sort-id: ra-05
---

# ra-5 - \[\] Vulnerability Monitoring and Scanning

## Control Statement

- \[a.\] Monitor and scan for vulnerabilities in the system and hosted applications weekly authenticated scans for operating systems (OS)-including databases, monthly unauthenticated scans for web application, annual authenticated scans for web applications and when new vulnerabilities potentially affecting the system are identified and reported;

- \[b.\] Employ vulnerability monitoring tools and techniques that facilitate interoperability among tools and automate parts of the vulnerability management process by using standards for:

  - \[1.\] Enumerating platforms, software flaws, and improper configurations;
  - \[2.\] Formatting checklists and test procedures; and
  - \[3.\] Measuring vulnerability impact;

- \[c.\] Analyze vulnerability scan reports and results from vulnerability monitoring;

- \[d.\] Remediate legitimate vulnerabilities (1) For Internet-accessible IP addresses (a) Any Critical (Very High) scan vulnerabilities must be remediated within 15 days. (b) Any High scan vulnerabilities must be remediated within 30 days. (c) Any Moderate scan vulnerabilities must be remediated within 90 days. (2) For all other assets (a) Any Critical (Very High) and High scan vulnerabilities must be remediated within 30 days. (b) Any Moderate scan vulnerabilities must be remediated within 90 days. in accordance with an organizational assessment of risk;

- \[e.\] Share information obtained from the vulnerability monitoring process and control assessments with Information System Security Officers to help eliminate similar vulnerabilities in other systems; and

- \[f.\] Employ vulnerability monitoring tools that include the capability to readily update the vulnerabilities to be scanned.

## Control guidance

Security categorization of information and systems guides the frequency and comprehensiveness of vulnerability monitoring (including scans). Organizations determine the required vulnerability monitoring for system components, ensuring that the potential sources of vulnerabilities—such as infrastructure components (e.g., switches, routers, guards, sensors), networked printers, scanners, and copiers—are not overlooked. The capability to readily update vulnerability monitoring tools as new vulnerabilities are discovered and announced and as new scanning methods are developed helps to ensure that new vulnerabilities are not missed by employed vulnerability monitoring tools. The vulnerability monitoring tool update process helps to ensure that potential vulnerabilities in the system are identified and addressed as quickly as possible. Vulnerability monitoring and analyses for custom software may require additional approaches, such as static analysis, dynamic analysis, binary analysis, or a hybrid of the three approaches. Organizations can use these analysis approaches in source code reviews and in a variety of tools, including web-based application scanners, static analysis tools, and binary analyzers.

Vulnerability monitoring includes scanning for patch levels; scanning for functions, ports, protocols, and services that should not be accessible to users or devices; and scanning for flow control mechanisms that are improperly configured or operating incorrectly. Vulnerability monitoring may also include continuous vulnerability monitoring tools that use instrumentation to continuously analyze components. Instrumentation-based tools may improve accuracy and may be run throughout an organization without scanning. Vulnerability monitoring tools that facilitate interoperability include tools that are Security Content Automated Protocol (SCAP)-validated. Thus, organizations consider using scanning tools that express vulnerabilities in the Common Vulnerabilities and Exposures (CVE) naming convention and that employ the Open Vulnerability Assessment Language (OVAL) to determine the presence of vulnerabilities. Sources for vulnerability information include the Common Weakness Enumeration (CWE) listing and the National Vulnerability Database (NVD). Control assessments, such as red team exercises, provide additional sources of potential vulnerabilities for which to scan. Organizations also consider using scanning tools that express vulnerability impact by the Common Vulnerability Scoring System (CVSS).

Vulnerability monitoring includes a channel and process for receiving reports of security vulnerabilities from the public at-large. Vulnerability disclosure programs can be as simple as publishing a monitored email address or web form that can receive reports, including notification authorizing good-faith research and disclosure of security vulnerabilities. Organizations generally expect that such research is happening with or without their authorization and can use public vulnerability disclosure channels to increase the likelihood that discovered vulnerabilities are reported directly to the organization for remediation.

Organizations may also employ the use of financial incentives (also known as "bug bounties" ) to further encourage external security researchers to report discovered vulnerabilities. Bug bounty programs can be tailored to the organization’s needs. Bounties can be operated indefinitely or over a defined period of time and can be offered to the general public or to a curated group. Organizations may run public and private bounties simultaneously and could choose to offer partially credentialed access to certain participants in order to evaluate security vulnerabilities from privileged vantage points.

## Control assessment-objective

systems and hosted applications are monitored for vulnerabilities frequency and/or randomly in accordance with organization-defined process and when new vulnerabilities potentially affecting the system are identified and reported;
systems and hosted applications are scanned for vulnerabilities frequency and/or randomly in accordance with organization-defined process and when new vulnerabilities potentially affecting the system are identified and reported;
vulnerability monitoring tools and techniques are employed to facilitate interoperability among tools;
vulnerability monitoring tools and techniques are employed to automate parts of the vulnerability management process by using standards for enumerating platforms, software flaws, and improper configurations;
vulnerability monitoring tools and techniques are employed to facilitate interoperability among tools and to automate parts of the vulnerability management process by using standards for formatting checklists and test procedures;
vulnerability monitoring tools and techniques are employed to facilitate interoperability among tools and to automate parts of the vulnerability management process by using standards for measuring vulnerability impact;
vulnerability scan reports and results from vulnerability monitoring are analyzed;
legitimate vulnerabilities are remediated (1) For Internet-accessible IP addresses (a) Any Critical (Very High) scan vulnerabilities must be remediated within 15 days. (b) Any High scan vulnerabilities must be remediated within 30 days. (c) Any Moderate scan vulnerabilities must be remediated within 90 days. (2) For all other assets (a) Any Critical (Very High) and High scan vulnerabilities must be remediated within 30 days. (b) Any Moderate scan vulnerabilities must be remediated within 90 days. in accordance with an organizational assessment of risk;
information obtained from the vulnerability monitoring process and control assessments is shared with Information System Security Officers to help eliminate similar vulnerabilities in other systems;
vulnerability monitoring tools that include the capability to readily update the vulnerabilities to be scanned are employed.

______________________________________________________________________

## What is the solution and how is it implemented?

<!-- Please leave this section blank and enter implementation details in the parts below. -->

______________________________________________________________________

## Implementation a.

### github_api

Any vulnerabilities in github_api would have to be introduced at time of deployment because github_api
is a set of cloud.gov managed applications with SSH disabled in Production. github_api monitors for
vulnerabilities by ensuring that scans for vulnerabilities in the information system and hosted applications occur
daily and when new code is deployed.

OWASP ZAP scans are built into the github_api CI/CD pipeline and runs a series of web vulnerability scans before
a successful deploy can be made to cloud.gov. Any issues or alerts caused by the scan are documented by github_api
Operations and cause the deployment to fail. Issues are tracked in GitHub. The issue posted will provide information
on which endpoints are vulnerable and the level of vulnerability, ranging from **False Positive** to **High**.
The issue also provides a detailed report formatted in html, json, and markdown.

github_api Administrators are responsible for reporting any new vulnerabilities reported by the OWASP ZAP scan to the github_api ISSO.


Add control implementation description here for item ra-5_smt.a

______________________________________________________________________

## Implementation b.

### github_api

1. Alerts from each ZAP vulnerability scan are automatically reported in GitHub as an issue on the github_api repository.
This issue will enumerate each finding and detail the type and severity of the vulnerability. github_api Developers and
github_api Administrators receive automated alerts via GitHub of the issues to remediate. Scan results are sent to the
github_api System Owner by github_api Administrators. The vulnerabilities are analyzed and prioritized within GitHub
based on input from the github_api System Owner and ISSO.
1. The ZAP report contains vulnerabilities grouped by type and by risk level. The report also provides a detailed report
formatted in html, json, and markdown. The reported issues also include the CVE item associated with the vulnerability.
1. Vulnerabilities are classified by ZAP under a level range from **False Positive** to **High**. The impact level is
used to drive the priority of the effort to remediate.


Add control implementation description here for item ra-5_smt.b

______________________________________________________________________

## Implementation c.

### github_api

The ZAP vulnerability report contains information about how the attack was made and suggested solutions for each vulnerability found.
Any static code analysis findings identified during automation as part of the GitHub pull request process must be reviewed, analyzed,
and resolved by the github_api Developer before the team can merge the pull request.


Add control implementation description here for item ra-5_smt.c

______________________________________________________________________

## Implementation d.

Add control implementation description here for item ra-5_smt.d

______________________________________________________________________

## Implementation e.

Add control implementation description here for item ra-5_smt.e

______________________________________________________________________

## Implementation f.

Add control implementation description here for item ra-5_smt.f

______________________________________________________________________
