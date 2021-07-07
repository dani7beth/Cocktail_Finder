import React from "react";
import Axios from "axios";

export const CocktailContext = React.createContext();

export const CocktailConsumer = CocktailContext.Consumer;

export class CocktailProvider extends React.Component {
  state = {
    cocktails: null,
    filterCocktails: (x) => this.filterCocktails(x),
    handleCocktailCreate: (x) => this.handleCocktailCreate(x),
    handleCocktailEdit: (x, y) => this.handleCocktailEdit(x, y),
  };

  getCocktails = () => {
    Axios.get("/api/cocktails")
      .then((res) => {
        this.setState({ cocktails: res.data });
      })
      .catch((err) => {
        console.log(err);
      });
  };
  componentDidMount = () => {
    this.getCocktails();
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

  handleCocktailCreate = (cocktail, history) => {
    Axios.post("/api/cocktails", cocktail)
      .then((res) => {
        console.log(res.data);
        this.setState({ cocktails: [res.data, ...this.state.cocktails] });
      })
      .catch((err) => {
        console.log(err);
      });
    history.goBack();
  };
  handleCocktailEdit = async (id, cocktail, history) => {
    try {
      let res = await Axios.put(`/api/cocktails/${id}`, cocktail);
      console.log(res.data);
    } catch (err) {
      console.log(err);
    }
    history.push("/");
  };
  handleCocktailDelete = async (id, history) => {
    try {
      let res = await Axios.delete(`/api/cocktails/${id}`);
      history.push("/cocktails");
      let newCocktails = this.state.cocktails.filter(
        (cocktail) => id !== cocktail.id
      );
      this.setState({ cocktails: newCocktails });
      // this.setState({
      //   cocktails: this.state.cocktails.filter(
      //     (cocktail) => cocktail.id !== id
      //   ),
      // });
    } catch (err) {
      console.log(err);
    }
  };
  render() {
    return (
      <CocktailContext.Provider
        value={{
          ...this.state,
          setCocktail: (cocktail) => this.setState({ cocktail }),
          handleCocktailDelete: this.handleCocktailDelete,
          handleCocktailEdit: this.handleCocktailEdit,
          handleCocktailCreate: this.handleCocktailCreate,
        }}
        key={this.state.cocktails}
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
