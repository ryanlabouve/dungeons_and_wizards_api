Player.delete_all
[
  {
    name: "Eowyn",
    quote: "But no living man am I! You look upon a woman. Eowyn I am, Eomund's daughter.",
    image: "https://gifcannon.s3.amazonaws.com/Web_Image_2017-06-03_23-33-43.png",
    moves: [
      {
        name: "Whitch-bane stab",
        damage: 400,
        queue_time: 10,
        success_rate: 0.7,
      },
      {
        name: "Ralley cavalary charge",
        damage: 100,
        queue_time: 1,
        success_rate: 0.95,
      }
    ]
  },
  {
    name: "Aragorn",
    quote: "I have no help to send, therefore I must go myself...",
    image: "https://gifcannon.s3.amazonaws.com/Web_Image_2017-06-03_23-34-13.png",
    moves: [
      {
        name: "Ranger strike",
        damage: 100,
        queue_time: 1,
        success_rate: 0.95,
      },
      {
        name: "Army of the Dead",
        damage: 800,
        queue_time: 20,
        success_rate: 0.5,
      }
    ]
  },
  {
    name: "Gollumn",
    quote: "gollumn *coughs*",
    image: "https://gifcannon.s3.amazonaws.com/Web_Image_2017-06-03_23-34-32.png",
    moves: [
      {
        name: "MINE",
        damage: 150,
        queue_time: 1,
        success_rate: 0.95,
      },
      {
        name: "My Precious...",
        damage: 80,
        queue_time: 0.3,
        success_rate: 0.81,
      }
    ]
  },
  {
    name: "Radagast",
    quote: "Longbottom leaf...",
    image: "https://gifcannon.s3.amazonaws.com/Web_Image_2017-06-03_23-35-15.png",
    moves: [
      {
        name: "Bunny charge",
        damage: 100,
        queue_time: 1,
      },
      {
        name: "Spell with _reliable_ Staff",
        damage: 500,
        queue_time: 4,
        success_rate: 0.3,
      }
    ]
  },
  {
    name: "Veteran Axehand",
    quote: "'I am glad to have you standing nigh with your stout legs and your hard axe.' - Legolas, The Two Towers ",
    image: "https://gifcannon.s3.amazonaws.com/Web_Image_2017-06-03_23-35-47.png",
    moves: [
      {
        name: "Swing axe",
        damage: 200,
        queue_time: 1,
        success_rate: 0.9,
      },
      {
        name: "Swing axe harder",
        damage: 250,
        queue_time: 1.5,
        success_rate: 0.8,
      }
    ]
  },

  {
    name: "Legolas",
    quote: "'I can walk this path, but others have not this skill.' - The Fellowship of the Ring.",
    image: "https://gifcannon.s3.amazonaws.com/Web_Image_2017-06-03_23-36-52.png",
    moves: [
      {
        name: "Bullseye",
        damage: 130,
        queue_time: 2,
        success_rate: 0.99,
      },
      {
        name: "Bullseye whlie moving",
        damage: 220,
        queue_time: 3,
        success_rate: 0.98,
      }
    ]
  },

  {
    name: "Gloin",
    quote: "His beard, very long and forked, was white, nearly as white as the snow-white cloth of his garments. - The Fellowship of the Rings",
    image: "https://gifcannon.s3.amazonaws.com/Web_Image_2017-06-03_23-37-21.png",
    moves: [
      {
        name: "Show picture of child and wife",
        damage: 50,
        queue_time: 1,
        success_rate: 0.99,
      },
      {
        name: "MY AXE",
        damage: 200,
        queue_time: 1.5,
        success_rate: 0.88,
      }
    ]
  },

  {
    name: "Gandalf",
    quote: "Hurry you fools",
    image: "https://gifcannon.s3.amazonaws.com/Web_Image_2017-06-03_23-40-52.png",
    moves: [
      {
        name: "Summon the eagles",
        damage: 999,
        queue_time: 50,
        success_rate: 0.95,
      },
      {
        name: "YOU SHALL NOT PASS",
        damage: 150,
        queue_time: 1,
        success_rate: 0.9,
      }
    ]
  },
  {
    name: "Théoden",
    quote: "To me! To me!' cried Théoden. 'Up Eorlingas! Fear no darkness!' –The Return of the King",
    image: "https://gifcannon.s3.amazonaws.com/Web_Image_2017-06-04_00-26-27.png",
    moves: [
      {
        name: "Charge into certain doom",
        damage: 200,
        queue_time: 5,
        success_rate: 0.8
      },
      {
        name: "Charge into more certain doom",
        damage: 250,
        queue_time: 5,
        success_rate: 0.7,
      }
    ]
  }
].each { |c| Player.create!(c) }
