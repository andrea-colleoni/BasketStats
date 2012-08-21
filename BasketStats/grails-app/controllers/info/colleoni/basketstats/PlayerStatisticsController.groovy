package info.colleoni.basketstats

import org.springframework.dao.DataIntegrityViolationException

class PlayerStatisticsController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        [playerStatisticsInstanceList: PlayerStatistics.list(params), playerStatisticsInstanceTotal: PlayerStatistics.count()]
    }

    def create() {
        [playerStatisticsInstance: new PlayerStatistics(params)]
    }

    def save() {
        def playerStatisticsInstance = new PlayerStatistics(params)
        if (!playerStatisticsInstance.save(flush: true)) {
            render(view: "create", model: [playerStatisticsInstance: playerStatisticsInstance])
            return
        }

        flash.message = message(code: 'default.created.message', args: [message(code: 'playerStatistics.label', default: 'PlayerStatistics'), playerStatisticsInstance.id])
        redirect(action: "show", id: playerStatisticsInstance.id)
    }

    def show(Long id) {
        def playerStatisticsInstance = PlayerStatistics.get(id)
        if (!playerStatisticsInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'playerStatistics.label', default: 'PlayerStatistics'), id])
            redirect(action: "list")
            return
        }

        [playerStatisticsInstance: playerStatisticsInstance]
    }

    def edit(Long id) {
        def playerStatisticsInstance = PlayerStatistics.get(id)
        if (!playerStatisticsInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'playerStatistics.label', default: 'PlayerStatistics'), id])
            redirect(action: "list")
            return
        }

        [playerStatisticsInstance: playerStatisticsInstance]
    }

    def update(Long id, Long version) {
        def playerStatisticsInstance = PlayerStatistics.get(id)
        if (!playerStatisticsInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'playerStatistics.label', default: 'PlayerStatistics'), id])
            redirect(action: "list")
            return
        }

        if (version != null) {
            if (playerStatisticsInstance.version > version) {
                playerStatisticsInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                          [message(code: 'playerStatistics.label', default: 'PlayerStatistics')] as Object[],
                          "Another user has updated this PlayerStatistics while you were editing")
                render(view: "edit", model: [playerStatisticsInstance: playerStatisticsInstance])
                return
            }
        }

        playerStatisticsInstance.properties = params

        if (!playerStatisticsInstance.save(flush: true)) {
            render(view: "edit", model: [playerStatisticsInstance: playerStatisticsInstance])
            return
        }

        flash.message = message(code: 'default.updated.message', args: [message(code: 'playerStatistics.label', default: 'PlayerStatistics'), playerStatisticsInstance.id])
        redirect(action: "show", id: playerStatisticsInstance.id)
    }

    def delete(Long id) {
        def playerStatisticsInstance = PlayerStatistics.get(id)
        if (!playerStatisticsInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'playerStatistics.label', default: 'PlayerStatistics'), id])
            redirect(action: "list")
            return
        }

        try {
            playerStatisticsInstance.delete(flush: true)
            flash.message = message(code: 'default.deleted.message', args: [message(code: 'playerStatistics.label', default: 'PlayerStatistics'), id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
            flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'playerStatistics.label', default: 'PlayerStatistics'), id])
            redirect(action: "show", id: id)
        }
    }
}
