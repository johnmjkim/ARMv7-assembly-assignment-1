---
title: "Design Proposal"
author: John (Min Jae), Kim
email: johnmjkim1216@gmail.com
---


# What : Waterdrop and Wave

First, the board will show a water drop expressed in a LED light falling from the roof. The first view will be on the side view. A water wave by the water drop will also be shown.

The next water drop will be also shown on the front view. But it will change to the top view to show a water wave where its height is expressed with the brightness of the light. A water wave with the wall is going to be expressed. It will reflect back as it collides with the front wall.

Lastly, the show ends and all lights will be turned-off for several seconds. Then, the LED show will resume by starting back to the first stage.

# How : ARM-v7 assembly

The project will basically use the address of pins of the micro-bit to load and store the data. This allows me to control a LED light in the intended position of the board. Conditional branch and label will be used to control at what condition, which number of LED pins will be lit up. 

