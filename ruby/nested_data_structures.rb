
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
  ratings: {
      heather: {
        'swimsuit': nil,
        'lingerie': nil
      },
      megan: {
        'swimsuit': nil,
        'lingerie': nil
        },
      scarlett: {
        'swimsuit': nil,
        'lingerie': nil
    },
  },
}

p runway[:first_show][:models][:heather]

p runway[:first_show][:show_name].upcase
p runway[:ratings][:heather][:swimsuit] = 10
p runway[:ratings][:heather][:lingerie] = 12
p runway[:ratings][:megan][:swimsuit] = 5
p runway[:ratings][:megan][:lingerie] = 6
p runway[:ratings][:scarlett][:swimsuit] = 4
p runway[:ratings][:scarlett][:lingerie] = 7
p runway[:ratings]
p runway[:seating][:seats_available]