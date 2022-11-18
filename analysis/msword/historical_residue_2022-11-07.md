We use historical stemwood harvest data from Alberta, Canada to develop
a description of the spatial and temporal distributions of the
availability of forest harvest residues for the period 1990---2015.
Using a GIS coverage of the road network in Alberta, we developed
estimates of round-trip haul costs from each harvest location to each of
three potential bioenergy plant locations. This information was used to
create cost-availability curves (or cost-availability curves) for each
of the three potential locations and each of the 26 years. This
information is used to develop descriptions of the variability in the
delivered costs of forest residue for bioenergy use. These descriptions
of variability are historical, but could be useful for potential
investors in the bioenergy sector.

# Introduction

Humans have used biofuels since learning to control fire a million or so
years ago. In developed economies, early biofuels (*e.g*., wood,
charcoal, dung, peat) were largely displaced by coal during the
industrial revolution, and by petroleum starting in the mid-nineteenth
century. In recent times, biofuels are once again becoming an important
source of energy because of their potential to reduce greenhouse gas
emissions. In the European Union, the United Kingdom, and Japan, many
heat and power plants have been converted to use wood pellets instead of
coal or natural gas.

Liquid biofuels (*e.g.,* ethanol and biodiesel) have been produced in
commercial quantities from food crops starting in the 1980s. In some
jurisdictions policies to promote the use of these first-generation
biofuels are being phased out because of concerns that they compete with
food, and that their production may lead to land use change (Campbell et
al 2016).

Second generation biofuels rely on processes that convert
lignocellulosic materials (such a corn stover and wood) to liquid
biofuels. An advantage of this process is that the feedstock can be
waste residue left over from food or forest products production. Second
generation biofuel production is still largely in a pilot or
demonstration phase. An interesting example that will use forest
residues is the Silva Green Fuel renewable crude oil plant in Tofte,
Norway which was expected to begin operations in 2021 \[1\]. As of the
date of writing (2022-11-07), the plant is not yet operational.

Technologies to pelletize wood are more established than technologies to
produce liquid fuels from wood. It was projected that Canada would
produce 3.8 million Mg of wood pellets in 2021, of which 87% will be
exported, largely to the United Kingdom, Japan, and Europe \[2\]. Most
of the wood pellet production in Canada comes from forest product mill
residues, such as sawdust and bark. There is interest, however, in
expanding the biomass source to the forest by collecting the residues
left within harvested areas: a practice that is rare in Canada, but
well-established in Europe.

Forest residues are generated as by-products of conventional forest
harvesting operations and include the treetops, branches, and
non-merchantable logs. In Canada, these residues are typically left
behind in slash piles, which are burned in winter to mitigate against
the risk of wildfires. Not all forest residues are available for
extraction, however, and estimates of residue availability should
consider ecological sustainability and technical accessibility. At a
national scale, a previous study by Yemshanov et al \[??\] estimated the
annual supply of harvestable residual biomass in Canada to be between
16.5 and 20.0 Tg/a in scenarios that included both ecological and
technical accessibility limitations. In this paper we express biomass
using SI units, and all quantities of biomass will be expressed on an
oven-dry basis: 1 Mg is equivalent to 1 oven-dry metric ton.

Despite Canada's huge potential supply of bioenergy feedstock, there are
key questions about the financial viability of forest-residue based
bioenergy investments: How much volume is spread over what area? Which
areas are best for locating a potential bioenergy plant when considering
forest residue collection and transport costs? Would forest residue
volumes be consistently available on a year-to-year basis? We attempt to
answer these questions in this paper.

There are several studies regarding plant location decisions for forest
residue-based bioenergy plants, as reviewed by Johnson *et al*. \[19\].
Although these studies have improved our understanding of feedstock
availability, they tend to use limited datasets and often focus on
average levels of residue availability. A key area that has received
little attention in the bioenergy plant location literature is
consideration of feedstock supply variability over longer periods of
time. Instead of just focusing on average residue levels, a bioenergy
investor is likely to be concerned about the financial impact of
variable annual residue availability , which is the focus of our study.

Availability of forest residues for a bioenergy plant largely depends on
commercial harvesting operations and the production of traditional
forest products. Fluctuations in the volume of stemwood harvested for
forest products has a direct impact on residues available for biofuels.
Factors such as the 2008 housing crisis and the ongoing softwood lumber
dispute between Canada and the United States of America have resulted in
sawmill closures and reductions in forest harvesting activities in
western Canada \[9\] \[10\]. This relationship between variable harvest
volumes and subsequent residue variability is explored in detail by
Niquidet and Friesen \[11\], who model forest residue supply in Alberta
as a function of lumber prices.

Biomass feedstock accounts for 40 to 60% of a bioenergy plant's total
costs {from (Caputo et al., 2005; Leistritz et al., 2007) which are
cited in \[12\]). A number of studies have shown that collection and
transportation costs may be the biggest impediment to widespread use of
forest residues in bioenergy systems \[8\]. Since a forest-residue based
bioenergy plant is dependent on stemwood harvesting for feedstock, any
variability in harvesting directly influences the volume of residues
that would be available. Therefore, considering the long-term
variability associated with feedstocks in different potential locations
would be important in choosing the optimal site for locating a bioenergy
plant.

Although few studies consider long-term forest residue variability for
the purposes of optimizing the location of a potential bioenergy plant,
there are studies that consider variability for other purposes. Some
studies have considered variable feedstock supplies when investigating
whether and when to expand the production of bioenergy from burning
residues \[13\] \[14\] \[15\]. Other studies have explored the context
of variable supplies when making decisions about capital investments in
forest residue-based biorefineries \[16\], \[17\] \[18\]. Variable
feedstock supplies are also shown to affect capital investment decisions
related to investing in a residue preprocessing facility (Chen and Fay
2011) \[17\], types of storage infrastructure for bioenergy plant
feedstocks \[18\], as well as whether to invest in biofuels versus
bioenergy, and when to invest in processing facilities \[16\].

