package fr.centredeloisirs.api

import jakarta.ws.rs.GET
import jakarta.ws.rs.Path

@Path("/example")
class ExampleController {
    @GET
    fun getExample(): String {
        return "Hello World"
    }
}
