package info.colleoni.basketstats

import org.springframework.dao.DataIntegrityViolationException

class StatisticsController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        [statisticsInstanceList: Statistics.list(params), statisticsInstanceTotal: Statistics.count()]
    }

    def create() {
        [statisticsInstance: new Statistics(params)]
    }

    def save() {
        def statisticsInstance = new Statistics(params)
        if (!statisticsInstance.save(flush: true)) {
            render(view: "create", model: [statisticsInstance: statisticsInstance])
            return
        }

        flash.message = message(code: 'default.created.message', args: [message(code: 'statistics.label', default: 'Statistics'), statisticsInstance.id])
        redirect(action: "show", id: statisticsInstance.id)
    }

    def show(Long id) {
        def statisticsInstance = Statistics.get(id)
        if (!statisticsInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'statistics.label', default: 'Statistics'), id])
            redirect(action: "list")
            return
        }

        [statisticsInstance: statisticsInstance]
    }

    def edit(Long id) {
        def statisticsInstance = Statistics.get(id)
        if (!statisticsInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'statistics.label', default: 'Statistics'), id])
            redirect(action: "list")
            return
        }

        [statisticsInstance: statisticsInstance]
    }

    def update(Long id, Long version) {
        def statisticsInstance = Statistics.get(id)
        if (!statisticsInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'statistics.label', default: 'Statistics'), id])
            redirect(action: "list")
            return
        }

        if (version != null) {
            if (statisticsInstance.version > version) {
                statisticsInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                          [message(code: 'statistics.label', default: 'Statistics')] as Object[],
                          "Another user has updated this Statistics while you were editing")
                render(view: "edit", model: [statisticsInstance: statisticsInstance])
                return
            }
        }

        statisticsInstance.properties = params

        if (!statisticsInstance.save(flush: true)) {
            render(view: "edit", model: [statisticsInstance: statisticsInstance])
            return
        }

        flash.message = message(code: 'default.updated.message', args: [message(code: 'statistics.label', default: 'Statistics'), statisticsInstance.id])
        redirect(action: "show", id: statisticsInstance.id)
    }

    def delete(Long id) {
        def statisticsInstance = Statistics.get(id)
        if (!statisticsInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'statistics.label', default: 'Statistics'), id])
            redirect(action: "list")
            return
        }

        try {
            statisticsInstance.delete(flush: true)
            flash.message = message(code: 'default.deleted.message', args: [message(code: 'statistics.label', default: 'Statistics'), id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
            flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'statistics.label', default: 'Statistics'), id])
            redirect(action: "show", id: id)
        }
    }
}
