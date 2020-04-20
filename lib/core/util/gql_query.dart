mixin GqlQuery {
  static String charactersQuery = '''
  query (\$page: Int!){
    characters(page: \$page){
      results{
        id
        name
        status
        gender
        type
        species
        image
      }
    }
  }
  ''';

  static String locationsQuery = '''
  query (\$page: Int!){
    locations(page: \$page){
      results{
        id
        name
        type
        dimension
      }
    }
  }
  ''';

  static String episodesQuery = '''
  query (\$page: Int!){
    episodes(page: \$page){
      results{
        id
        name
        episode
        air_date
      }
    }
  }
  ''';
}
