package info.colleoni.basketstats

import org.springframework.dao.DataIntegrityViolationException

class MatchCallController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        [matchCallInstanceList: MatchCall.list(params), matchCallInstanceTotal: MatchCall.count()]
    }

    def create() {
        [matchCallInstance: new MatchCall(params)]
    }

    def save() {
        def matchCallInstance = new MatchCall(params)
        if (!matchCallInstance.save(flush: true)) {
            render(view: "create", model: [matchCallInstance: matchCallInstance])
            return
        }

        flash.message = message(code: 'default.created.message', args: [message(code: 'matchCall.label', default: 'MatchCall'), matchCallInstance.id])
        redirect(action: "show", id: matchCallInstance.id)
    }

    def show(Long id) {
        def matchCallInstance = MatchCall.get(id)
        if (!matchCallInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'matchCall.label', default: 'MatchCall'), id])
            redirect(action: "list")
            return
        }

        [matchCallInstance: matchCallInstance]
    }

    def edit(Long id) {
        def matchCallInstance = MatchCall.get(id)
        if (!matchCallInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'matchCall.label', default: 'MatchCall'), id])
            redirect(action: "list")
            return
        }

        [matchCallInstance: matchCallInstance]
    }

    def update(Long id, Long version) {
        def matchCallInstance = MatchCall.get(id)
        if (!matchCallInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'matchCall.label', default: 'MatchCall'), id])
            redirect(action: "list")
            return
        }

        if (version != null) {
            if (matchCallInstance.version > version) {
                matchCallInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                          [message(code: 'matchCall.label', default: 'MatchCall')] as Object[],
                          "Another user has updated this MatchCall while you were editing")
                render(view: "edit", model: [matchCallInstance: matchCallInstance])
                return
            }
        }

        matchCallInstance.properties = params

        if (!matchCallInstance.save(flush: true)) {
            render(view: "edit", model: [matchCallInstance: matchCallInstance])
            return
        }

        flash.message = message(code: 'default.updated.message', args: [message(code: 'matchCall.label', default: 'MatchCall'), matchCallInstance.id])
        redirect(action: "show", id: matchCallInstance.id)
    }

    def delete(Long id) {
        def matchCallInstance = MatchCall.get(id)
        if (!matchCallInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'matchCall.label', default: 'MatchCall'), id])
            redirect(action: "list")
            return
        }

        try {
            matchCallInstance.delete(flush: true)
            flash.message = message(code: 'default.deleted.message', args: [message(code: 'matchCall.label', default: 'MatchCall'), id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
            flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'matchCall.label', default: 'MatchCall'), id])
            redirect(action: "show", id: id)
        }
    }
}
