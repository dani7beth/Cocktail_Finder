import React from "react";
import Axios from "axios";

export const CocktailContext = React.createContext();

export const CocktailConsumer = CocktailContext.Consumer;

export class CocktailProvider extends React.Component {
  state = { cocktails: null };

  componentDidMount = () => {
    Axios.get("/api/cocktails")
      .then((res) => {
        this.setState({ cocktails: res.data });
      })
      .catch((err) => {
        console.log(err);
      });
  };

  render() {
    return (
      <CocktailContext.Provider
        value={{...this.state}}
      >
        {this.props.children}
      </CocktailContext.Provider>
    );
  }
}
