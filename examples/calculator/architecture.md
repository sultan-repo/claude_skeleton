# Calculator Architecture

## System overview

A client-side application with a presentation layer and a separate calculation domain module.

## Components

- User interface
- Calculation engine
- History store
- Test suite

## Design principles

- Keep calculation logic independent from the UI.
- Use the simplest state-management approach supported by the chosen framework.
- Avoid a backend unless requirements later require synchronization or accounts.
