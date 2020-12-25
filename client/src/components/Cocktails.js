import { useContext } from "react";
import { Header, Card, Image } from "semantic-ui-react";
import { Link } from "react-router-dom";
import { CocktailContext } from "../providers/CocktailProvider";

const Cocktails = () => {
  //grabbing cocktails using use state and use effect
  const { cocktails } = useContext(CocktailContext);

  // logic to filter the cocktails given ingredient
  // let filteredCocktails = cocktails.filter((c) => {
  //   return c.ingredients.toLowerCase().includes("abc".toLowerCase());
  // });
  // console.log(filteredCocktails);

  const renderCocktails = () => {
    // if (filteredCocktails.length === 0)
    //   return "Sorry no cocktails match those ingredients";
    return cocktails.map((c) => (
      <Card key={c.id}>
        <Image src={c.image} height="250px" />
        <Link to={`/cocktails/${c.id}`}>
          <Card.Header>{c.name}</Card.Header>
        </Link>
      </Card>
    ));
  };

  return (
    <>
      <Header>Cocktails</Header>
      <Card.Group itemsPerRow={4}>{renderCocktails()}</Card.Group>
    </>
  );
};
export default Cocktails;