Our study contributes to the literature by considering variability in
forest residue feedstock supplies for the purpose of selecting the best
location for a bioenergy plant from alternative potential locations.
More specifically, we use precise information on the location and year
of historical timber harvest in the province of Alberta, Canada to
quantify the spatial and temporal variability of timber harvest, and
thereby relate the harvest information to spatial and temporal
variability of forest residue availability. We develop transportation
cost estimates to all of the historical timber harvest areas based on
cycle time estimates developed from a digital road network for the
province. The spatial and temporal variability of forest residues
results in variability in the transport cycle time from the residue
collection areas to the bioenergy plant, which in turn leads to
variability in delivered residue cost. From this information we develop
historical cost-availability curves \[22\] for collecting and delivering
forest residues to each of the three potential bioenergy plant locations
for each of 26 years in our study period (1990--2015). When considering
locations for the potential bioenergy plants, we conduct sensitivity
analysis on 3 different bioenergy plant capacities, as defined by annual
forest residue feedstock requirements: 200 Gg/a corresponding to a small
wood pellet mill, 400 Gg/a corresponding to a large pellet mill or a
small biorefinery, and 800 Gg/a corresponding to a large biorefinery.

The methods used for this study are similar to that used by
FPInnovations for their biomass availability estimates for timber supply
areas in British Columbia (see Ref. \[21\] for an example). Like us,
FPInnovations develops cost-availability curves based on a road network
and historical harvests. However, their consideration of temporal
variability is limited to comparing two 5-year periods. As well,
FPInnovations limit their analyses to the boundaries of timber supply
areas. The only boundary considered our analysis is the provincial
boundary of Alberta.

Our analysis also shares similarities with work published by Yemshanov
*et al.* \[20\]. They develop cost-availability curves at national and
regional levels based on a national forest inventory and the location of
cogeneration facilities associated with forest products manufacturing
facilities. However, their analysis is based the reported annual volumes
of processed wood at each manufacturing plant in a single year (2010),
and the corresponding residue delivery cost.

In the next section we describe our study area and data sources. We then
describe how we aggregate and analyze the data. We present our results
in the form of marginal delivered biomass cost for each of the 26 years
in the study period, and for each of the three alternative plant
locations. We conclude with a discussion of financial considerations
regarding forest residues as a biofuel feedstock, with relevance to
forest companies, policy makers, and bioenergy investors.

# Study area and data

## Study area

We use the province of Alberta in western Canada as our study area. It
occupies 661 848 km^2^. Its southern boundary is 49°N latitude, northern
boundary is 60°N latitude, eastern boundary is 110°W longitude, and its
western boundary is defined by 120°W longitude and the Great Divide of
the Rocky Mountains (Figure 1).

\[ Figure 1 about here \]

The southeastern part of the province is largely privately owned
agricultural land, and the northern and western parts are largely
publicly owned forested land. There is, however, a substantial area of
privately owned agricultural land in the Peace River Country of
northwestern Alberta. There are also large areas in National Parks along
the Rocky Mountains and in the far north of the province. The provincial
government identifies the area of mostly publicly owned forested land
(excluding the National Parks) as the Green Area, and the area of mostly
privately owned agricultural land as the White Area. About 90% of the
harvested timber volume in Alberta comes from the Green Area.

Our focus for this study is area surrounding the towns of Hinton, Edson,
and Whitecourt in west-central Alberta. These 3 potential bioenergy
plant locations were chosen as they host forest products companies and
are located near forest areas with substantial harvesting activity. We
assume that a potential forest residue-based bioenergy plant would be
located near an existing forest products mill, as timber harvesting is
occurring to supply those mills, and the requisite forest road network
would already be developed. Locating a forest residue processing plant
near a forest products mill would also allow for convenient access to
mill residues.

We used the Weyerhaeuser Company Limited oriented strand board plant in
Edson, the Millar Western Forest Products Ltd. pulp mill in Whitecourt,
and the West Fraser pulp mill in Hinton as the three locations that we
consider for a potential forest residue-based bioenergy plant.

## Data

We used several publicly available datasets to create the township-level
(typically 9.778 km by 9.716 km, or 9 500 ha) summary data used in our
analysis. Most of the data are freely available on the World Wide Web.
All national level data were clipped to the Alberta provincial boundary
for further analysis.

The datasets are introduced here. Their use will be discussed in detail
later.

### Altalis

Altalis manages much of the spatial data created by or for the
Government of Alberta. We use several coverages from their base features
database product \[29\]: boundaries for the province, the Green and
White Areas, forest management units (FMUs), forest management agreement
areas (FMAAs), and Alberta Township Survey System (townships provide the
basis for legal land descriptions in Alberta).

### Alberta Geospatial Services

Alberta Geospatial Services is operated by the Alberta Ministry of
Environment and Parks \[31\]. We obtained road access coverages from
this database.

### National Forest Information System (NFIS)

The NFIS provides a set of spatial data layers representing forest
properties at a 250 m (6.25 ha) resolution for all of Canada \[32\]. We
used the merchantable volume, stand age, and species composition
attributes from these data layers.

Another product of NFIS is a set of spatial datasets derived from
satellite data \[33\]. The dataset used for this study shows the
location of timber harvest for each of the years 1985-2015. The dataset
is described in detail in Ref. \[34\]. It consists of a raster for
Canada at 30 m (0.09 ha) resolution indicating the year of harvest for
each cell.

The NFIS also provides a web-based individual tree biomass calculator
\[35\], which we used to calculate stem wood, stem bark, branch, and
foliage biomass for a tree based on province, ecozone, species, diameter
at breast height (DBH) and height.

### Natural Resources Canada

Ref. \[36\] describes the tree taper models developed for Canada. We use
these taper models to determine merchantable stemwood volumes and the
amount of forest residues (branches and tops) available from harvested
areas in each of the townships in each year.

### National Forestry Database (NFD)

The NFD \[38\] provided the timber harvest volumes and total harvest
areas from Alberta for the years 1990-2015. We used this information to
adjust the spatial NFIS volumes mentioned above to better reflect the
actual aggregated harvest volumes observed in Alberta.

### Forest management plans

The Alberta government requires FMA holders to develop a forest
management plan for the Forest Management Agreement Area (FMAA). The
forest management plans were used to obtain information on utilization
standards and average piece size of harvested trees for the FMAA \[39\].

### Agriculture and Agri-Food Canada

The boundaries of Canada's terrestrial ecozones can be found on
Agriculture and Agri-Food Canada's website \[40\]. Ecozone is an input
into the NFIS individual tree biomass calculator \[35\].

