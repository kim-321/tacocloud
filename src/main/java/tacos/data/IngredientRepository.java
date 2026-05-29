package tacos.data;
import org.springframework.data.repository.CrudRepository;
import tacos.Ingredient;
import tacos.User;

public interface IngredientRepository
        extends CrudRepository<Ingredient, String> {

}
