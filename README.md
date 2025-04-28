
# Beveridge-Nelson Filter

This package is a copy of the Beveridge-Nelson Filter R code available at [https://bnfiltering.com/](https://bnfiltering.com/) re-structured 
as a R package for ease of installation and use. 

Function documentation and examples are available at [https://kletts.github.io/bnfilter/](https://kletts.github.io/bnfilter/). 

## Installation

Install this package in R as: 

```
remotes::install_github("kletts/bnfilter")
```

## Usage 

1. Data preparation, see function `bnfilter::transform_series()`: to apply series differencing

2. Filtering: see function `bnfilter::bnf()` 

3. Plot cycle and cycle confidence interval: see method `plot()`

4. Extract original, trend, cycle and cycle confidence interval: see method `to.data.frame()`

## Notes from the authors 

This code calculates the BN filter output gap with the automatic signal-to-noise selection criteria described in Kamber, Morley and Wong (2018) (KMW2018 hereafter), "Intuitive and Reliable Estimates of the Output Gap from a Beveridge-Nelson Filter," Review of Economics and Statistics 100 (3), 550-566 [https://doi.org/10.1162/rest_a_00691](https://doi.org/10.1162/rest_a_00691)

It has also been updated to allow refinements of the original BN filter, as described in Kamber, Morley and Wong (2025) (KMW2025 hereafter), "Trend-Cycle Decomposition in the Presence of Large Shocks," Journal of Economic Dynamics and Control, [https://doi.org/10.1016/j.jedc.2025.105066](https://doi.org/10.1016/j.jedc.2025.105066).

To allow for possible structural breaks in the long-run drift of a time series, we include options to implement dynamic demeaning as described in KMW2018 or to enter breakdate(s) informed by a test such as Bai-Perron.

We also allow the possibility of imposing no drift in levels, such as might be case for variables like the unemployment rate or inflation.

To implement the BN filter, one needs four inputs: 

1. the data in first differences of the series being detrended, 
2. the lag order of the restricted AR model used in estimation, 
3. an indicator of whether or not iterative backcasting is employed, and 
4. a signal-to-noise ratio delta.

The code was modified in October 2021 to allow calculation of error bands according to the formula in the [online appendix of BMW2018](https://doi.org/10.1162/rest_a_00691).

As proposed in KMW2025, we have modified the original code to allow four refinements relative to KMW2018:

1. an alternative automatic selection of delta based on the local minimum of the variance of trend shocks rather than local maximum of the amplitude-to-noise ratio
2. iterative dynamic mean adjustment that uses estimates of trend instead of overall growth to avoid undue influence of outlier cyclical observations
3. dynamic estimation of BN cycle variance using the same window as dynamic demeaning for purposes of constructing more accurate 95% error bands
4. an option of iterative backcasting (until parameter estimates/backcasts converge) that uses the reversibility of the restricted AR process to backcast output growth prior to the initial observation, allowing for calculation of the BN filter cycle for the first observation in levels instead of from the second observation in levels    

Options are currently set to estimate the output gap for quarterly U.S. real GDP for the sample period in KMW2025 in the `data(usdata-updated)` using the automatic selection of delta based on the local minimum for the variance of trend shocks and iterative dynamic demeaning. It currently reports error bands both with and without correction for Covid outliers. Options can be modified to replicate results in the original KMW2018 paper using `data(usdata)`.

We are not responsible for any loss you may incur, financial or otherwise, by using our code
If you use the code, please cite and acknowledge the paper.

Gunes Kamber<br>
James Morley<br>
Benjamin Wong<br>
February 2025

## References 

- **KMW2018**: Kamber G, Morley J, Wong B (2018). “Intuitive and Reliable Estimates of the Output
  Gap from a Beveridge-Nelson Filter.” The Review of Economics and Statistics, 100(3),
  550-566. ISSN 0034-6535.
  
- **KMW2025**: Kamber G, Morley J, Wong B (2025). “Trend-cycle decomposition in the presence of
  large shocks.” Journal of Economic Dynamics and Control, 173, 105066. ISSN 0165-1889.


