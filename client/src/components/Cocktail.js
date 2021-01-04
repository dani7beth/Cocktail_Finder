import Axios from "axios";
import { useContext, useEffect, useState } from "react";
import {
  Container,
  Header,
  List,
  Image,
  Rating,
  Form,
  Card,
  Icon,
} from "semantic-ui-react";
import { CocktailContext } from "../providers/CocktailProvider";
import { ReviewContext } from "../providers/ReviewProvider";

const Cocktail = (props) => {
  const { cocktails } = useContext(CocktailContext);
  const { createReviews } = useContext(ReviewContext);
  const [reviews, setReviews] = useState([]);
  const [rating, setRating] = useState(0);
  const [comment, setComment] = useState("");

  let cocktail = cocktails.find((c) => {
    return c.id == props.match.params.id;
  });

  const getReviews = () => {
    Axios.get(`/api/cocktails/${props.match.params.id}/reviews`)
      .then((res) => {
        setReviews(res.data);
      })
      .catch((err) => {
        console.log(err);
      });
  };

  useEffect(() => {
    getReviews();
  }, []);

  const renderReviews = () => {
    if (reviews !== null) {
      return reviews.map((r) => (
        <Card key={r.id}>
          <Card.Header><Rating defaultRating={r.rating} maxRating={5} disabled/></Card.Header>
          <Card.Content>{r.comment}</Card.Content>
        </Card>
      ));
    }
  };

  const handleRate = (e, { rating }) => {
    setRating(rating);
    // console.log(rating);
  };

  const handleSubmit = (e) => {
    // console.log(rating, comment);
    createReviews({ rating: rating, comment: comment }, props.match.params.id);
    window.location.reload();
  };

  return (
    <>
      <Container>
        <Header as="h1" textAlign="center">
          {cocktail.name}
        </Header>
        <Image src={cocktail.image} />
        <List>
          <List.Item>How it's served: {cocktail.served}</List.Item>
          <List.Item>Garnish: {cocktail.garnish}</List.Item>
          <List.Item>Drinkware: {cocktail.drinkware} glass</List.Item>
          <List.Item>Ingredients: {cocktail.ingredients}</List.Item>
          <List.Item>Best time to drink: {cocktail.timing}</List.Item>
        </List>
        <Header as="h4">Directions</Header>
        <p>{cocktail.instructions}</p>
        <Header as="h4">Reviews</Header>
        <Rating
          icon="star"
          defaultRating={1}
          maxRating={5}
          size="huge"
          onRate={handleRate}
        />
        <Form onSubmit={handleSubmit}>
          <Form.Input
            label="Comment"
            type="text"
            name="comment"
            value={comment}
            onChange={(e, { value }) => {
              setComment(value);
            }}
          />
          <Form.Button type="submit">submit</Form.Button>
        </Form>
        {renderReviews()}
      </Container>
    </>
  );
};
export default Cocktail;
