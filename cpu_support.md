# Chrome OS Bootstrap Utility - Processor Support (CPU)

Because in the latest versions of Brunch Framework + Chrome OS (from r107 for Brunch Framework and v107 for Chrome OS, to r115 for Brunch Framework and v115 for Chrome OS), the requirements changed drastically regarding support for processors, and since the objective of this utility is to cover all abandoned support (that is, to support all those processors whose support, as of version 107 of Brunch Framework and Chrome OS, became obsolete, or in other words, to continue allowing creating Chrome OS images for such processors), it is imperative to highlight all possible processors supported for use with this utility, along with their respective argument tags (i.e., the text string that must be placed to tell the main script which processor the image should be generated on, along with the line of processors and their codename), to facilitate the use of the tool for all users.

Without further ado, here we show, with their respective tables, all the Intel and AMD processors naturally supported by Brunch Framework and Chrome OS, including those supported before version 107.

**NOTE: If your processor in the table appears with the word *Unsupported*, it means that it is too old, and naturally not covered by the Brunch Framework, and therefore, Chrome OS images cannot be generated for that specific CPU.**

**However, if your processor appears in the list with the status *Partial support (up to Chrome OS vX)*, it means that your processor is naturally supported by Brunch Framework, and therefore, can be used to generate the respective image, but you should keep in mind that although it was naturally supported by Brunch, images can only be generated for that CPU only up to the specific version of Chrome OS that is specified.**

**And finally, if your processor appears with the status *Supported*, it means that your processor, for the current requirements of Brunch Framework and Chrome OS, is well supported and can be used to generate their respective images up to the latest available version of Brunch Framework and Chrome OS, which is version 115.**

# Intel CPUs
First family: Intel Atom processors

First series: Atom Z Series

Find out your processor's support status for the utility, downloading this Excel spreadsheet (sorry for not having it in this Markdown guide, the problem was that the spreadsheet itself was too big to render using Markdown here in GitHub):

[List of supported Intel Atom Z Series processors for the utility](https://docs.google.com/spreadsheets/d/1M6Q0In6ffn38ytEVkFZWGU_yWY_ypqy8/edit?usp=sharing&ouid=108102948453687648576&rtpof=true&sd=true)

