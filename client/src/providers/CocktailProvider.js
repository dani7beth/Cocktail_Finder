import React from "react";
import Axios from "axios";

export const CocktailContext = React.createContext();

export const CocktailConsumer = CocktailContext.Consumer;

export class CocktailProvider extends React.Component {
  state = {
    cocktails: null,
    filterCocktails: (x) => this.filterCocktails(x),
    handleCocktailCreate: (x) => this.handleCocktailCreate(x),
    handleCocktailEdit: (x,y) => this.handleCocktailEdit(x,y)
  };

  componentDidMount = () => {
    Axios.get("/api/cocktails")
      .then((res) => {
        this.setState({ cocktails: res.data });
      })
      .catch((err) => {
        console.log(err);
      });
  };

  //handle search query
  filterCocktails = (query) => {
    Axios.get("/api/cocktails/search", { params: { query } })
      .then((res) => {
        this.setState({ cocktails: res.data });
      })
      .catch((err) => {
        console.log(err);
      });
  };

  handleCocktailCreate = (cocktail) => {
    Axios.post("/api/cocktails", cocktail)
      .then((res) => {
        console.log(res.data);
      })
      .catch((err) => {
        console.log(err);
      });
  };
  handleCocktailEdit = async (id, cocktail) => {
    try{
      let res = await Axios.put(`/api/cocktails/${id}`, cocktail)
      console.log(res.data);
    }catch(err){
      console.log(err);
    }
  }
  render() {
    return (
      <CocktailContext.Provider
        value={{
          ...this.state,
          setCocktail: (cocktail) => this.setState({ cocktail }),
        }}
      >
        {this.props.children}
      </CocktailContext.Provider>
    );
  }
}

/*
Need a function to handle search queries from a form that will be the main home page of this app.
have function use context to call functions that will be made in here.
*/