# Data aggregation and modeling

We quantify the spatial and temporal variability of the costs associated
with collecting and transporting the forest residues left following
stemwood harvest. The variability of costs is largely related to changes
in the transport distance from the residue collection areas to the
bioenergy plant.

Most of the effort expended on this study went into aggregating
township-level summaries of data for use by the model. Much of this data
processing was the manipulation of spatial data, which was done using
the QGIS geographic information system (GIS) software \[28\] and
add-ons. Data summaries and statistical analysis were done using R
\[41\] with Rstudio \[42\], and tidyverse \[43\].

We develop a model based on the assumption that forest residue
extractors follow a greedy optimization procedure: they take the
cheapest (closest) residue first, and stop when they have enough to
satisfy the annual biomass requirements for the three scales of
bioenergy plants: 200 Gg/a, 400 Gg/a, and 800 Gg/a. Township level
residue yield (Mg ha^-1^), cycle times (h), and harvest areas (ha) are
the three essential summary parameters used by the greedy optimization
mode

## Data aggregation

### Cycle time estimates

The provincial road network was divided into four classes: primary
highways, other paved roads, two-lane gravel roads, and one-lane gravel
or dirt roads. Loaded and unloaded travel speeds were assumed for each
road class, according to Table 1. These travel speeds are based on those
assumed by FPInnovations for the Dawson Creek Timber Supply Area in the
neighbouring province of British Columbia \[21\].

The harmonic mean of loaded and unloaded speeds was calculated using Eq.
1.

$$\bar{s_{h}} = \left( \frac{s_{l}^{- 1} + s_{u}^{- 1}}{2} \right)^{- 1}$$

Where $s_{l}$ is the loaded speed, and $s_{u}$ is the unloaded speed.
Use of harmonic mean allows us to calculate the correct cycle time: the
time required to travel from the mill to the collection site at the
cutblock, and back to the mill. This provides the basis for our
estimates of haul cost.

Figure 2 illustrates the road network in Alberta and estimates of cycle
time based on the average of loaded and unloaded speeds from Table 1.
The road network in the White Area of the province is very dense and
largely arranged as a grid defined by the Alberta Township Survey
System. Most of the roads in the White Area are public. The road network
in the Green Area is less dense and many of the roads are built and
maintained by resource industries (*e.g.,* forestry, petroleum, and
natural gas). The pattern of the road network is not as regular as in
the White Area.

\[ Figure 2 about here\]

One-way haul times based on the harmonic mean travel speed were
generated using the QGIS Network Analysis Toolbox 3 plug-in (QNEAT3)
\[44\], specifically its iso-area as interpolation (from point)
algorithm. In our case, we used the algorithm to determine the minimum
one-way travel time (using the harmonic mean of loaded and unloaded
speeds) along the road network from each of our centers to each cell of
a provincial level raster at a 200 m resolution. Off-road travel was
assumed to be at 5 km·h^-1^. The Dijkstra algorithm \[45\] is the basis
for travel time minimization in QNEAT3. Cycle time is double the one-way
haul time with an extra hour added for loading and unloading.

QGIS zonal statistics were used to calculate the median cycle time to
each township, from each of the three potential bioenergy plants. The
cycle time in Figure 2 was limited to 14 hours because, in Alberta,
drivers of commercial vehicles are not permitted to drive more than 13
hours in a 24-hour period and can spend no more than 14 hours on-duty,
including loading and unloading times.

### Biomass collection and transportation costs

All costs and prices used in this study are in Canadian dollars (\$). At
the time of writing (2021-11-05), the exchange rate between Canadian
(CAD) and US dollars (USD) was 0.8031 USD/CAD.

We assume that the biomass available for collection at a cutblock
includes the tops, branches, and foliage left at a roadside landing
after processing by a stroke delimber. The delimber is assumed to cut
the top of the log off at the diameter specified in the utilization
standard specific to the harvest area. Following Ref. \[46\], the cost
of collecting residues left behind by a roadside stroke delimber, which
includes pre-piling, chipping, road maintenance, supervision, and
loading (but does not consider transport) is 41.60 \$·Mg^-1^.

We assume that the residue will be transported from the forest using a
live floor chip van with 100 m^3^ capacity. The USDA Forest Service's
Forest Residue Transportation Costing Model \[47\] assumes a default
solid volume factor of 0.3 for biomass meaning that a 100 m^3^ capacity
trailer could hold the equivalent of 30 m^3^ of solid biomass. This
equates to 11.40 Mg of biomass using the specific gravity of lodgepole
pine wood and bark on a green volume basis (0.38) (Ref. \[48\]).

Timber Tracks produces a publication describing forestry equipment
hourly rates \[49\]. The rate reported for a tandem tractor with a
tandem trailer was 157.31 \$·hr^-1^. We assume that the tractor-trailer
combination used to haul biomass would cost a similar amount.

Therefore, the cost of transporting residual biomass was set to 13.80
\$·Mg^-1^·hr^-1^.

### Aggregation of harvested area

The areas harvested by township in 2009 according to Refs. \[33\] \[34\]
are shown in relationship to the three potential bioenergy plant
locations and the Green Area in Figure 1. Similar aggregated data were
created for each of the years 1990--2015. For each township, and each of
the years between 1990 and 2015, we store the area harvested (ha) for
use in our analysis. We can see from this map that a great deal of
timber harvest took place near our potential bioenergy plant locations
in 2009.

These data were created by using QGIS zonal statistics to sum the area
harvested in each township in each year based on the 30 m resolution
harvest data \[33\].

### Conversion of harvested area to harvest volume

Much detailed work was done to reflect the variability in utilization
standards between the FMUs, determination of characteristics for the
average broadleaf and the average needleleaf tree in each township, and
the spatial and temporal distribution of stemwood harvests. The
description of the procedures used for this are in the Appendix.

### Conversion of harvest volume to residue availability.

## Aggregation of summary data files

The information collected above was collated into a data set which had a
record for each combination of township, plant location, year, and
capacity. The fields in the data set were of township, plant location,
year, and capacity, cycle time, harvest area, and residue yield. This
summary data set is the input to the greedy optimization model

## Modeling

