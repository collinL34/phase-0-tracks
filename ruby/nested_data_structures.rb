
runway = {
  first_show: {
    show_name: 'swimsuits',
    models: {
      'natasha': 'one piece',
      'megan': 'two piece',
      'heather': 'two piece'
    },
  },
  second_show: {
    show_name: 'lingerie',
    models: {
      'heather': 'teddy',
      'scarlett': 'lasy bra'
      },
      dress: ['one piece', 'two piece','leggings ']
  },
  seating: {
    seats_available: 50,
    models: 6
  },
  ratings: [],
}

puts runway[:first_show][:models]['heather']