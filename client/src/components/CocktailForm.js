import { useContext, useState } from "react";
import { Header, Container, Form, Button } from "semantic-ui-react";
import { CocktailContext } from "../providers/CocktailProvider";

export default (props) => {
  //setting cocktail to a default value
  const [name, setName] = useState("");
  const [served, setServed] = useState("");
  const [garnish, setGarnish] = useState("");
  const [drinkware, setDrinkware] = useState("");
  const [ingredients, setIngredients] = useState("");
  const [instructions, setInstructions] = useState("");
  const [image, setImage] = useState("");
  const [timing, setTiming] = useState("");

  const { handleCocktailCreate } = useContext(CocktailContext);

  const handleSubmit = (e) => {
    e.preventDefault();
    handleCocktailCreate({
      name,
      served,
      garnish,
      drinkware,
      ingredients,
      instructions,
      image, 
      timing
    });
    props.history.push("/");
  };

  return (
    <>
      <Container>
        <Header as="h1" textAlign="center">
          Your Cocktail
        </Header>
        <Form onSubmit={handleSubmit}>
          <Form.Input
            label="Name"
            type="text"
            name="name"
            value={name}
            onChange={(e, { value }) => {
              setName(value);
            }}
            required
          />
          <Form.Input
            label="Served"
            type="text"
            name="served"
            value={served}
            onChange={(e, { value }) => {
              setServed(value);
            }}
            required
          />
          <Form.Input
            label="Garnish"
            type="text"
            name="garnish"
            value={garnish}
            onChange={(e, { value }) => {
              setGarnish(value);
            }}
          />
          <Form.Input
            label="Drinkware"
            type="text"
            name="drinkware"
            value={drinkware}
            onChange={(e, { value }) => {
              setDrinkware(value);
            }}
            required
          />
          <Form.Input
            label="Ingredients"
            type="text"
            name="ingredients"
            value={ingredients}
            onChange={(e, { value }) => {
              setIngredients(value);
            }}
            required
          />
          <Form.Input
            label="Instructions"
            type="text"
            name="instructions"
            value={instructions}
            onChange={(e, { value }) => {
              setInstructions(value);
            }}
            required
          />
          <Form.Input
            label="Image Url"
            type="text"
            name="image"
            value={image}
            onChange={(e, { value }) => {
              setImage(value);
            }}
          />
          <Form.Input
            label="Timing"
            type="text"
            name="timing"
            value={timing}
            onChange={(e, { value }) => {
              setTiming(value);
            }}
          />
          <Form.Button type="submit">add</Form.Button>
        </Form>
      </Container>
    </>
  );
};
