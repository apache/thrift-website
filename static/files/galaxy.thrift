/**
 * Now onto the interesting part — defining a service.
 *
 * Define a service using a simple, language-neutral interface.
 * Methods define inputs, outputs, and optional exceptions.
 */
service Galaxy {
  /**
   * Retrieves detailed information about a star system.
   */
  StarSystem getSystem(1:string systemId),

  /**
   * Calculates a navigation path, accounting for distance and hazards.
   */
  Trajectory plotCourse(1:string fromSystem, 2:string toSystem) throws (1:NavigationError err),
}

/**
 * A star system represents a single navigable region in the galaxy.
 */
struct StarSystem {
  1: string id
}

/**
 * A trajectory describes a computed route between star systems.
 */
struct Trajectory {
  1: list<string> path
}

exception NavigationError {
  1: string message
}
