import { useContext, useState } from "react";
import { Header, Container, Form} from "semantic-ui-react";
import { CocktailContext } from "../providers/CocktailProvider";
export default (props) => {
  const [query, setQuery] = useState("");
  const { filterCocktails } = useContext(CocktailContext);

  const handleSubmit = (e) => {
    e.preventDefault();
    filterCocktails(query);
    props.history.push('/cocktails');

  };

  return (
    <Container>
      <Header as="h1" textAlign="center">
        Cocktail Finder
      </Header>
      <Form onSubmit={handleSubmit}>
        <Form.Input
          label="Search by Ingredient"
          placeholder='Search...'
          type="text"
          name="query"
          value={query}
          onChange={(e, { value }) => {
            setQuery(value);
          }}
          icon='search'
        />
        
      </Form>
    </Container>
  );
};
