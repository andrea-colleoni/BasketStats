package info.colleoni.basketstats



import org.junit.*
import grails.test.mixin.*

@TestFor(RosterController)
@Mock(Roster)
class RosterControllerTests {

    def populateValidParams(params) {
        assert params != null
        // TODO: Populate valid properties like...
        //params["name"] = 'someValidName'
    }

    void testIndex() {
        controller.index()
        assert "/roster/list" == response.redirectedUrl
    }

    void testList() {

        def model = controller.list()

        assert model.rosterInstanceList.size() == 0
        assert model.rosterInstanceTotal == 0
    }

    void testCreate() {
        def model = controller.create()

        assert model.rosterInstance != null
    }

    void testSave() {
        controller.save()

        assert model.rosterInstance != null
        assert view == '/roster/create'

        response.reset()

        populateValidParams(params)
        controller.save()

        assert response.redirectedUrl == '/roster/show/1'
        assert controller.flash.message != null
        assert Roster.count() == 1
    }

    void testShow() {
        controller.show()

        assert flash.message != null
        assert response.redirectedUrl == '/roster/list'

        populateValidParams(params)
        def roster = new Roster(params)

        assert roster.save() != null

        params.id = roster.id

        def model = controller.show()

        assert model.rosterInstance == roster
    }

    void testEdit() {
        controller.edit()

        assert flash.message != null
        assert response.redirectedUrl == '/roster/list'

        populateValidParams(params)
        def roster = new Roster(params)

        assert roster.save() != null

        params.id = roster.id

        def model = controller.edit()

        assert model.rosterInstance == roster
    }

    void testUpdate() {
        controller.update()

        assert flash.message != null
        assert response.redirectedUrl == '/roster/list'

        response.reset()

        populateValidParams(params)
        def roster = new Roster(params)

        assert roster.save() != null

        // test invalid parameters in update
        params.id = roster.id
        //TODO: add invalid values to params object

        controller.update()

        assert view == "/roster/edit"
        assert model.rosterInstance != null

        roster.clearErrors()

        populateValidParams(params)
        controller.update()

        assert response.redirectedUrl == "/roster/show/$roster.id"
        assert flash.message != null

        //test outdated version number
        response.reset()
        roster.clearErrors()

        populateValidParams(params)
        params.id = roster.id
        params.version = -1
        controller.update()

        assert view == "/roster/edit"
        assert model.rosterInstance != null
        assert model.rosterInstance.errors.getFieldError('version')
        assert flash.message != null
    }

    void testDelete() {
        controller.delete()
        assert flash.message != null
        assert response.redirectedUrl == '/roster/list'

        response.reset()

        populateValidParams(params)
        def roster = new Roster(params)

        assert roster.save() != null
        assert Roster.count() == 1

        params.id = roster.id

        controller.delete()

        assert Roster.count() == 0
        assert Roster.get(roster.id) == null
        assert response.redirectedUrl == '/roster/list'
    }
}
