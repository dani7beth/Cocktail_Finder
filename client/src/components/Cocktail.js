import { useContext } from "react";
import { Container, Header, List, Image } from "semantic-ui-react";
import { CocktailContext } from "../providers/CocktailProvider";

const Cocktail = (props) => {
  const { cocktails } = useContext(CocktailContext);
  // console.log(props.match.params.id);
  let cocktail = cocktails.find((c) => {
    return c.id == props.match.params.id;
  });
  console.log(cocktail);

  return (
    <>
      <Container>
        <Header as="h1" textAlign="center">
          {cocktail.name}
        </Header>
        <Image src={cocktail.image}/>
        <List>
          <List.Item>How it's served: {cocktail.served}</List.Item>
          <List.Item>Garnish: {cocktail.garnish}</List.Item>
          <List.Item>Drinkware: {cocktail.drinkware} glass</List.Item>
          <List.Item>Ingredients: {cocktail.ingredients}</List.Item>
          <List.Item>Best time to drink: {cocktail.timing}</List.Item>
        </List>
        <Header as='h4'>Directions</Header>
        <p>{cocktail.instructions}</p>
      </Container>
    </>
  );
};
export default Cocktail;