Our model assumes that residue extraction is opportunistic. The
historical data showing when and where forest managers have harvested
stemwood and our model assumes that residue extraction would occur
afterwards, in the same year as timber harvest. The forest manager's
decision to harvest stemwood is made independently of the biomass value
of the forest residue, and our cost estimates do not include a payment
to the forest manager for the residue. This assumption is appropriate,
given that biomass extractors provide a service to the forest managers,
who would otherwise have to incur the costs of piling and burning the
residue if it was not extracted.

Every township is associated with a cycle time required to transport
forest residue from the township to each of the three potential
bioenergy plant locations, for each of the 26 years in the study period.
For each plant location and year, the model examines all the townships
in the province that have a positive residual volume and begins the
creation of cumulative residual biomass curves starting with the lowest
cycle time first. These lists of cycle time and cumulative biomass
provide the data for the marginal cycle time curves, which can then be
converted to marginal cost curves using the hourly rate and payload for
forest residue transport trucks.

The model uses a greedy algorithm whereby the lowest cost residue for a
location is extracted first. The model is summarized using pseudocode in
Figure ?.

![](media/image1.png){width="5.15625in" height="3.7083333333333335in"}

##  {#section .list-paragraph}

# Results

## 

Our results assume that only one of the three potential bioenergy plants
would be built. If more than one plant was to be built, the residue
collection areas would overlap, thereby reducing the available residue
for the second plant. We will consider simultaneous location of more
than one plant in a subsequent study. Figures 5 and 6 display marginal
cycle time (h) and marginal costs (\$·Mg^-1^) for each of the 26 years
in the study period, and for the 3 potential plant locations. Curves for
1990, 2009, and 2005 are highlighted represented the years of minimum,
median, and maximum provincial harvest volume in the period. The
inter-year variation in marginal costs increases as the cumulative
amount of residue collected increases. We can also see that the relative
position of the years in terms of cost varies between the plant
locations: *e.g.,* the year 2005 was the year of highest provincial
harvest, but from a residue availability standpoint was not as good for
Hinton as it was for Edson and Whitecourt.

\[ Figure 5 about here\]

\[ Figure 6 about here\]

Figure 7 is another way of presenting the inter-annual variation in the
distribution of costs between the plant locations and assumed capacity:
the boxplots display the quartiles, and the minimum and maximum costs
require to supply a bioenergy plant of a given capacity at each of the
locations in each of the years. Here again, we can see the variability
increasing as plant capacity increases.

\[Figure 7 about here \]

Figure 8 shows the average cost (\$·Mg^-1^) for each potential location,
plant capacity, and year. Overall, the average costs in Edson and
Whitecourt are quite similar. Hinton is usually more expensive across
years and capacities. The differences become clearer at a capacity of
800 Gg·yr^-1^, for which Whitecourt is the lowest cost location for most
years.

\[Figure 8 about here \]

Table 2 presents summary statistics over the 26 years for the locations
and capacities. Average costs and the inter-annual variability of costs
increase with increasing capacity. The variation in costs for Hinton is
greater than for Whitecourt and Edson, particularly for the 800 Gg/a
capacity.

\[ Table 2 about here \]

Figure 9 shows the areas that would have been needed to supply a
bioenergy plant of varying capacities in Whitecourt in the year of
median harvest (2009) in relation to the proportional township area
harvested. Note that there is some residue being collected from the
White Area, but most is being collected from the Green Area.

\[ Figure 9 about here \]

Figure 10 compares the supply areas for 2005, 2009, and 1990 (high,
medium, and low harvest years, respectively) for Whitecourt. The area
required to supply the bioenergy plant increases greatly in low timber
harvest years, particularly for the 800 Gg·yr^-1^ capacity. Similar maps
have been produced for the other locations and all 26 years and are
available at the University of Alberta's Education and Research Archive
(ERA). **cite** Notice that the supply areas include areas outside the
Green Area with very little harvest. The contours indicate the cycle
time associated with each of the capacities. Because of the cost of
moving equipment such as the grinder and loader, it is unlikely that the
small, dispersed harvested areas would be accessed, but the volumes are
small enough that we ignore them. We have created animations of these
contour maps for all 26 years in the study period for the 3 locations
(available at ERA). These provide another way of visualizing the
inter-annual variation.

\[ Figure 10 about here \]

Whitecourt is lowest cost location for most years at all capacities.
There is a noticeable spike in costs 1999, which may be related to
salvage harvest following the 1998 Virginia Hills wildfire \[56\]. Note
that this spike also affects Hinton and Edson at 800 Gg·yr^-1^ capacity,
because they reach into the Whitecourt area. The average cost of
delivered forest residues are lower for the lower capacity plants, as
they do not need to collect residues from as far to meet their biomass
input requirements. In other words, the average cycle time is lower for
the lower capacity bioenergy plants, which results in a lower average
delivered residue cost.

Overall, the results show that there is a high level of interannual
variability in the costs of retrieving a fixed amount of biomass from
timber harvesting residues. The variability is related to the area and
location of harvest, which varies from year-to-year, and directly
impacts transportation costs.

# Conclusions

Our model demonstrates the spatial and temporal variation in the
availability of forest residue for bioenergy production. We did this
using the location of timber harvest areas in the Canadian province of
Alberta for the years 1990--2015. We conducted this study to answer
three questions critical to bioenergy investors and policy makers. We
now discuss our findings for each of these questions in turn.

***Which areas are best for locating a potential bioenergy plant when
considering residue collection and transport costs?*** We focus on the
area surrounding the towns of Hinton, Edson, and Whitecourt in
west-central Alberta. These three potential bioenergy plant locations
were chosen as they host several forest products companies and are
located near forest areas with substantial harvesting activity. For each
location, we conduct sensitivity analysis on three alternative bioenergy
plant capacities as measured by residue feedstock requirements: 200
Gg·yr^-1^, 400 Gg·yr^-1^, and 800 Gg·yr^-1^. For the 200 Gg·yr^-1^
capacity the three locations are almost indistinguishable in terms of
average delivered residue cost (\~ 87 \$·Mg^-1^). At 400 Gg·yr^-1^,
Edson is the low-cost location (98.6 \$·Mg^-1^). At 800 Gg·yr^-1^,
Whitecourt is clearly the low-cost location (122 \$·Mg^-1^), however, it
is important to note that the average cost of supplying an 800 Gg·yr^-1^
plant is over 40% greater than supplying a 200 Gg·yr^-1^ plant.

