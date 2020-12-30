import { useContext, useState } from "react";
import { Header, Container, Form, Button} from "semantic-ui-react";
import { CocktailContext } from "../providers/CocktailProvider";
import {Link} from 'react-router-dom';

export default (props) => {
  const [query, setQuery] = useState("");
  const { filterCocktails } = useContext(CocktailContext);

  const handleSubmit = (e) => {
    e.preventDefault();
    filterCocktails(query);
    props.history.push('/cocktails');

  };

  return (
    <>
    <Container>
      <Header as="h1" textAlign="center">
        Cocktail Finder
      </Header>
      <Form onSubmit={handleSubmit}>
        <Form.Input
          label="Search by Ingredient or Name"
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
    </>
  );
};
