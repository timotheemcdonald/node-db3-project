const db = require('../data/db-config')

module.exports = {
    find,
    findById,
    findSteps,
    add,
    update,
    remove
}

function find() {
    return db('schemes')
}

function findById(id) {
    return db('schemes').where({ id})
}

function findSteps(id) {
    return db('steps')
    .join('schemes', 'schemes.id', 'steps.scheme_id')
    .select('steps.id', 'steps.instructions','schemes.scheme_name')
    .where('steps.scheme_id', '=', id)
}


function add(scheme) {
    return db('schemes').insert(scheme, 'id')
}

function update(changes, id){
    return db('schemes').where({id}).update(changes)
}

function remove(id) {
    return db('schemes').where({id}).del()
}