Player.delete_all
[
  {
    name: "Eowyn",
    quote: "But no living man am I! You look upon a woman. Eowyn I am, Eomund's daughter.",
    image: "https://gifcannon.s3.amazonaws.com/Web_Image_2017-06-03_23-33-43.png",
    moves: [
      {
        name: "Whitch-bane stab"
      },
      {
        name: "Ralley cavalary charge"
      }
    ]
  },
  {
    name: "Aragorn",
    quote: "I have no help to send, therefore I must go myself...",
    image: "https://gifcannon.s3.amazonaws.com/Web_Image_2017-06-03_23-34-13.png",
    moves: [
      {
        name: "Ranger strike"
      },
      {
        name: "This army..."
      }
    ]
  },
  {
    name: "Gollumn",
    quote: "gollumn *coughs*",
    image: "https://gifcannon.s3.amazonaws.com/Web_Image_2017-06-03_23-34-32.png",
    moves: [
      {
        name: "MINE"
      },
      {
        name: "My Precious..."
      }
    ]
  },
  {
    name: "Radagast",
    quote: "Longbottom leaf...",
    image: "https://gifcannon.s3.amazonaws.com/Web_Image_2017-06-03_23-35-15.png",
    moves: [
      {
        name: "Bunny charge"
      },
      {
        name: "Spell with _reliable_ Staff"
      }
    ]
  },
  {
    name: "Veteran Axehand",
    quote: "'I am glad to have you standing nigh with your stout legs and your hard axe.' - Legolas, The Two Towers ",
    image: "https://gifcannon.s3.amazonaws.com/Web_Image_2017-06-03_23-35-47.png",
    moves: [
      {
        name: "Swing axe"
      },
      {
        name: "Swing axe harder"
      }
    ]
  },

  {
    name: "Legolas",
    quote: "'I can walk this path, but others have not this skill.' - The Fellowship of the Ring.",
    image: "https://gifcannon.s3.amazonaws.com/Web_Image_2017-06-03_23-36-52.png",
    moves: [
      {
        name: "Bullseye"
      },
      {
        name: "Bullseye whlie moving"
      }
    ]
  },

  {
    name: "Gloin",
    quote: "His beard, very long and forked, was white, nearly as white as the snow-white cloth of his garments. - The Fellowship of the Rings",
    image: "https://gifcannon.s3.amazonaws.com/Web_Image_2017-06-03_23-37-21.png",
    moves: [
      {
        name: "Show picture of child and wife"
      },
      {
        name: "MY AXE"
      }
    ]
  },

  {
    name: "Gandalf",
    quote: "Hurry you fools",
    image: "https://gifcannon.s3.amazonaws.com/Web_Image_2017-06-03_23-40-52.png",
    moves: [
      {
        name: "Summon the eagles"
      },
      {
        name: "YOU SHALL NOT PASS"
      }
    ]
  },
  {
    name: "Théoden",
    quote: "To me! To me!' cried Théoden. 'Up Eorlingas! Fear no darkness!' –The Return of the King",
    image: "https://gifcannon.s3.amazonaws.com/Web_Image_2017-06-04_00-26-27.png",
    moves: [
      {
        name: "Charge into certain doom"
      },
      {
        name: "Charge into more certain doom"
      }
    ]
  }
].each { |c| Player.create!(c) }
