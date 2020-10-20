const db = require("../data/config")

function find() {
    return db("schemes")
}

function findById(id){
    return db("schemes")
        .where("id", id)
}

function findSteps(id){
    return db("steps")
        .innerJoin("schemes", "steps.scheme_id", "schemes.id")
        .where("steps.scheme_id", id)
        .select("steps.step_number", "steps.id", "steps.instructions", "schemes.scheme_name")
        .orderBy("steps.step_number")
}

function add(scheme) {
    return db("schemes").insert(scheme)
}

function update(changes, id) {
    return db("schemes").where("id", id).update(changes)
}

function remove(id) {
    return db("schemes").where("id", id).del()
}

module.exports = {
    find,
    findById,
    findSteps,
    add,
    update,
    remove
}