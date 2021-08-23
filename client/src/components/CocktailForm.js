import Axios from "axios";
import { useContext, useState } from "react";
import { Header, Container, Form } from "semantic-ui-react";
import { AuthContext } from "../providers/AuthProvider";
import { CocktailContext } from "../providers/CocktailProvider";
import { FilePond, registerPlugin } from "react-filepond";
import "filepond/dist/filepond.min.css";

export default ({ cocktailProp, addCocktail, editCocktail, history }) => {
  const { handleCocktailEdit, handleCocktailCreate } = useContext(
    CocktailContext
  );
  //setting cocktail to a default value
  const { user } = useContext(AuthContext);
  const [files, setFiles] = useState();
  const [name, setName] = useState("");
  const [served, setServed] = useState("");
  const [garnish, setGarnish] = useState("");
  const [drinkware, setDrinkware] = useState("");
  const [ingredients, setIngredients] = useState("");
  const [instructions, setInstructions] = useState("");
  const [timing, setTiming] = useState("");
  const [cocktail, setCocktail] = useState(
    cocktailProp
      ? {
          name: cocktailProp.name,
          served: cocktailProp.served,
          garnish: cocktailProp.garnish,
          drinkware: cocktailProp.drinkware,
          ingredients: cocktailProp.ingredients,
          instructions: cocktailProp.instructions,
          image: cocktailProp.image,
          timing: cocktailProp.timing,
          user_id: user.id,
        }
      : {
          name: "",
          served: "",
          garnish: "",
          drinkware: "",
          ingredients: "",
          instructions: "",
          image: "",
          timing: "",
          user_id: user.id,
        }
  );

  const addCallCocktail = () => {
    let data = new FormData();
    data.append("name", cocktail.name);
    data.append("served", cocktail.served);
    data.append("garnish", cocktail.garnish);
    data.append("drinkware", cocktail.drinkware);
    data.append("ingredients", cocktail.ingredients);
    data.append("instructions", cocktail.instructions);
    data.append("image", cocktail.image);
    data.append("timing", cocktail.timing);
    handleCocktailCreate(data, history);
  };
  const handleChange = (e) => {
    setCocktail({ ...cocktail, [e.target.name]: e.target.value });
  };
  const handleUpdate = (fileItems) => {
    console.log(cocktail);
    if (fileItems.length !== 0) {
      setFiles(fileItems);
      setCocktail({ ...cocktail, image: fileItems[0].file });
    }
  };
  const editCallCocktail = () => {
    handleCocktailEdit(cocktailProp.id, cocktail, history);
  };

  const handleFileRemoved = (e, file) => {
    setFiles(null);
  };
  const handleSubmit = (e) => {
    e.preventDefault();
    if (cocktailProp) {
      editCallCocktail();
    } else {
      addCallCocktail();
      setCocktail({
        name: name,
        served: served,
        garnish: garnish,
        drinkware: drinkware,
        ingredients: ingredients,
        instructions: instructions,
        image: "",
        timing: timing,
      });
    }
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
            onChange={(e) => setName(e.target.value)}
            required
          />
          <Form.Input
            label="Served"
            type="text"
            name="served"
            value={served}
            onChange={(e) => setServed(e.target.value)}
            required
          />
          <Form.Input
            label="Garnish"
            type="text"
            name="garnish"
            value={garnish}
            onChange={(e) => setGarnish(e.target.value)}
          />
          <Form.Input
            label="Drinkware"
            type="text"
            name="drinkware"
            value={drinkware}
            onChange={(e) => setDrinkware(e.target.value)}
            required
          />
          <Form.Input
            label="Ingredients"
            type="text"
            name="ingredients"
            value={ingredients}
            onChange={(e) => setIngredients(e.target.value)}
            required
          />
          <Form.Input
            label="Instructions"
            type="text"
            name="instructions"
            value={instructions}
            onChange={(e) => setInstructions(e.target.value)}
            required
          />
          <FilePond
            files={files}
            onupdatefiles={handleUpdate}
            onremovefile={handleFileRemoved}
            allowMultiple={false}
            name="image"
            labelIdle='Drag and Drop your files or <span class="filepond--label-action">Browse</span>'
          />
          <Form.Input
            label="Timing"
            type="text"
            name="timing"
            value={timing}
            onChange={(e) => setTiming(e.target.value)}
          />
          <Form.Button type="submit">
            {cocktailProp ? "edit" : "add"}
          </Form.Button>
        </Form>
      </Container>
    </>
  );
};