***How much residue volume is spread over what area?*** The residue
supply areas for the Whitecourt location shown in Figure 7 suggest that
if a 400 or 800 Gg·yr^-1^ bioenergy plant was to be constructed there
would only be enough available residue to construct one plant in our
study area. Whereas if a 200 Gg·yr^-1^ plant was deemed more viable, it
is possible that two plants could be constructed in the study area --
one in Whitecourt and one in Hinton. However, we will leave this
question to a subsequent study.

This makes for an interesting investment choice, since a single 800
Gg·yr^-1^ bioenergy plant would likely face an average delivered residue
cost that is over 40% higher than the cost for the 200 Gg·yr^-1^ plants.
Recall from above that 200 Gg·yr^-1^ is intended to represent a pellet
plant and 800 Gg·yr^-1^ is more representative of a biorefinery. Given
that dried and compacted pellets are cheaper to transport than moist and
bulky residues, it could be more viable to first transport residues to
pellet plants, and then transport the pellets from multiple pellet
plants to a biorefinery. The optimal result of this analysis will depend
on the cost of pellet production relative to the cost savings
(transportation and production) to the biorefinery from using pellets
instead of residues. Although outside the scope of this work, we plan to
conduct this analysis in the future.

***Would residue volumes be consistently available on a year-to-year
basis?*** Given that a forest residue-based bioenergy plant is dependent
on forest harvesting, transportation costs increase (trucks must travel
further to meet the feedstock capacity requirement) in years when
harvesting levels are low or harvest areas are further from the
bioenergy plant. Our results showed considerable variability in both
marginal and average residue extraction costs from year-to-year for the
400 and 800 Gg·yr^-1^ capacities, suggesting that residue cost
variability is an important source of risk for medium and large
bioenergy plants. Our finding that the cost variability is lower for the
200 Gg·yr^-1^ might once again suggest that a 200 Gg·yr^-1^ is a more
appropriate scale for a forest residue-based bioenergy plant in Alberta.

Our conclusions are based on an analysis of historical harvest levels,
which might not be indicative of the future. However, we feel confident
that our findings will be relevant into the future largely because
public forest in Alberta is managed according to the sustained yield
paradigm, which involves the determination of stable allowable annual
cuts over a 200-year planning period. For evidence of this stability,
Figure 2 shows that harvest volume rises until the year 1994, which
coincides with the last of the major forest product mills in Alberta
being constructed in the early-1990s, and after this date harvest levels
flatten out and become fairly stable. Transportation costs can also be
expected to be fairly stable in the future because long-term forest
management plans in Alberta require a balanced log haul distance. In
other words, the Alberta government would not approve a plan whereby
forestry firms concentrate harvesting operations such that haul
distances were to significantly increase in the future. Hence, it is
reasonable to assume that in the future, both average annual harvest
levels and average annual transport distances -- and thereby average
annual forest residue costs -- will be close to the historical values
from our analysis.

Although we are confident that our conclusions will hold in the future
over the long-term, it is nonetheless possible that over the long
operating life of a forest residue-based bioenergy plant, there could be
significant events that could impact residue availability over the
short-term -- *e.g.*, bad weather which prevents forest harvest and/or
residue extraction, temporary mill shutdowns, and forest fires. This
possibility makes it important for a forest residue-based bioenergy
plant to have a comprehensive feedstock risk management program. If the
bioenergy conversion technology allows it, this risk management program
could consider creating a portfolio of different sources of feedstock.
Such a portfolio approach might consider locating the bioenergy plant
where it could also access other types of feedstock -- such as
agricultural residues and/or purpose-grown feedstocks -- during periods
when availability of forest residues is low. This approach is sometimes
called "derisking" in the feedstock supply literature, whereby a supply
of "buffer" feedstock is contracted to keep the bioenergy plant running
during years when normal residue supplies are low \[23\]. Ref. \[57\]
discusses the amount and variability of production of agricultural
residue in Alberta; and ref \[Shoostarian et al 2018\] discusses the
financial viability of establishing fast-growing hybrid poplar
plantations in Alberta for use as a purpose-grown bioenergy feedstock.

When considering portfolios of different bioenergy feedstocks, an
important factor will be the average delivered cost for each feedstock.
Our estimates for average delivered forest residue costs range from
approximately 87 \$·Mg^-1^ for the 200 Gg·yr^-1^ capacity to
approximately 122 \$·Mg^-1^ for the 800 Gg·yr^-1^ capacity. Previous
studies have estimated the cost of agricultural residue (straw) to fall
within this range, with a plant gate cost in Alberta of 95.33 \$·Mg^-1^
for a plant capacity of 150 Gg·yr^-1^ \[Sultana et al 2010\]. Given how
close the cost of agricultural residues is to the cost of forest
residues, these two feedstocks could be a good fit for a potential
feedstock portfolio, assuming the bioenergy plant could use both types
of feedstock. However, a previous study estimated that purpose-grown
hybrid poplar in Alberta has a much higher delivered cost of 202
\$·Mg^-1^ (125 \$·Mg^-1^ to grow the trees, plus 77 \$·Mg^-1^ to
harvest, grind, and transport the trees to the bioenergy plant)
\[Shooshtarian et al 2018\], suggesting that hybrid poplar would have a
more limited role (if used at all) within a feedstock portfolio. In the
future we hope to build upon this research by optimizing the allocation
of different feedstocks within a bioenergy feedstock portfolio.

Although forest residues are utilized for bioenergy in other parts of
the world, they are still largely considered a waste product in Canada.
Given that feedstock costs are critical to the economic viability of any
bioenergy project, in order for forest residues to be extracted in
Canada we will likely need to see improvements in bioenergy production
technology and/or increases in future biofuel prices. Governments can
play a role in improving bioenergy production technology through
investments research and development, and can impact future biofuel
prices through public policy.

