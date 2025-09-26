import random;
import from byllm.llm { Model }

# AI model for giving suggestions
glob llm = Model(model_name="gemini/gemini-2.0-flash", verbose=False);

# AI walker to give suggestions
def suggest_destination(budget: int, activity: str, duration: int, continent: str) -> str by llm();

walker TravelPlanner {
    has budget: int;
    has activity: str;
    has duration: int;
    has continent: str;

    can start with `root entry;
    can recommend with decision entry;
}

node decision {
    has recommended: str = "";
}

# CLI entry example
with entry:__main__ {
    root spawn TravelPlanner(1000, "beach", 7, "Africa");
    root spawn TravelPlanner(2500, "hiking", 10, "Europe");
}
