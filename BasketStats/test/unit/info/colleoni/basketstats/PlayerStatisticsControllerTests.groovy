package info.colleoni.basketstats



import org.junit.*
import grails.test.mixin.*

@TestFor(PlayerStatisticsController)
@Mock(PlayerStatistics)
class PlayerStatisticsControllerTests {

    def populateValidParams(params) {
        assert params != null
        // TODO: Populate valid properties like...
        //params["name"] = 'someValidName'
    }

    void testIndex() {
        controller.index()
        assert "/playerStatistics/list" == response.redirectedUrl
    }

    void testList() {

        def model = controller.list()

        assert model.playerStatisticsInstanceList.size() == 0
        assert model.playerStatisticsInstanceTotal == 0
    }

    void testCreate() {
        def model = controller.create()

        assert model.playerStatisticsInstance != null
    }

    void testSave() {
        controller.save()

        assert model.playerStatisticsInstance != null
        assert view == '/playerStatistics/create'

        response.reset()

        populateValidParams(params)
        controller.save()

        assert response.redirectedUrl == '/playerStatistics/show/1'
        assert controller.flash.message != null
        assert PlayerStatistics.count() == 1
    }

    void testShow() {
        controller.show()

        assert flash.message != null
        assert response.redirectedUrl == '/playerStatistics/list'

        populateValidParams(params)
        def playerStatistics = new PlayerStatistics(params)

        assert playerStatistics.save() != null

        params.id = playerStatistics.id

        def model = controller.show()

        assert model.playerStatisticsInstance == playerStatistics
    }

    void testEdit() {
        controller.edit()

        assert flash.message != null
        assert response.redirectedUrl == '/playerStatistics/list'

        populateValidParams(params)
        def playerStatistics = new PlayerStatistics(params)

        assert playerStatistics.save() != null

        params.id = playerStatistics.id

        def model = controller.edit()

        assert model.playerStatisticsInstance == playerStatistics
    }

    void testUpdate() {
        controller.update()

        assert flash.message != null
        assert response.redirectedUrl == '/playerStatistics/list'

        response.reset()

        populateValidParams(params)
        def playerStatistics = new PlayerStatistics(params)

        assert playerStatistics.save() != null

        // test invalid parameters in update
        params.id = playerStatistics.id
        //TODO: add invalid values to params object

        controller.update()

        assert view == "/playerStatistics/edit"
        assert model.playerStatisticsInstance != null

        playerStatistics.clearErrors()

        populateValidParams(params)
        controller.update()

        assert response.redirectedUrl == "/playerStatistics/show/$playerStatistics.id"
        assert flash.message != null

        //test outdated version number
        response.reset()
        playerStatistics.clearErrors()

        populateValidParams(params)
        params.id = playerStatistics.id
        params.version = -1
        controller.update()

        assert view == "/playerStatistics/edit"
        assert model.playerStatisticsInstance != null
        assert model.playerStatisticsInstance.errors.getFieldError('version')
        assert flash.message != null
    }

    void testDelete() {
        controller.delete()
        assert flash.message != null
        assert response.redirectedUrl == '/playerStatistics/list'

        response.reset()

        populateValidParams(params)
        def playerStatistics = new PlayerStatistics(params)

        assert playerStatistics.save() != null
        assert PlayerStatistics.count() == 1

        params.id = playerStatistics.id

        controller.delete()

        assert PlayerStatistics.count() == 0
        assert PlayerStatistics.get(playerStatistics.id) == null
        assert response.redirectedUrl == '/playerStatistics/list'
    }
}
