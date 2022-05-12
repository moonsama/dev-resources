# Carnage Stats

- [Overview](#overview)
- [Carnage Stats](#carnage-stats)
    - [Original Inventores](#original-inventories)
    - [Gganbu](#gganbu)
    - [Personal Share](#personal-share)
    - [Final Rewards](#final-rewards)
    - [Leaderboards](#leaderboards)

## Live Version

Check out the client facing UI: [mcapi.moonsama.com/game](https://mcapi.moonsama.com/game)  
Read the API specification: [Swagger](../swagger.json)

## Overview

You can access detailed statistics for carnage rewards, for various stages in the calculation.

### Original Inventories

In this route, inventories are displayed exactly as they were recorded at the end of the game. Resources show up in
their token representation.

[Example (All)](https://mcapi.moonsama.com/game/minecraft-carnage-2022-05-08/carnage-stats/result/original)  
[Example (Player)](https://mcapi.moonsama.com/game/minecraft-carnage-2022-05-08/carnage-stats/result/original?player=Donniebigbags)

### Gganbu

This route returns gganbu calculation results, either in the form of the base gganbu or for a specific player.

[Example (Base Gganbu)](https://mcapi.moonsama.com/game/minecraft-carnage-2022-05-08/carnage-stats/result/gganbu)  
[Example (Player)](https://mcapi.moonsama.com/game/minecraft-carnage-2022-05-08/carnage-stats/result/gganbu?player=Donniebigbags)

### Personal Share

This route displays inventories after the taxed part has been deducted.

[Example (All)](https://mcapi.moonsama.com/game/minecraft-carnage-2022-05-08/carnage-stats/result/personal_share)  
[Example (Player)](https://mcapi.moonsama.com/game/minecraft-carnage-2022-05-08/carnage-stats/result/personal_share?player=Donniebigbags)

### Final Rewards

Here you can query inventories after the taxed part has been deducted, and the gganbu share has been added back. These
values correspond to what the player will receive on the bridge. Note that mcapi is not aware of any penalties applied
to specific players. These values only represent the theoretical calculation result, not what is actually going to be
added.

[Example (All)](https://mcapi.moonsama.com/game/minecraft-carnage-2022-05-08/carnage-stats/result/final)  
[Example (Player)](https://mcapi.moonsama.com/game/minecraft-carnage-2022-05-08/carnage-stats/result/final?player=Donniebigbags)

### Leaderboards

Here you can query the leaderboards, readily prepared for displaying in a UI.

[Example (All)](https://mcapi.moonsama.com/game/minecraft-carnage-2022-05-08/carnage-stats/result/original)  
[Example (Player)](https://mcapi.moonsama.com/game/minecraft-carnage-2022-05-08/carnage-stats/result/original?player=Donniebigbags)