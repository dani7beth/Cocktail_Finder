import { useEffect, useState } from "react"
import Axios from 'axios';

export default () =>{

    const[things, setThings] = useState([]);

    useEffect(()=>{
        getThings();
    }, []);

    const getThings = async () =>{
        let res = await Axios.get("api/things");
        setThings(res.data);
    }

    const renderThings = () =>{
       return(
        things.map((t) => <h2 key={t.id}>{t.name}</h2>)
       ) 
    }

    return(
         <>
             <h1>Things</h1>
             {renderThings()}
         </>
    ) 
 }