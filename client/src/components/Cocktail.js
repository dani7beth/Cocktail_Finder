import Axios from "axios";
import { Modal, Button } from "react-bootstrap";
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
import CocktailForm from "./CocktailForm";
import { AuthContext } from "../providers/AuthProvider";

const Cocktail = (props) => {
  const { cocktails, handleCocktailDelete } = useContext(CocktailContext);
  const { createReviews } = useContext(ReviewContext);
  const [reviews, setReviews] = useState([]);
  const [rating, setRating] = useState(0);
  const [comment, setComment] = useState("");
  const [show, setShow] = useState(false);
  const { user } = useContext(AuthContext);
  const handleShow = () => setShow(true);
  const handleHide = () => setShow(false);
  const [average, setAverage] = useState(0);

  let cocktail = cocktails.find((c) => {
    return c.id == props.match.params.id;
  });
  const getReviews = () => {
    Axios.get(`/api/cocktails/${props.match.params.id}/reviews`)
      .then((res) => {
        setReviews(res.data);
        let ratingTotals = 0;
        let count = 0;
        res.data.forEach((review) => {
          ratingTotals += review.rating;
          count += 1;
        });
        ratingTotals === NaN ? setAverage(0) : setAverage(ratingTotals / count);
      })
      .catch((err) => {
        console.log(err);
      });
  };
  useEffect(() => {
    getReviews();
  }, []);

  console.log(average);
  const renderReviews = () => {
    if (reviews !== null) {
      return reviews.map((r) => (
        <Card key={r.id}>
          <Card.Header>
            <Rating defaultRating={r.rating} maxRating={5} disabled />
          </Card.Header>
          <Card.Content>{r.comment}</Card.Content>
        </Card>
      ));
    }
  };
  const renderButtons = () => {
    if (user && user.id === cocktail.user_id) {
      return (
        <>
          <Button onClick={handleShow}>Edit</Button>
          <Button onClick={handleDelete}>Delete</Button>
        </>
      );
    }
  };

  const renderAverage = () => {
    if (isNaN(parseFloat(average))) {
      return;
    } else {
      return <p>{average}</p>;
    }
  };

  const handleRate = (e, { rating }) => {
    setRating(rating);
  };

  const handleSubmit = (e) => {
    // console.log(rating, comment);
    createReviews({ rating: rating, comment: comment }, props.match.params.id);
    window.location.reload();
  };

  const handleDelete = () => {
    handleCocktailDelete(cocktail.id, props.history);
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
        {renderButtons()}
        <Modal
          show={show}
          onHide={handleHide}
          backdrop="static"
          keyboard={false}
        >
          <Modal.Header closeButton>
            <Modal.Title>Modal title</Modal.Title>
          </Modal.Header>
          <Modal.Body>
            <CocktailForm cocktailProp={cocktail} handleClose={handleHide} />
          </Modal.Body>
          <Modal.Footer>
            <Button variant="secondary" onClick={handleHide}>
              Cancel
            </Button>
          </Modal.Footer>
        </Modal>

        <Header as="h4">Reviews</Header>
        <div>
          {user && (
            <Rating
              icon="star"
              defaultRating={average}
              maxRating={5}
              size="huge"
              onRate={handleRate}
            />
          )}
          {user && renderAverage()}
        </div>
        {user && (
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
        )}
        {renderReviews()}
      </Container>
    </>
  );
};
export default Cocktail;
