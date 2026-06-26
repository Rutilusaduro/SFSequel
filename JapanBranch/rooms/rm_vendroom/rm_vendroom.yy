{
  "resourceType": "GMRoom",
  "resourceVersion": "1.0",
  "name": "rm_vendroom",
  "isDnD": false,
  "volume": 1.0,
  "parentRoom": null,
  "views": [
    {
      "resourceType": "GMRView",
      "resourceVersion": "1.0",
      "visible": false,
      "xview": 0,
      "yview": 0,
      "wview": 1366,
      "hview": 768,
      "xport": 0,
      "yport": 0,
      "wport": 1366,
      "hport": 768,
      "hborder": 32,
      "vborder": 32,
      "hspeed": -1,
      "vspeed": -1,
      "objectId": null
    }
  ],
  "layers": [
    {
      "resourceType": "GMRInstanceLayer",
      "resourceVersion": "1.0",
      "name": "Instances",
      "depth": 0,
      "visible": true,
      "userdefinedDepth": false,
      "inheritLayerDepth": false,
      "inheritLayerSettings": false,
      "gridX": 32,
      "gridY": 32,
      "layers": [],
      "hierarchyFrozen": false,
      "effectEnabled": true,
      "effectType": null,
      "properties": [],
      "instances": [
        {
          "resourceType": "GMRInstance",
          "resourceVersion": "1.0",
          "name": "inst_ff65f463e806",
          "properties": [],
          "isDnD": false,
          "objectId": {
            "name": "obj_vendmachine",
            "path": "objects/obj_vendmachine/obj_vendmachine.yy"
          },
          "inheritCode": false,
          "hasCreationCode": false,
          "colour": 4294967295,
          "rotation": 0.0,
          "scaleX": 1.0,
          "scaleY": 1.0,
          "imageIndex": 0,
          "imageSpeed": 1.0,
          "inheritedItemId": null,
          "frozen": false,
          "ignore": false,
          "inheritItemSettings": false,
          "x": 683.0,
          "y": 384.0,
          "id": {
            "name": "inst_ff65f463e806",
            "path": "rooms/rm_vendroom/rm_vendroom.yy"
          }
        }
      ]
    },
    {
      "resourceType": "GMRInstanceLayer",
      "resourceVersion": "1.0",
      "name": "UI",
      "depth": -100,
      "visible": true,
      "userdefinedDepth": false,
      "inheritLayerDepth": false,
      "inheritLayerSettings": false,
      "gridX": 32,
      "gridY": 32,
      "layers": [],
      "hierarchyFrozen": false,
      "effectEnabled": true,
      "effectType": null,
      "properties": [],
      "instances": []
    },
    {
      "resourceType": "GMRBackgroundLayer",
      "resourceVersion": "1.0",
      "name": "Background",
      "depth": 100,
      "visible": true,
      "userdefinedDepth": false,
      "inheritLayerDepth": false,
      "inheritLayerSettings": false,
      "gridX": 32,
      "gridY": 32,
      "layers": [],
      "hierarchyFrozen": false,
      "effectEnabled": true,
      "effectType": null,
      "properties": [],
      "spriteId": {
        "name": "spr_bg_vendroom",
        "path": "sprites/spr_bg_vendroom/spr_bg_vendroom.yy"
      },
      "colour": 4278190080,
      "x": 0,
      "y": 0,
      "htiled": false,
      "vtiled": false,
      "vspeed": 0.0,
      "hspeed": 0.0,
      "stretch": true,
      "animationFPS": 15.0,
      "animationSpeedType": 0,
      "userdefinedAnimFPS": false
    }
  ],
  "roomSettings": {
    "resourceType": "GMRoomSettings",
    "resourceVersion": "1.0",
    "inheritRoomSettings": false,
    "Width": 1366,
    "Height": 768,
    "persistent": false
  },
  "viewSettings": {
    "resourceType": "GMRViewSettings",
    "resourceVersion": "1.0",
    "inheritViewSettings": false,
    "enableViews": false,
    "clearViewBackground": false,
    "clearDisplayBuffer": true
  },
  "physics": {
    "resourceType": "GMRPhysicsSettings",
    "resourceVersion": "1.0",
    "inheritPhysicsSettings": false,
    "PhysicsWorld": false,
    "PhysicsWorldGravityX": 0.0,
    "PhysicsWorldGravityY": 10.0,
    "PhysicsWorldPixToMetres": 0.1
  },
  "parent": {
    "name": "Rooms",
    "path": "folders/Rooms.yy"
  },
  "creationCodeFile": "",
  "inheritCode": false,
  "instanceCreationOrder": [
    {
      "name": "inst_ff65f463e806",
      "path": "rooms/rm_vendroom/rm_vendroom.yy"
    }
  ],
  "inheritCreationOrder": false,
  "sequenceId": null
}