import { useEffect, useState } from "react";
import { Header, Card, Image } from "semantic-ui-react";
import Axios from "axios";
import { Link } from "react-router-dom";

const Cocktails = () => {
  //grabbing cocktails using use state and use effect
  const [cocktails, setCocktails] = useState([]);

  useEffect(() => {
    Axios.get("/api/cocktails").then((res) => {
      setCocktails(res.data);
    });
  }, []);

  const renderCocktails = () => {
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
