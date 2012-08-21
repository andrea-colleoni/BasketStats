package info.colleoni.basketstats

import org.springframework.dao.DataIntegrityViolationException

class ChampionshipPhaseController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        [championshipPhaseInstanceList: ChampionshipPhase.list(params), championshipPhaseInstanceTotal: ChampionshipPhase.count()]
    }

    def create() {
        [championshipPhaseInstance: new ChampionshipPhase(params)]
    }

    def save() {
        def championshipPhaseInstance = new ChampionshipPhase(params)
        if (!championshipPhaseInstance.save(flush: true)) {
            render(view: "create", model: [championshipPhaseInstance: championshipPhaseInstance])
            return
        }

        flash.message = message(code: 'default.created.message', args: [message(code: 'championshipPhase.label', default: 'ChampionshipPhase'), championshipPhaseInstance.id])
        redirect(action: "show", id: championshipPhaseInstance.id)
    }

    def show(Long id) {
        def championshipPhaseInstance = ChampionshipPhase.get(id)
        if (!championshipPhaseInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'championshipPhase.label', default: 'ChampionshipPhase'), id])
            redirect(action: "list")
            return
        }

        [championshipPhaseInstance: championshipPhaseInstance]
    }

    def edit(Long id) {
        def championshipPhaseInstance = ChampionshipPhase.get(id)
        if (!championshipPhaseInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'championshipPhase.label', default: 'ChampionshipPhase'), id])
            redirect(action: "list")
            return
        }

        [championshipPhaseInstance: championshipPhaseInstance]
    }

    def update(Long id, Long version) {
        def championshipPhaseInstance = ChampionshipPhase.get(id)
        if (!championshipPhaseInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'championshipPhase.label', default: 'ChampionshipPhase'), id])
            redirect(action: "list")
            return
        }

        if (version != null) {
            if (championshipPhaseInstance.version > version) {
                championshipPhaseInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                          [message(code: 'championshipPhase.label', default: 'ChampionshipPhase')] as Object[],
                          "Another user has updated this ChampionshipPhase while you were editing")
                render(view: "edit", model: [championshipPhaseInstance: championshipPhaseInstance])
                return
            }
        }

        championshipPhaseInstance.properties = params

        if (!championshipPhaseInstance.save(flush: true)) {
            render(view: "edit", model: [championshipPhaseInstance: championshipPhaseInstance])
            return
        }

        flash.message = message(code: 'default.updated.message', args: [message(code: 'championshipPhase.label', default: 'ChampionshipPhase'), championshipPhaseInstance.id])
        redirect(action: "show", id: championshipPhaseInstance.id)
    }

    def delete(Long id) {
        def championshipPhaseInstance = ChampionshipPhase.get(id)
        if (!championshipPhaseInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'championshipPhase.label', default: 'ChampionshipPhase'), id])
            redirect(action: "list")
            return
        }

        try {
            championshipPhaseInstance.delete(flush: true)
            flash.message = message(code: 'default.deleted.message', args: [message(code: 'championshipPhase.label', default: 'ChampionshipPhase'), id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
            flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'championshipPhase.label', default: 'ChampionshipPhase'), id])
            redirect(action: "show", id: id)
        }
    }
}
