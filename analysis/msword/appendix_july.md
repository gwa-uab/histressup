We include in this appendix details on the creation of some of the model
parameters. This information important to document but
the fine details might distract the reader from the story in
the main document.

# Utilization standards

For administrative purposes, the Green Area is divided into Forest
Management Units (FMUs). The province enters into long term agreements
with forest products companies giving the companies the rights to timber
harvest and the responsibility to manage the forest sustainably. These
agreements are called Forest Management Agreements, and the areas under
agreement are called Forest Management Agreement Areas (FMAAs). For the
most part, the boundaries of the FMAAs are coincident with FMU
boundaries, except for the Alberta-Pacific FMAA in eastern Alberta which
comprises 12 FMUs. Maps of the FMUs \[26\] and the FMAAs \[27\] can be
found on the Government of Alberta website. The FMU and FMAA boundaries
are used to assign utilization standards (discussed here) and average
piece size (discussed in the next section).

Many forest products companies operate in Alberta, and the details of
their agreements with the government with respect to forest management
differ. Some companies have harvesting rights to just the needleleaf
species, others have rights to just the broadleaf species, and some have
rights to both needleleaf and broadleaf.

Utilization standards in Alberta are specified based on stump height,
minimum stump diameter (outside bark), and minimum log length to a
specified top diameter (inside bark). Utilization standards vary by FMU.
Stump heights used in Alberta are 15 and 30 cm; stump diameters are 13
or 15 cm; top diameters range between 7 and 12 cm; and minimum log
lengths range between 2.44 and 4.88 m. These utilization standards are
necessary to relate volumes calculated to the 13+/7 cm standard for the
National Forest Inventory to the harvest volumes reported by the
companies. Perhaps most importantly, the minimum top diameter will
influence the volume of residue left in the forest corresponding to the
tops of trees.

Based on the FMU boundaries, we assigned a needleleaf and broadleaf
utilization standard to each township.

# Characteristics of the average tree

## Piece size

FMA holders are required by Alberta to project average piece size of
harvested trees in the detailed forest management plans (DMFPs) for
their FMAAs. We use these piece sizes projected for the first period of
the DMFP. They range from 0.110 to 0.599 m^3^ per tree. We used the
piece size reported for the first 5-year period of the 200-year planning
horizon. For those areas where piece size was not reported we assumed an
average piece size of 0.278 m^3^ for needleleaf trees and 0.264 m^3^ for
broadleaf trees. These are the average of the values reported in the
forest management plans. These values are based on the utilization
standards used on the FMA. Based on the FMU boundaries we assign an
average piece size for broadleaf and needleleaf trees to each township.

## Taper functions

Ref. \[36\] presents taper models and the associated coefficients for
the tree species found in Canada. These taper models can be used to find
the diameter at any point along the main bole of a tree given species
and diameter at breast height (DBH). DBH is a commonly used tree
measurement and is the diameter of the tree measured at 1.3 m above
ground level, in most jurisdictions, including Alberta. It is
straightforward to determine cross-sectional area of the tree at any
height. Integrating this area function will yield volume between any two
heights.

Ref. \[36\] describes a one-parameter model which is useful when both
tree DBH and height measurements are available.

$$d\left( d_{b},h \right) = \left( d_{b}^{2}\frac{H - h}{H - 1.3}\left( \frac{h}{1.3} \right)^{2 - \beta_{2}} \right)^{- 2}$$

where $d$ is the diameter (cm) at height $h$ (m), and $d_{b}$ is the
diameter at breast height (1.3 m above ground level), and $H$ is tree
height (m).

For those cases where height measurements are unavailable, they present
a 3-parameter model, where H is replaced with
$\beta_{0}d_{b}^{\beta_{1}}$.

$$d\left( d_{b},h \right) = \left( d_{b}^{2}\frac{\beta_{0}d_{b}^{\beta_{1}}}{\beta_{0}d_{b}^{\beta_{1}} - 1.3}\left( \frac{h}{1.3} \right)^{2 - \beta_{2}} \right)^{- 2}$$

where $d$ is the diameter (cm) at height $h$ (m), and $d_{b}$ is the
diameter at breast height (1.3 m above ground level)

Implicit in this equation is an equation for tree height

$$H\left( d_{b} \right) = \beta_{0}d_{b}^{\beta_{1}}$$

which we will use to create input for the biomass calculator

The radius of the tree (m) can be calculated from $d_{b}$ and $h$ using

$$r\left( d_{b},h \right) = \frac{d\left( d_{b},h \right)}{200}$$

where the constant 200 is used to convert a diameter (cm) to a radius
(m).

$$a\left( d_{b},h \right) = \pi r\left( d_{b},h \right)^{2}$$

The volume of the merchantable log between stump height $h_{s}$ and the
height of the tree at the minimum top diameter ($h_{t}$) can then be
calculated through integration.

$$v\left( d_{b},h_{s},h_{t} \right) = \int_{h_{s}}^{h_{t}}\pi r\left( d_{b},h \right)^{2}dh$$

