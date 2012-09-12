package info.colleoni.basketstats



import org.junit.*
import grails.test.mixin.*

@TestFor(PlayerSetController)
@Mock(PlayerSet)
class PlayerSetControllerTests {

    def populateValidParams(params) {
        assert params != null
        // TODO: Populate valid properties like...
        //params["name"] = 'someValidName'
    }

    void testIndex() {
        controller.index()
        assert "/playerSet/list" == response.redirectedUrl
    }

    void testList() {

        def model = controller.list()

        assert model.playerSetInstanceList.size() == 0
        assert model.playerSetInstanceTotal == 0
    }

    void testCreate() {
        def model = controller.create()

        assert model.playerSetInstance != null
    }

    void testSave() {
        controller.save()

        assert model.playerSetInstance != null
        assert view == '/playerSet/create'

        response.reset()

        populateValidParams(params)
        controller.save()

        assert response.redirectedUrl == '/playerSet/show/1'
        assert controller.flash.message != null
        assert PlayerSet.count() == 1
    }

    void testShow() {
        controller.show()

        assert flash.message != null
        assert response.redirectedUrl == '/playerSet/list'

        populateValidParams(params)
        def playerSet = new PlayerSet(params)

        assert playerSet.save() != null

        params.id = playerSet.id

        def model = controller.show()

        assert model.playerSetInstance == playerSet
    }

    void testEdit() {
        controller.edit()

        assert flash.message != null
        assert response.redirectedUrl == '/playerSet/list'

        populateValidParams(params)
        def playerSet = new PlayerSet(params)

        assert playerSet.save() != null

        params.id = playerSet.id

        def model = controller.edit()

        assert model.playerSetInstance == playerSet
    }

    void testUpdate() {
        controller.update()

        assert flash.message != null
        assert response.redirectedUrl == '/playerSet/list'

        response.reset()

        populateValidParams(params)
        def playerSet = new PlayerSet(params)

        assert playerSet.save() != null

        // test invalid parameters in update
        params.id = playerSet.id
        //TODO: add invalid values to params object

        controller.update()

        assert view == "/playerSet/edit"
        assert model.playerSetInstance != null

        playerSet.clearErrors()

        populateValidParams(params)
        controller.update()

        assert response.redirectedUrl == "/playerSet/show/$playerSet.id"
        assert flash.message != null

        //test outdated version number
        response.reset()
        playerSet.clearErrors()

        populateValidParams(params)
        params.id = playerSet.id
        params.version = -1
        controller.update()

        assert view == "/playerSet/edit"
        assert model.playerSetInstance != null
        assert model.playerSetInstance.errors.getFieldError('version')
        assert flash.message != null
    }

    void testDelete() {
        controller.delete()
        assert flash.message != null
        assert response.redirectedUrl == '/playerSet/list'

        response.reset()

        populateValidParams(params)
        def playerSet = new PlayerSet(params)

        assert playerSet.save() != null
        assert PlayerSet.count() == 1

        params.id = playerSet.id

        controller.delete()

        assert PlayerSet.count() == 0
        assert PlayerSet.get(playerSet.id) == null
        assert response.redirectedUrl == '/playerSet/list'
    }
}
