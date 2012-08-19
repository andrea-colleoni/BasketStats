package info.colleoni.basketstats



import org.junit.*
import grails.test.mixin.*

@TestFor(StatisticsController)
@Mock(Statistics)
class StatisticsControllerTests {

    def populateValidParams(params) {
        assert params != null
        // TODO: Populate valid properties like...
        //params["name"] = 'someValidName'
    }

    void testIndex() {
        controller.index()
        assert "/statistics/list" == response.redirectedUrl
    }

    void testList() {

        def model = controller.list()

        assert model.statisticsInstanceList.size() == 0
        assert model.statisticsInstanceTotal == 0
    }

    void testCreate() {
        def model = controller.create()

        assert model.statisticsInstance != null
    }

    void testSave() {
        controller.save()

        assert model.statisticsInstance != null
        assert view == '/statistics/create'

        response.reset()

        populateValidParams(params)
        controller.save()

        assert response.redirectedUrl == '/statistics/show/1'
        assert controller.flash.message != null
        assert Statistics.count() == 1
    }

    void testShow() {
        controller.show()

        assert flash.message != null
        assert response.redirectedUrl == '/statistics/list'

        populateValidParams(params)
        def statistics = new Statistics(params)

        assert statistics.save() != null

        params.id = statistics.id

        def model = controller.show()

        assert model.statisticsInstance == statistics
    }

    void testEdit() {
        controller.edit()

        assert flash.message != null
        assert response.redirectedUrl == '/statistics/list'

        populateValidParams(params)
        def statistics = new Statistics(params)

        assert statistics.save() != null

        params.id = statistics.id

        def model = controller.edit()

        assert model.statisticsInstance == statistics
    }

    void testUpdate() {
        controller.update()

        assert flash.message != null
        assert response.redirectedUrl == '/statistics/list'

        response.reset()

        populateValidParams(params)
        def statistics = new Statistics(params)

        assert statistics.save() != null

        // test invalid parameters in update
        params.id = statistics.id
        //TODO: add invalid values to params object

        controller.update()

        assert view == "/statistics/edit"
        assert model.statisticsInstance != null

        statistics.clearErrors()

        populateValidParams(params)
        controller.update()

        assert response.redirectedUrl == "/statistics/show/$statistics.id"
        assert flash.message != null

        //test outdated version number
        response.reset()
        statistics.clearErrors()

        populateValidParams(params)
        params.id = statistics.id
        params.version = -1
        controller.update()

        assert view == "/statistics/edit"
        assert model.statisticsInstance != null
        assert model.statisticsInstance.errors.getFieldError('version')
        assert flash.message != null
    }

    void testDelete() {
        controller.delete()
        assert flash.message != null
        assert response.redirectedUrl == '/statistics/list'

        response.reset()

        populateValidParams(params)
        def statistics = new Statistics(params)

        assert statistics.save() != null
        assert Statistics.count() == 1

        params.id = statistics.id

        controller.delete()

        assert Statistics.count() == 0
        assert Statistics.get(statistics.id) == null
        assert response.redirectedUrl == '/statistics/list'
    }
}
