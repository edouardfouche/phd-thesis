# PhD Thesis 

In this repository, you will find the sources for the doctoral dissertation "Estimating Dependency, Monitoring and Knowledge Discovery in High-Dimensional Data Streams" written by [Edouard Fouché](https://edouardfouche.com) and accepted at the [KIT Department of Informatics](https://www.informatik.kit.edu). The dissertation was defended on 15 July 2020; [here](https://github.com/edouardfouche/phd-defense) are the sources for the defense slides. Here is a very short abstract for the dissertation: 

> Data Mining – known as the process of extracting knowledge from massive data sets – leads to phenomenal impacts on our society, and now affects nearly every aspect of our lives: from the layout in our local grocery store to the ads and product recommendations we receive, the availability of treatments for common diseases, the prevention of crime, or the efficiency of industrial production processes.

> However, Data Mining remains difficult when (1) data is high-dimensional, i.e., has many attributes, and when (2) data comes as a stream. While previous work addresses high-dimensional data sets and data streams to some extent, the intersection of both has received much less attention. Nevertheless, extracting knowledge in this setting is advantageous for many industrial applications: identifying patterns from high-dimensional data streams in real-time may lead to larger production volumes, or reduce operational costs. 

> This dissertation bridges this gap by proposing new algorithms to estimate and monitor dependency. We show that our new methods help to mine patterns, such as outliers, more efficiently and effectively in high-dimensional data streams. We support our algorithmic contributions with theoretical guarantees, as well as extensive experiments against both synthetic and real-world use cases. Overall, this dissertation establishes fundamental tools for Data Mining, which help with many applications in the industry, e.g., anomaly detection, or predictive maintenance. To facilitate the application of our results and future research, we publicly release our implementations, experiments, and benchmark data via open-source platforms.

The dissertation was officially published [here](https://doi.org/10.5445/IR/1000127232).

We release the sources under the Creative Commons Attribution-ShareAlike 4.0 International License (CC BY-SA 4.0). See the [LICENSE](LICENSE.txt) file. The author of the template is [Dr.-Ing. Erik Burger](https://sdq.ipd.kit.edu/people/erik-burger/) (burger@kit.edu). 

The pdf produced here is archivable (PDF/A-1a)  with complete compliance with the ISO 19005-1 [requirements](https://www.loc.gov/preservation/digital/formats/fdd/fdd000251.shtml).

Most figures are created with the extensible drawing editor [Ipe](http://ipe.otfried.org/), version 7.2.7. Some figures are created via Jupyter notebooks. See the `/partX-figures` folders for details. We used [smallpdf](https://smallpdf.com/) to compress the figures in order to keep the size of the document reasonable. We used [grammarly](https://app.grammarly.com/) for basic grammar checking, but you might also like [Academic Writing Check](https://github.com/devd/Academic-Writing-Check) and [textidote](https://github.com/sylvainhalle/textidote). We used [checkcites](https://github.com/islandoftex/checkcites) to detect unused citations. 

Here are the notable files in this repository: 

- `sdqdiss.tex`: The main tex file
- `sdqdiss.bib`: The main bibliography files (we use Biber)
- `uncited.bib`: Some reference that did not end up being cited in the work, but still considered relevant

Our template is a slightly customized variant of the template provided by the [SDQ](https://sdqweb.ipd.kit.edu/wiki/Dokumentvorlagen) institute at KIT. See also comments in `sdqdiss.tex`. Our modifications are purely cosmetic but also comply with KIT corporate design. 

We use Biber for managing citations. Our workflow to find citations is as follows:  
- Get the condensed citation on [DBLP](https://dblp.uni-trier.de/)
- Fill the DOI field if available
- If no DOI available, add url field

(A little macro in `sdqdiss.tex` takes care of printing the url if no DOI is available)

- If the reference is not on DBLP, we get the reference from the venue where it was published

See also some advice for managing your bib file [here](https://clauswilke.com/blog/2015/10/02/bibtex/).

- How to check for unused citations. 

```
wget https://github.com/islandoftex/checkcites/blob/master/checkcites.lua
checkcites sdqdiss --backend biber
```

Useful [check list](https://www.owlnet.rice.edu/~cainproj/writingtips/thesischecklist.pdf) for your thesis writing. 

## Additional Ressources (for KIT people)

- https://www.bibliothek.kit.edu/cms/ksp-toolbox.php
- https://www.bibliothek.kit.edu/cms/english/ksp-request-publication.php
- https://www.bibliothek.kit.edu/cms/english/kitopen-how-publish.php
- https://www.bibliothek.kit.edu/cms/english/doctoral-theses-kit.php

Publishing is quick, simple and free via KITOpen. 