TableauView = require './tableau-view'
{CompositeDisposable} = require 'atom'

module.exports = Tableau =
  tableauView: null
  modalPanel: null
  subscriptions: null

  activate: (state) ->
    @tableauView = new TableauView(state.tableauViewState)
    @modalPanel = atom.workspace.addModalPanel(item: @tableauView.getElement(), visible: false)

    # Events subscribed to in atom's system can be easily cleaned up with a CompositeDisposable
    @subscriptions = new CompositeDisposable

    # Register command that toggles this view
    @subscriptions.add atom.commands.add 'atom-workspace', 'tableau:toggle': => @toggle()

  deactivate: ->
    @modalPanel.destroy()
    @subscriptions.dispose()
    @tableauView.destroy()

  serialize: ->
    tableauViewState: @tableauView.serialize()

  toggle: ->
    console.log 'Tableau was toggled!'

    if @modalPanel.isVisible()
      @modalPanel.hide()
    else
      @modalPanel.show()
