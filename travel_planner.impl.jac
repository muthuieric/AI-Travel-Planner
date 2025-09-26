impl TravelPlanner.start {
    if not [root --> (`?decision)] {
        next = root ++> decision("");
    } else {
        next = [root --> (`?decision)];
    }
    visit next;
}

impl TravelPlanner.recommend {
    if [-->] {
        visit [-->];
    } else {
        # Randomly generate a destination for demo purposes
        destinations = ["Kenya", "Thailand", "Italy", "Peru", "Japan"];
        selected = random.choice(destinations);

        print(f"🌍 Suggested destination: {selected}!");
        # AI provides tips or explanation
        print(suggest_destination(self.budget, self.activity, self.duration, self.continent));

        disengage;
    }
}
