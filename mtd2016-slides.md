% Towards a Prioritization of Code Debt: A Code Smell Intensity Index
% Francesca Arcelli Fontana, Vincenzo Ferme, **Marco Zanoni**, Riccardo Roveda
% 2 Oct 2015, Bremen, Germany

# Code smells and Technical Debt

Code smells: symptoms of problems at code or design level that can be resolved through the right refactoring steps

> Sources of Technical Debt

The management of code smells involves different decisions:

* which code smells to refactor?
* what to refactor first? (prioritization)

# Prioritization: Code smell Intensity

What is Intensity:

- a number in the range 1--10
- used to rank code smells

Intensity can be computed for detection strategies based on metrics and thresholds, e.g. (Shotgun Surgery),

CC $\geq$ HIGH $\wedge$ CM $\geq$ HIGH $\wedge$ FANOUT $\geq$ LOW

Intensity considers where the evaluated smell is placed in the metric distributions.

Example instance

- Metric values: CC = 8; CM = 10; FANOUT = 6
- Intensity: (7.75 + 7.75 + 10)/3 = 8.5 (High) **Why?**


# Metric distribution and thresholds (1)

We associate five points to Intensity value ranges on the distribution of each metric:

1. Very Low: $[1, 3.25)$;
2. Low: $[3.25, 5.5)$;
3. Mean: $[5.5, 7.75)$;
4. High: $[7.75, 10)$;
5. Very High: $[10, 10]$.

![FANOUT Intensity points for Shotgun Surgery](img/intensity_resized.png)


# Metric distribution and thresholds (2)

In the example:

- CC $\geq$ HIGH(5): CC = 8 $\rightarrow$ High (7.75)
- CM $\geq$ HIGH(6): CM = 10 $\rightarrow$ High (7.75)
- FANOUT $\geq$ LOW(3): FANOUT = 6 $\rightarrow$ Very High (10)

$\rightarrow$ (7.75 + 7.75 + 10)/3 = 8.5 (High)

\scriptsize

Metric     VERY-LOW   LOW   MEAN   HIGH   VERY-HIGH
--------- ---------  ----  -----  -----  ----------
CC                2     3      4      5          10
CM                2     3      4      6          13
FANOUT            2     3      4      5           6

: Shotgun Surgery metric thresholds

# Open questions

Can we use code smells and Intensity to enhance existing measures of Technical Debt?

How do developers behave when dealing with code smells of very different intensity levels?

----

**Thank you!**

<marco.zanoni@disco.unimib.it>


