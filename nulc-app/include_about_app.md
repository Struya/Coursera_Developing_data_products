## Welcome to NULC application

#### Description
This application was built to visualize data on Nominal unit labour cost for several European countries. NULC is one of the key macroeconomic indicators and used in economic institutions worldwide.

#### Dataset
Dataset has been obtained from [Eurostat](http://ec.europa.eu/eurostat). Full description of the processing workflow is available on [RPubs](http://rpubs.com/Struya/nulc_pitch).

#### Source code
Source code is available on [GitHub](https://github.com/Struya/Coursera_Developing_data_products/tree/master/nulc-app).

#### Features
Using this application, you can choose measurement units of data and select up to five countries for visualization.

#### Dependecies
NULC application depends heavily on these libraries:

```{r}
library(eurostat)
library(dplyr)
library(ggplot2)
library(lubridate) 
library(stringr)
library(markdown) 
```
