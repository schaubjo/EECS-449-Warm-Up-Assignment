walker interact {
    can return_message with `root entry {
        report {"response": "Hello, world!"};
    }
}

walker interact_with_body {
    has name: str;

    can return_message with `root entry {
        report {"response": "Hello, " + self.name + "!"};
    }
}

walker multiply {
    has a: int;
    has b: int;

    can return_message with `root entry {
        let res = self.a * self.b;
        report {"response": "Product = " + str(res)};
    }
}

walker guess_number {
    has guess: int;

    can return_message with `root entry {
        if (self.guess == 7) {
            report {"response": "You win!"};
        }
        else {
        report {"response": "Terrible guess. Try again."};
        }
    }
}
