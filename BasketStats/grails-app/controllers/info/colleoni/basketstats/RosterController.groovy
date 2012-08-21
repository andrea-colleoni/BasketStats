package info.colleoni.basketstats

import org.springframework.dao.DataIntegrityViolationException

class RosterController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        [rosterInstanceList: Roster.list(params), rosterInstanceTotal: Roster.count()]
    }

    def create() {
        [rosterInstance: new Roster(params)]
    }

    def save() {
        def rosterInstance = new Roster(params)
        if (!rosterInstance.save(flush: true)) {
            render(view: "create", model: [rosterInstance: rosterInstance])
            return
        }

        flash.message = message(code: 'default.created.message', args: [message(code: 'roster.label', default: 'Roster'), rosterInstance.id])
        redirect(action: "show", id: rosterInstance.id)
    }

    def show(Long id) {
        def rosterInstance = Roster.get(id)
        if (!rosterInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'roster.label', default: 'Roster'), id])
            redirect(action: "list")
            return
        }

        [rosterInstance: rosterInstance]
    }

    def edit(Long id) {
        def rosterInstance = Roster.get(id)
        if (!rosterInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'roster.label', default: 'Roster'), id])
            redirect(action: "list")
            return
        }

        [rosterInstance: rosterInstance]
    }

    def update(Long id, Long version) {
        def rosterInstance = Roster.get(id)
        if (!rosterInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'roster.label', default: 'Roster'), id])
            redirect(action: "list")
            return
        }

        if (version != null) {
            if (rosterInstance.version > version) {
                rosterInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                          [message(code: 'roster.label', default: 'Roster')] as Object[],
                          "Another user has updated this Roster while you were editing")
                render(view: "edit", model: [rosterInstance: rosterInstance])
                return
            }
        }

        rosterInstance.properties = params

        if (!rosterInstance.save(flush: true)) {
            render(view: "edit", model: [rosterInstance: rosterInstance])
            return
        }

        flash.message = message(code: 'default.updated.message', args: [message(code: 'roster.label', default: 'Roster'), rosterInstance.id])
        redirect(action: "show", id: rosterInstance.id)
    }

    def delete(Long id) {
        def rosterInstance = Roster.get(id)
        if (!rosterInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'roster.label', default: 'Roster'), id])
            redirect(action: "list")
            return
        }

        try {
            rosterInstance.delete(flush: true)
            flash.message = message(code: 'default.deleted.message', args: [message(code: 'roster.label', default: 'Roster'), id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
            flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'roster.label', default: 'Roster'), id])
            redirect(action: "show", id: id)
        }
    }
}
