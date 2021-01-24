import Axios from "axios";
import { useContext, useState } from "react";
import { Header, Container, Form} from "semantic-ui-react";
import { CocktailContext } from "../providers/CocktailProvider";

export default ({cocktailProp, addCocktail, editCocktail, handleClose}) => {
  
  const {handleCocktailEdit} = useContext(CocktailContext);
  //setting cocktail to a default value
  

  const [cocktail, setCocktail] = useState(
    cocktailProp ? {
      name: cocktailProp.name,
      served: cocktailProp.served,
      garnish: cocktailProp.garnish,
      drinkware: cocktailProp.drinkware,
      ingredients: cocktailProp.ingredients,
      instructions: cocktailProp.instructions,
      image: cocktailProp.image,
      timing: cocktailProp.timing,
    } :
    {
      name: '',
      served: '',
      garnish: '',
      drinkware: '',
      ingredients: '',
      instructions: '',
      image: '',
      timing: '',
    }
  )

  const addCallCocktail = async () =>{
   try{
     let res = await Axios.post(`/api/cocktails`, cocktail);
     addCocktail(res.data);
   }catch(err){
     console.log(err);
   }
  }

  const editCallCocktail = () => {
    handleCocktailEdit(cocktailProp.id, cocktail);
  }

  const handleChange = (e) =>{
    setCocktail({...cocktail, [e.target.name]: e.target.value});
  }

  const handleSubmit = (e) => {
    e.preventDefault();
    if(cocktailProp){
      editCallCocktail();
    }else{
      addCallCocktail();
      setCocktail({
        name: '',
        served: '',
        garnish: '',
        drinkware: '',
        ingredients: '',
        image: '',
        timing: '',
        
      });
    }
    handleClose();
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
            value={cocktail.name}
            onChange={handleChange}
            required
          />
          <Form.Input
            label="Served"
            type="text"
            name="served"
            value={cocktail.served}
            onChange={handleChange}
            required
          />
          <Form.Input
            label="Garnish"
            type="text"
            name="garnish"
            value={cocktail.garnish}
            onChange={handleChange}
          />
          <Form.Input
            label="Drinkware"
            type="text"
            name="drinkware"
            value={cocktail.drinkware}
            onChange={handleChange}
            required
          />
          <Form.Input
            label="Ingredients"
            type="text"
            name="ingredients"
            value={cocktail.ingredients}
            onChange={handleChange}
            required
          />
          <Form.Input
            label="Instructions"
            type="text"
            name="instructions"
            value={cocktail.instructions}
            onChange={handleChange}
            required
          />
          <Form.Input
            label="Image Url"
            type="text"
            name="image"
            value={cocktail.image}
            onChange={handleChange}
          />
          <Form.Input
            label="Timing"
            type="text"
            name="timing"
            value={cocktail.timing}
            onChange={handleChange}
          />
          <Form.Button type="submit">{cocktailProp ? 'edit' : 'add'}</Form.Button>
        </Form>
      </Container>
    </>
  );
};
