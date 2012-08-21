package info.colleoni.basketstats



import org.junit.*
import grails.test.mixin.*

@TestFor(ChampionshipPhaseController)
@Mock(ChampionshipPhase)
class ChampionshipPhaseControllerTests {

    def populateValidParams(params) {
        assert params != null
        // TODO: Populate valid properties like...
        //params["name"] = 'someValidName'
    }

    void testIndex() {
        controller.index()
        assert "/championshipPhase/list" == response.redirectedUrl
    }

    void testList() {

        def model = controller.list()

        assert model.championshipPhaseInstanceList.size() == 0
        assert model.championshipPhaseInstanceTotal == 0
    }

    void testCreate() {
        def model = controller.create()

        assert model.championshipPhaseInstance != null
    }

    void testSave() {
        controller.save()

        assert model.championshipPhaseInstance != null
        assert view == '/championshipPhase/create'

        response.reset()

        populateValidParams(params)
        controller.save()

        assert response.redirectedUrl == '/championshipPhase/show/1'
        assert controller.flash.message != null
        assert ChampionshipPhase.count() == 1
    }

    void testShow() {
        controller.show()

        assert flash.message != null
        assert response.redirectedUrl == '/championshipPhase/list'

        populateValidParams(params)
        def championshipPhase = new ChampionshipPhase(params)

        assert championshipPhase.save() != null

        params.id = championshipPhase.id

        def model = controller.show()

        assert model.championshipPhaseInstance == championshipPhase
    }

    void testEdit() {
        controller.edit()

        assert flash.message != null
        assert response.redirectedUrl == '/championshipPhase/list'

        populateValidParams(params)
        def championshipPhase = new ChampionshipPhase(params)

        assert championshipPhase.save() != null

        params.id = championshipPhase.id

        def model = controller.edit()

        assert model.championshipPhaseInstance == championshipPhase
    }

    void testUpdate() {
        controller.update()

        assert flash.message != null
        assert response.redirectedUrl == '/championshipPhase/list'

        response.reset()

        populateValidParams(params)
        def championshipPhase = new ChampionshipPhase(params)

        assert championshipPhase.save() != null

        // test invalid parameters in update
        params.id = championshipPhase.id
        //TODO: add invalid values to params object

        controller.update()

        assert view == "/championshipPhase/edit"
        assert model.championshipPhaseInstance != null

        championshipPhase.clearErrors()

        populateValidParams(params)
        controller.update()

        assert response.redirectedUrl == "/championshipPhase/show/$championshipPhase.id"
        assert flash.message != null

        //test outdated version number
        response.reset()
        championshipPhase.clearErrors()

        populateValidParams(params)
        params.id = championshipPhase.id
        params.version = -1
        controller.update()

        assert view == "/championshipPhase/edit"
        assert model.championshipPhaseInstance != null
        assert model.championshipPhaseInstance.errors.getFieldError('version')
        assert flash.message != null
    }

    void testDelete() {
        controller.delete()
        assert flash.message != null
        assert response.redirectedUrl == '/championshipPhase/list'

        response.reset()

        populateValidParams(params)
        def championshipPhase = new ChampionshipPhase(params)

        assert championshipPhase.save() != null
        assert ChampionshipPhase.count() == 1

        params.id = championshipPhase.id

        controller.delete()

        assert ChampionshipPhase.count() == 0
        assert ChampionshipPhase.get(championshipPhase.id) == null
        assert response.redirectedUrl == '/championshipPhase/list'
    }
}