Ref. \[36\] also presents a simple linear model relating outside bark to
inside bark diameter. The taper function is for outside bark diameter,
but piece sizes are reported as inside bark volume.

## DBH and height estimates

From information collected from forest management plans we have an
estimate of average piece size calculated to a specified utilization
standard for every combination of township and FMU, for both needleleaf
and broadleaf trees. We used a binary search procedure to find DBH and
height of the "average" broadleaf and needleleaf tree in each township
based on the FMU utilization standard. An average piece size to the
13+/7 utilization standard was also calculated by integrating the
cross-sectional area function using the appropriate limits.

Most forest stands in Alberta are even-aged, as the majority originated
following stand-replacing fire or clearcut harvest. It is common to
describe stands using a distribution of diameters at breast height
(DBH). The diameter distribution for an even-aged stand is usually
approximately normal \[50\]. We use this to justify the use of the
average tree.

Using these equations, we can calculate wood volumes and bark volumes
between any two heights along the tree stem. We calculate the
proportions of total tree and bark volumes in the top of the tree. We
use this volume proportion later to calculate biomass of stemwood and
bark in the top.

The merchantable volume for the average tree is calculated to both the
13+/7 cm utilization standard and the utilization standard specified for
the FMU. The 13+/7 cm utilization standard is used to calculate the
stand density (stems/ha) for both the needleleaf and the broadleaf
species. The FMU utilization standard is used to calculate the volume
adjustment factor.

## Individual tree residual biomass.

Canada's National Forest Inventory website provides a useful individual
tree biomass calculator \[35\]. It calculates the biomass of tree
components (stem wood, stem bark, branches, foliage, and total) using
province/territory, terrestrial ecozone, species, DBH, and tree height
as input. It is possible to upload a file to the calculator so that the
biomass of many trees can be calculated at once. The calculator is based
on Ref. \[51\].

We created an input file for the NFIS biomass calculator that included
all 125 unique combinations of species, ecozone, DBH, and height
assigned to the townships in section \@ref(dbhht). (**Create
cross-references**).

We assume that the residual biomass comes from the stem wood and stem
bark from the tops of the harvested trees, and the branches and foliage
removed by the stroke delimber. The residual biomass from the tops is
calculated using the total biomass of stem wood and stem bark adjusted
by the volume proportions calculated as described above.

# Spatial variability in residual biomass production

There is considerable spatial variability in the amount of timber
harvest residues available for biomass collection. The variability
relates to the distribution of harvested species and age classes across
the landscape, to the timber harvesting practices of different
operators, and to other factors. We used the 250 m resolution raster
maps of Canada's forest attributes for 2011 from Natural Resources
Canada \[32\] to retrieve information on species composition, age
classes, and merchantable volume. The data were clipped to the Alberta
boundary. Merchantable volumes for Alberta in this dataset were compiled
to the 13+/7 cm utilization standard, meaning that stump height for each
merchantable tree was assumed to be 30 cm, that stump diameter (outside
bark) was at least 13 cm, and that the length of the log to a 7 cm
inside bark diameter was at least 4.88 m. This is one of the utilization
standards used in Alberta and was the one used for Alberta data in
Canada's National Forest Inventory (NFI henceforth) \[52\].

Forestry companies are selective in the stands they harvest. Some stands
will be comprised of undesirable species. The most commercially
important needleleaf species in Alberta are white spruce (*Picea glauca*
(Moench) Voss), lodgepole pine (*Pinus contorta* var. *latifolia*
Engelm.) and jack pine (*Pinus banksiana* Lamb.). Trembling aspen
(*Populus tremuloides* Michx.) is the most commercially important
broadleaf species. Some stands may have too little volume to be worth
harvesting. Some stands may be too young. We selected cells that
contained at least 50 m^3^·ha^-1^ of merchantable volume, as that
corresponds with merchantability limits specified in Alberta \[53\]. We
filtered out cells with more than 50% crown closure of larch (*Larix
spp.* Mill.) and birch (*Betula spp.* L.) combined, as those genera are
rarely harvested at a commercial scale in Alberta. We filtered out cells
with stand age less than 80 years as it is unusual to harvest stands
younger than that in Alberta. QGIS zonal statistics were used to average
the merchantable volume per ha of the merchantable cells in each
township.

Then for each township, we determined the most common needleleaf and
broadleaf species, and calculated the average volume per hectare of
needleleaf and broadleaf these harvestable stands.

These average volumes are still considerably less than the average
volume per hectare harvested in Alberta, indicating that the forestry
companies are even more selective about timber harvest than our simple
filter rules suggest.

Based on data retrieved from the National Forestry Database, the average
harvest volume in Alberta between 1990 and 2015 was 277.8 m^3^·ha^-1^
\[54\]. The average township volume after the filter was applied was
100.3 m^3^·ha^-1^. We used a harvest volume adjustment factor of 2.77 to
make the volumes we calculated comparable to the average harvest volume
(m^3^·ha^-1^) for Alberta.

References
