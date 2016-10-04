---
title:  'Technical Debt Indexes provided by tools: a preliminary discussion'
author:
    - Francesca Arcelli Fontana
    - Riccardo Roveda
    - "**Marco Zanoni**"
date: MTD - 4 Oct 2016, Raleigh
nocite: |
  @Lippert2006, @Garcia2009 @Fowler1999, @Lanza2005, @Martin1995, @ChidamberK94
...

# Tecnical Debt Indexes (TDI)

A single number used to control quality and/or debt.
*"Any kind of quality index computed by analysis tools"*

> A.k.a. Technical Quality Index, Technical Debt/Severity, Deficit Index

- *Q1* How are the  quality indexes the tools provide exactly computed?
    - Which features do they take into account?
- *Q2* Which index does take more into account the architectural issues and in which way?
- *Q3* Which are the features not provided or taken into account by the indexes?

# Tools

- CAST 7.3.2 (<http://www.castsoftware.com/>)

- inFusion v.1.8.5 (<https://www.intooitus.com/>)[^1] 

- Sonargraph v.8.8.0 (<https://www.hello2morrow.com/products/sonargraph>)

- SonarQube v.5.2 (<http://www.sonarqube.org>)

- Structure101 v.4.2.10071 (<http://structure101.com/products/>)

[^1]: its evolution at <http://www.aireviewer.com>

# Other tools (examples)

- Massey Architecture Explorer: Antipatterns Score [@Dietrich2012:ACSC], Tangledness metric [@Shah2012:CSMR];

- Lattix: Stability, Cyclicality, and Coupling metrics;

- STAN: different R. Martin’s metrics.

# Input information

\small

\input{tab-input2}

# Output information

\small

\input{tab-output}

# Q1: Used and generated information

As reported in the tables:

- Different TDI output approaches: abstract number, $ cost, time needed, LOC
- Extremely heterogenuous;
- Different terminologies (e.g., smell, metric violation);

but,

- Similar aggregation/drill-down strategy: single indicators are composed in a linear combination, with different weighting schemes;
- Association of costs or weigths to issues/indicators is arbitrary.


# Q2: Architectural features

Observations:

- SonarQube ignores architectural information;
- SonarGraph, Structure 101, CAST are more oriented to architecture analysis and use it to integrate their TDIs.



# Q3: Missing features

1. Keeping **and** Resolution costs (Principle and Interest);

2. Information unexploited: **no single piece of information** or analysis is supported by **all** tools;

3. Other existing information sources are not present, e.g., historical information
    - History is used only to track values over time

----

**Thank you!**

<marco.zanoni@disco.unimib.it>

# References

\small
