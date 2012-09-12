package info.colleoni.basketstats

import org.springframework.dao.DataIntegrityViolationException

class PlayerSetController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        [playerSetInstanceList: PlayerSet.list(params), playerSetInstanceTotal: PlayerSet.count()]
    }

    def create() {
        [playerSetInstance: new PlayerSet(params)]
    }

    def save() {
        def playerSetInstance = new PlayerSet(params)
        if (!playerSetInstance.save(flush: true)) {
            render(view: "create", model: [playerSetInstance: playerSetInstance])
            return
        }

        flash.message = message(code: 'default.created.message', args: [message(code: 'playerSet.label', default: 'PlayerSet'), playerSetInstance.id])
        redirect(action: "show", id: playerSetInstance.id)
    }

    def show(Long id) {
        def playerSetInstance = PlayerSet.get(id)
        if (!playerSetInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'playerSet.label', default: 'PlayerSet'), id])
            redirect(action: "list")
            return
        }

        [playerSetInstance: playerSetInstance]
    }

    def edit(Long id) {
        def playerSetInstance = PlayerSet.get(id)
        if (!playerSetInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'playerSet.label', default: 'PlayerSet'), id])
            redirect(action: "list")
            return
        }

        [playerSetInstance: playerSetInstance]
    }

    def update(Long id, Long version) {
        def playerSetInstance = PlayerSet.get(id)
        if (!playerSetInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'playerSet.label', default: 'PlayerSet'), id])
            redirect(action: "list")
            return
        }

        if (version != null) {
            if (playerSetInstance.version > version) {
                playerSetInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                          [message(code: 'playerSet.label', default: 'PlayerSet')] as Object[],
                          "Another user has updated this PlayerSet while you were editing")
                render(view: "edit", model: [playerSetInstance: playerSetInstance])
                return
            }
        }

        playerSetInstance.properties = params

        if (!playerSetInstance.save(flush: true)) {
            render(view: "edit", model: [playerSetInstance: playerSetInstance])
            return
        }

        flash.message = message(code: 'default.updated.message', args: [message(code: 'playerSet.label', default: 'PlayerSet'), playerSetInstance.id])
        redirect(action: "show", id: playerSetInstance.id)
    }

    def delete(Long id) {
        def playerSetInstance = PlayerSet.get(id)
        if (!playerSetInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'playerSet.label', default: 'PlayerSet'), id])
            redirect(action: "list")
            return
        }

        try {
            playerSetInstance.delete(flush: true)
            flash.message = message(code: 'default.deleted.message', args: [message(code: 'playerSet.label', default: 'PlayerSet'), id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
            flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'playerSet.label', default: 'PlayerSet'), id])
            redirect(action: "show", id: id)
        }
    }
}
