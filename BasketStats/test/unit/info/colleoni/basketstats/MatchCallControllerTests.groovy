package info.colleoni.basketstats



import org.junit.*
import grails.test.mixin.*

@TestFor(MatchCallController)
@Mock(MatchCall)
class MatchCallControllerTests {

    def populateValidParams(params) {
        assert params != null
        // TODO: Populate valid properties like...
        //params["name"] = 'someValidName'
    }

    void testIndex() {
        controller.index()
        assert "/matchCall/list" == response.redirectedUrl
    }

    void testList() {

        def model = controller.list()

        assert model.matchCallInstanceList.size() == 0
        assert model.matchCallInstanceTotal == 0
    }

    void testCreate() {
        def model = controller.create()

        assert model.matchCallInstance != null
    }

    void testSave() {
        controller.save()

        assert model.matchCallInstance != null
        assert view == '/matchCall/create'

        response.reset()

        populateValidParams(params)
        controller.save()

        assert response.redirectedUrl == '/matchCall/show/1'
        assert controller.flash.message != null
        assert MatchCall.count() == 1
    }

    void testShow() {
        controller.show()

        assert flash.message != null
        assert response.redirectedUrl == '/matchCall/list'

        populateValidParams(params)
        def matchCall = new MatchCall(params)

        assert matchCall.save() != null

        params.id = matchCall.id

        def model = controller.show()

        assert model.matchCallInstance == matchCall
    }

    void testEdit() {
        controller.edit()

        assert flash.message != null
        assert response.redirectedUrl == '/matchCall/list'

        populateValidParams(params)
        def matchCall = new MatchCall(params)

        assert matchCall.save() != null

        params.id = matchCall.id

        def model = controller.edit()

        assert model.matchCallInstance == matchCall
    }

    void testUpdate() {
        controller.update()

        assert flash.message != null
        assert response.redirectedUrl == '/matchCall/list'

        response.reset()

        populateValidParams(params)
        def matchCall = new MatchCall(params)

        assert matchCall.save() != null

        // test invalid parameters in update
        params.id = matchCall.id
        //TODO: add invalid values to params object

        controller.update()

        assert view == "/matchCall/edit"
        assert model.matchCallInstance != null

        matchCall.clearErrors()

        populateValidParams(params)
        controller.update()

        assert response.redirectedUrl == "/matchCall/show/$matchCall.id"
        assert flash.message != null

        //test outdated version number
        response.reset()
        matchCall.clearErrors()

        populateValidParams(params)
        params.id = matchCall.id
        params.version = -1
        controller.update()

        assert view == "/matchCall/edit"
        assert model.matchCallInstance != null
        assert model.matchCallInstance.errors.getFieldError('version')
        assert flash.message != null
    }

    void testDelete() {
        controller.delete()
        assert flash.message != null
        assert response.redirectedUrl == '/matchCall/list'

        response.reset()

        populateValidParams(params)
        def matchCall = new MatchCall(params)

        assert matchCall.save() != null
        assert MatchCall.count() == 1

        params.id = matchCall.id

        controller.delete()

        assert MatchCall.count() == 0
        assert MatchCall.get(matchCall.id) == null
        assert response.redirectedUrl == '/matchCall/list'
    }
}
