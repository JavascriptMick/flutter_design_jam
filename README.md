# Flutter Design Jam

A Naive First try at Flutter Architecture with bloc

## I am very Opinionated

I am the creator of a moderately popular SaaS framework called SupaNuxt SaaS and it's [architecture](https://github.com/JavascriptMick/supanuxt-saas?tab=readme-ov-file#architecture) is pretty opinionated. I like separation of concerns, I like service layers.

## Constraints/Goals

- The app needs to talk to a rest api that I host (I have used jsonplaceholder as a proxy for this)

## Roast Me

This project uses [bloc](https://github.com/felangel/bloc/tree/master) to manage global state. I looked at a number of alternatives but bloc seems to still be meta and I like that it is established and has a big community.

I did go through the [bloc weather tutorial](https://bloclibrary.dev/tutorials/flutter-weather/) and the [bloc architecture tutorial](https://bloclibrary.dev/architecture/) but I didn't feel like that very heavy and layered approach was warranted as a starting point. I want to move fast, I like to keep things simple.

So based on the [core bloc concepts](https://bloclibrary.dev/bloc-concepts/) and 20 years of experience banging out user interfaces, this is my best try at a bloc starting point.

_Roast Me_ - I am going to use this approach to refactor a flutter app which is a key part of a startup. I'm not interested in a philosophical debate on architecture but I do want to know...

- What about this approach will require major refactors later?
- Have I missed opportunities for testing or security?
