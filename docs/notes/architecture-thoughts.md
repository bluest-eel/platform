# Initial Architecture

* State Engine
* Compute Engine
* Web Console
* Messaging

## State Engine

### Requirements

* Must track world state
* Must trac agent state

## Compute Engine

### Requirements

* Must support any programming language
* Must provide a clean definition of "model"
* Must allow users to easily define models
  * Declare world parameters (default, min, max for each)
  * Declare agent parameters (default, min, max for each)
  * Provide means for compute run user-provided computations

## Web Consule

### Requirements

* Show visual representation of model
* Allow for adjustments of world/agent parameters
* Provide view of model documentation
* Provide stats/monitoring data on system
* Provide admin-level functionality for system

## Messaging

### Requirements

* Handles millions of requests per second
* Integrate easily with all other components