On the Canadian public policy front, governments have set renewable fuel
mandates and subsidize production of bioethanol and biodiesel, thereby
impacting future biofuel prices \[Campbell et al., 2016\]. The
continuation of such subsidies will likely be an important factor for
the emergence of a second-generation or advanced biofuel sector in
Canada. Another factor that could provide important incentives for
advanced biofuels is the Government of Canada\'s Clean Fuel Standard,
which is proposed to come into force in 2022, and which will require
transportation fuel suppliers to lower the carbon intensity of their
fuels \[Government of Canada, 2020\]. Although these policies are
focused more on liquid biofuels, there are also new policies which could
promote burning pellets. Indeed, the Government of Canada recently
implemented carbon pricing regulations \[CanLII 2018\] which could
provide incentives to use forest residue pellets in heat and power
plants instead of coal and natural gas. In this case, since the pellets
would likely generate lower greenhouse gas emissions than the fossil
fuels they displace, the heat and power produced would thereby incur
lower carbon taxes, thus improving the financial returns to using
pellets.

# Data availability

The data compiled to the township level are currently available on
github(<https://github.com/gwa-uab/histressup/tree/main/data>). Before
publication it will be placed on ERA with a DOI.

# Acknowledgements

This research was supported by funding from the Canada First Research
Excellence Fund as part of the University of Alberta's Future Energy
Systems research initiative (Project \# CFREF-2015-00001).

Dennis Gray contributed to data compilation.

This work started as an extension to Irene Onyango's Master of
Agriculture research.

We work with a group of talented people. Thanks to Marty Luckert, Feng
Qiu, Grant Hauer, and Wenbei Zhang for helpful discussion.

# References

Campbell, H. Anderson, J. and M.K. Luckert. 2016. Public Policies and
Canadian Ethanol Production: History and Future Prospects for an
Emerging Industry. *Biofuels* January, 1-20.

CanLII. 2018. Greenhouse Gas Pollution Pricing Act, S.C. 2018. c. 12, s.
186. Canadian Legal Information Institute (CanLII), Ottawa, Ont.
Available from
https://www.canlii.org/en/ca/laws/stat/sc-2018-c-12-s-186/139160/sc-2018-c-12-s-
186.html \[accessed 11 August 2020\].

Government of Canada. (2020). Clean fuel standard (revised april 24,

2020). Available at: https://www.canada.ca/en/environment-
climate-change/services/managing-pollution/
energyproduction/fuel-regulations/clean-fuel-standard.html.

Shooshtarian, A., Anderson, J.A., Armstrong, G.W., and Luckert, M.K.
2018. Growing hybrid poplar in western Canada for use as a biofuel
feedstock: a financial analysis of coppice and single-stem management.
Biomass Bioenergy, 113: 45--54. doi:10.1016/j.biombioe.2018.02.020.

Sultana A, Kumar A, Harfield D. Development of agri-pellet production
cost and optimum size. Bioresour Technol 2010;101(14):5609--21.

\[1\] Lane J. [The silver in Silva: The story of Steeper Energy and
SGF's \$59M advanced biofuels project in
Norway](https://www.biofuelsdigest.com/bdigest/2018/01/16/the-silver-in-silva-the-story-of-steeper-energys-59m-advanced-biofuels-project-in-norway/).
Biofuels Digest 2018.

\[2\] Watters A. [Wood pellets for heat and
power](https://apps.fas.usda.gov/newgainapi/api/Report/DownloadReportByFileName?fileName=Wood%20Pellets%20for%20Heat%20and%20Power%20%20_Ottawa_Canada_07-08-2021).
United States Department of Agriculture. Foreign Agricultural Service;
2021.

\[3\] Sterman JD, Siegel L, Rooney-Varga JN. Does replacing coal with
wood lower CO $_{\text{2}}$ emissions? Dynamic lifecycle analysis of
wood bioenergy. Environmental Research Letters 2018;13:015007.
doi:[10.1088/1748-9326/aaa512](https://doi.org/10.1088/1748-9326/aaa512).

\[4\] Dymond CC, Titus BD, Stinson G, Kurz WA. Future quantities and
spatial distribution of harvesting residue and dead wood from natural
disturbances in Canada. Forest Ecology and Management 2010;260:181--92.
doi:[10.1016/j.foreco.2010.04.015](https://doi.org/10.1016/j.foreco.2010.04.015).

\[5\] Shabani N, Akhtari S, Sowlati T. Value chain optimization of
forest biomass for bioenergy production: A review. Renewable and
Sustainable Energy Reviews 2013;23:299--311.
doi:[10.1016/j.rser.2013.03.005](https://doi.org/10.1016/j.rser.2013.03.005).

\[6\] Kumar A, Cameron JB, Flynn PC. Biomass power cost and optimum
plant size in western Canada. Biomass and Bioenergy 2003:20.

\[7\] Rummer B. Moving Biomass: Technology, Economics, and Possibilities
2007:69.

\[8\] Aulakh J. Implementing residue chippers on harvesting operations
for biomass recovery. Master's thesis. Auburn University, 2008.

\[9\] de Avillez R. An Analysis of Productivity Trends in the Canadian
Forest Products Sector,. International Productivity Monitor
2014;27:79--100.

\[10\] Spelter H, McKeever D, Toth D. Profile 2009: Softwood Sawmills in
the United States and Canada. Madison WI, USA: U.S. Department of
Agriculture, Forest Service, Forest Products Laboratory; 2009.

\[11\] Niquidet K, Friesen D. [Bioenergy potential from wood residuals
in Alberta: A positive mathematical programming
approach](https://login.ezproxy.library.ualberta.ca/login?url=https://search.ebscohost.com/login.aspx?direct=true&db=edscal&AN=edscal.29130693&site=eds-live&scope=site).
Canadian Journal of Forest Research (Print) 2014;44:1586--94.

\[12\] Stephen JD, Sokhansanj S, Bi X, Sowlati T, Kloeck T,
Townley-Smith L, et al. Analysis of biomass feedstock availability and
variability for the Peace River region of Alberta, Canada. Biosystems
Engineering 2010;105:103--11.
doi:[10.1016/j.biosystemseng.2009.09.019](https://doi.org/10.1016/j.biosystemseng.2009.09.019).

\[13\] Folsland Bolkesjø T, Trømborg E, Solberg B. Bioenergy from the
forest sector: Economic potential and interactions with timber and
forest products markets in Norway. Scandinavian Journal of Forest
Research 2006;21:175--85.
doi:[10.1080/02827580600591216](https://doi.org/10.1080/02827580600591216).

\[14\] Buongiorno J, Raunikar R, Zhu S. Consequences of increasing
bioenergy demand on wood and forests: An application of the Global
Forest Products Model. Journal of Forest Economics 2011;17:214--29.
doi:[10.1016/j.jfe.2011.02.008](https://doi.org/10.1016/j.jfe.2011.02.008).

\[15\] Galik CS, Abt R, Wu Y. Forest Biomass Supply in the Southeastern
United States---Implications for Industrial Roundwood and Bioenergy
Production. Journal of Forestry 2009;107:69--77.
doi:[10.1093/jof/107.2.69](https://doi.org/10.1093/jof/107.2.69).

\[16\] Cambero C, Sowlati T, Marinescu M, Röser D. Strategic
optimization of forest residues to bioenergy and biofuel supply chain.
International Journal of Energy Research 2015;39:439--52.
doi:[10.1002/er.3233](https://doi.org/10.1002/er.3233).

\[17\] Chen C-W, Fan Y. Bioethanol supply chain system planning under
supply and demand uncertainties. Transportation Research Part E:
Logistics and Transportation Review 2012;48:150--64.
doi:[10.1016/j.tre.2011.08.004](https://doi.org/10.1016/j.tre.2011.08.004).

\[18\] Papapostolou C, Kondili E, Kaldellis JK. Development and
implementation of an optimisation model for biofuels supply chain.
Energy 2011;36:6019--26.
doi:[10.1016/j.energy.2011.08.013](https://doi.org/10.1016/j.energy.2011.08.013).

\[19\] Johnson DM, Jenkins TL, Zhang F. Methods for optimally locating a
forest biomass-to-biofuel facility. Biofuels 2012;3:489--503.
doi:[10.4155/bfs.12.34](https://doi.org/10.4155/bfs.12.34).

\[20\] Yemshanov D, McKenney DW, Fraleigh S, McConkey B, Huffman T,
Smith S. Cost estimates of post harvest forest biomass supply for
Canada. Biomass & Bioenergy 2014;69:80--94.
doi:[10.1016/j.biombioe.2014.07.002](https://doi.org/10.1016/j.biombioe.2014.07.002).

\[21\] Blackburn K. [Fort St. John timber supply area biomass
availability
estimation](https://library.fpinnovations.ca/media/WP/TR2020N61.pdf).
FPInnovations; 2020.

\[22\] Swinton SM, Dulys F, Klammer SSH. Why Biomass Residue Is Not as
Plentiful as It Looks: Case Study on Economic Supply of Logging
Residues. Applied Economic Perspectives and Policy 2021;43:1003--25.
doi:[10.1002/aepp.13067](https://doi.org/10.1002/aepp.13067).

\[23\] Golecha R, Gan J. Effects of corn stover year-to-year supply
variability and market structure on biomass utilization and cost.
Renewable and Sustainable Energy Reviews 2016;57:34--44.
doi:[10.1016/j.rser.2015.12.075](https://doi.org/10.1016/j.rser.2015.12.075).

\[24\] Shooshtarian A, Anderson JA, Armstrong GW, Luckert MK. Policies
for establishing hybrid poplar plantations on private and public lands
in western Canada for bioethanol feedstock: A forest-level financial
analysis. Canadian Journal of Forest Research 2021;51:1664--77.
doi:[10.1139/cjfr-2020-0399](https://doi.org/10.1139/cjfr-2020-0399).

\[25\] Anderson JA, Armstrong GW, Luckert MK, Adamowicz WL. Optimal
zoning of forested land considering the contribution of exotic
plantations 2012:14.

\[26\] Alberta. [Forest management units
\[map\]](https://open.alberta.ca/publications/forest-management-units-map)
2021.

\[27\] Alberta. [Forest management agreement boundaries
\[map\]](https://open.alberta.ca/publications/forest-management-agreement-boundaries-map)
2021.

\[28\] QGIS.org. [QGIS geographic information
system](http://www.qgis.org) 2021.

\[29\] Altalis. [Base features](https://www.altalis.com/map;gid=114)
2021.

\[30\] Alberta Land Surveyors' Association. [Alberta township
system](https://www.alsa.ab.ca/Surveys-in-Alberta/Albertas-Township-System)
2021.

\[31\] Alberta. [Alberta Geospatial
Services](https://maps.alberta.ca/genesis/rest/services/Access) 2021.

\[32\] Beaudoin A, Bernier PY, Villemaire P, Guindon L, Guo XJ.
\[Dataset\] Species composition, forest properties and land cover types
across Canada's forests at 250m resolution for 2001 and 2011. 2017.
doi:[10.23687/ec9e2659-1c29-4ddb-87a2-6aced147a990](https://doi.org/10.23687/ec9e2659-1c29-4ddb-87a2-6aced147a990).

\[33\] National Forest Information System. [Satellite forest information
for Canada](https://opendata.nfis.org/mapserver/nfis-change_eng.html)
2021.

\[34\] Hermosilla T, Wulder MA, White JC, Coops NC, Hobart GW, Campbell
LB. Mass data processing of time series landsat imagery: Pixels to data
products for forest monitoring. International Journal of Digital Earth
2016;9:1035--54.
doi:[10.1080/17538947.2016.1187673](https://doi.org/10.1080/17538947.2016.1187673).

\[35\] National Forest Information System. [Individual tree biomass
calculator](https://nfi.nfis.org/en/biomass_calc) 2021.

\[36\] Ung C-H, Guo XJ, Fortin M. Canadian national taper models. The
Forestry Chronicle 2013;89:211--24.

\[37\] Natural Resources Canada. [Wood volume calculation using taper
models](https://apps-scf-cfs.rncan.gc.ca/calc/en/volume-calculator)
2015.

\[38\] Canadian Council of Forest Ministers. [National forestry
database: harvest](http://nfdp.ccfm.org/en/data/harvest.php) 2021.

\[39\] Alberta. [Forest management
plans](https://www.alberta.ca/forest-management-plans.aspx) 2021.

\[40\] Canada. [A national ecological framework for
Canada](https://sis.agr.gc.ca/cansis/nsdb/ecostrat/gis_data.html) 2017.

\[41\] R Core Team. [R: A language and environment for statistical
computing](https://www.R-project.org/). Vienna, Austria: R Foundation
for Statistical Computing; 2021.

\[42\] RStudio Team. [RStudio: Integrated development environment for
R](http://www.rstudio.com/). Boston, MA: RStudio, PBC; 2021.

\[43\] Wickham H, Averick M, Bryan J, Chang W, McGowan LD, François R,
et al. Welcome to the tidyverse. Journal of Open Source Software
2019;4:1686.
doi:[10.21105/joss.01686](https://doi.org/10.21105/joss.01686).

\[44\] Raffler C. [QNEAT3 - QGIS network analysis toolbox
3](https://root676.github.io/) 2018.

\[45\] Dijkstra EW. A note on two problems in connexion with graphs.
Numerische Mathematik 1959;1:269--71.

\[46\] Röser D. [Biomass availability and supply for co-firing projects
in
Alberta](https://docplayer.net/19516550-Biomass-availability-and-supply-for-co-firing-projects-in-alberta-dominik-roser-ph-d.html)
2013.

\[47\] Rummer B. [Forest residues transportation costing model
(FoRTSv5)](https://srs.fs.usda.gov/forestops/tools/files/FoRTSOverview.pdf)
2005.

\[48\] Miles PD, Smith WB. Specific gravity and other properties of wood
and bark for 156 tree species found in North America. United States
Department of Agriculture. Forest Service. Northern Research Station;
2009.

\[49\] Timber Tracks. [Forestry equipment hourly rates:
2020](http://timbertracks.ca) 2020.

\[50\] Bettinger P, Boston K, Siry JP, Grebner DL. Forest Management and
Planning. 2nd ed. Elsevier; 2017.
doi:[10.1016/B978-0-12-809476-1.00002-3](https://doi.org/10.1016/B978-0-12-809476-1.00002-3).

\[51\] Lambert MC, Ung CH, Raulier F. Canadian national tree aboveground
biomass equations. Canadian Journal of Forest Research
2005;35:1996--2018.
doi:[10.1139/x05-112](https://doi.org/10.1139/x05-112).

\[52\] Boudewyn P, Song X, Magnussen S, Gillis MD. Model-based,
volume-to-biomass conversion for forested and vegetated land in Canada.
Victoria, BC, Canada: Natural Resources Canada, Canadian Forest Service,
Pacific Forestry Centre; 2007.

\[53\] Alberta. [Alberta timber harvest planning and operating ground
rules framework for
renewal](https://open.alberta.ca/publications/alberta-timber-harvest-planning-and-operating-ground-rules-framework-for-renewal-2016)
2016.

\[54\] Canadian Council of Forest Ministers. National forestry
database - Canada (version 2.0.0) \[data set\] 2020.
doi:[10.5281/zenodo.3690046](https://doi.org/10.5281/zenodo.3690046).

\[55\] Peltola S, Kilpeläinen H, Asikainen A. Recovery rates of logging
residue harvesting in Norway spruce (Picea abies (L.) Karsten) dominated
stands. Biomass & Bioenergy 2011:1545--51.
doi:[10.1016/j.biombioe.2010.12.032](https://doi.org/10.1016/j.biombioe.2010.12.032).

\[56\] Prepas EE, Burke J, Allen E, Holst M, Gibson K, Millions D. [The
Virginia Hills fire of 1998 and the opportunity to evaluate the impact
of fire on water quality in upland stands on the boreal plain: The
Virginia Hills fire : A once-in-a-lifetime opportunity to evaluate the
impact of natural versus forestry-related disturbance on water quality,
contaminants and biodiversity in surface waters on the boreal
plain](https://sfmn.ualberta.ca/sfmn/wp-content/uploads/sites/83/2018/09/PR_2001-17.pdf?ver=2016-02-25-091420-337).
Edmonton: Sustainable Forest Management Network; 2001.

\[57\] Zheng Y, Doll CA, Qiu F, Anderson JA, Hauer G, Luckert MK.
Potential ethanol biorefinery sites based on agricultural residues in
Alberta, Canada: A GIS approach with feedstock variability. Biosystems
Engineering 2021;204:223--34.
doi:[10.1016/j.biosystemseng.2021.01.010](https://doi.org/10.1016/j.biosystemseng.2021.01.010)

Appendix: Development of residual biomass estimates by township

## The volume adjustment factor

Figure 3 shows the actual harvest volume for Alberta between 1990 and
2015 using data from the national forestry database \[38\] compared to
estimated harvest volumes calculated from harvest area and our
calculated harvest volume per hectare.

\[ Figure 3 about here \]

The estimated harvest volume was calculated using the harvest areas
identified in the 30 m data, and the adjusted harvest volume per hectare
determined for each township. We are satisfied that, at the provincial
level, the adjustment factor produces estimates of harvest volume is
similar to that recorded in the national forestry database and is
appropriate for use for this study.

The adjustment factor was calculated by dividing the average harvest
volume from the actual harvest volume by the from our estimated harvest
volumes. The calculated value for the adjustment factor was 2.77. We
multiplied the estimated harvest volumes for each township by the
adjustment factor, to provide township-level harvest volumes that would
be compatible with the province-level harvest volumes from the national
forestry database.

The left panel of Figure 4 shows the spatial distribution of
merchantable volume by township. The region surrounding the potential
bioenergy plant locations contains high volume per hectare. The right
panel shows the calculated merchantable volume per hectare for harvested
area in each of the townships.

\[ Figure 4 about here\]

## Step ?. Use NFD data to adjust harvest volume

## Step ?. Conversion of adjusted harvest volume to residue yield 

Development of the residue yields required the most effort. Utilization
standards, the residual biomass of the average needleleaf and broadleaf
tree, and spatial variability in residue yields need to be accounted
for. The procedures used are described in detail in the Appendix.

For each township, we calculate the number of stems by dividing the
adjusted volume per hectare by the average piece size for both
needleleaf and broadleaf trees. We assume that for the types of stands
being harvested that the stem count per hectare for the 13/+7
utilization standard is close to the stem count based on the FMU
utilization standard. We multiply the stem count by the average tree
residual biomass. We assume an average recovery factor of 0.624
following what Peltola *et al.* \[55\] determined for Finland,
recognizing that some of the residual biomass will be unrecoverable for
reasons related to ecological sustainability and technical
accessibility. Together this gives us an estimate of the average residue
yield when a hectare of a stand in a particular township is harvested.
