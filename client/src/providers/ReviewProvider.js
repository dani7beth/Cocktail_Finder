import React from "react";
import Axios from "axios";

export const ReviewContext = React.createContext();

export const ReviewConsumer = ReviewContext.Consumer;

export class ReviewProvider extends React.Component {
  state = {
    reviews: null,
    id: null,
    createReviews: (x, y) => this.createReviews(x, y),
  };

  createReviews = (review, id) => {
    Axios.post(`/api/cocktails/${id}/reviews`, {rating: review.rating, comment: review.comment})
      .then((res) => {
        console.log(res.data);
      })
      .catch((err) => {
        console.log(err);
      });
  };

  render() {
    return (
      <ReviewContext.Provider value={{ ...this.state }}>
        {this.props.children}
      </ReviewContext.Provider>
    );
  }
}
