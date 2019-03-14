package react4j.todomvc;

import arez.annotations.CascadeDispose;
import arez.annotations.PostConstruct;
import elemental2.dom.HTMLInputElement;
import javax.annotation.Nonnull;
import javax.annotation.Nullable;
import jsinterop.base.Js;
import react4j.ReactNode;
import react4j.annotations.PostUpdate;
import react4j.annotations.Prop;
import react4j.annotations.ReactComponent;
import react4j.dom.events.FocusEvent;
import react4j.dom.events.FocusEventHandler;
import react4j.dom.events.FormEvent;
import react4j.dom.events.FormEventHandler;
import react4j.dom.events.KeyboardEvent;
import react4j.dom.events.KeyboardEventHandler;
import react4j.dom.events.MouseEvent;
import react4j.dom.events.MouseEventHandler;
import react4j.dom.proptypes.html.BtnProps;
import react4j.dom.proptypes.html.HtmlProps;
import react4j.dom.proptypes.html.InputProps;
import react4j.dom.proptypes.html.LabelProps;
import react4j.dom.proptypes.html.attributeTypes.InputType;
import react4j.todomvc.model.AppData;
import react4j.todomvc.model.Todo;
import static react4j.dom.DOM.*;

@ReactComponent
abstract class TodoItem
  extends SpritzComponent
{
  @CascadeDispose
  final CallbackAdapter<FormEvent, FormEventHandler> _handleChange = CallbackAdapter.form();
  @CascadeDispose
  final CallbackAdapter<FormEvent, FormEventHandler> _handleToggle = CallbackAdapter.form();
  @CascadeDispose
  final CallbackAdapter<MouseEvent, MouseEventHandler> _handleEdit = CallbackAdapter.mouse();
  @CascadeDispose
  final CallbackAdapter<MouseEvent, MouseEventHandler> _handleDestroy = CallbackAdapter.mouse();
  @CascadeDispose
  final CallbackAdapter<FocusEvent, FocusEventHandler> _handleBlur = CallbackAdapter.focus();
  @CascadeDispose
  final CallbackAdapter<KeyboardEvent, KeyboardEventHandler> _handleKeyDown = CallbackAdapter.keyboard();
  @Nullable
  private HTMLInputElement _editField;
  private boolean _isEditing;
  private String _editText;

  @Prop( immutable = true )
  @Nonnull
  abstract Todo getTodo();

  private void setEditText( @Nonnull final String editText )
  {
    _editText = editText;
    scheduleRender();
  }

  private void resetEditTextAndReRender()
  {
    setEditText( getTodo().getTitle() );
  }

  @PostConstruct
  final void postConstruct()
  {
    _editText = getTodo().getTitle();
    getTodo().subscribe( this::scheduleRender );
    register( _handleChange.stream().filter( e -> getTodo().isEditing() ).forEach( event -> {
      final HTMLInputElement input = Js.cast( event.getTarget() );
      setEditText( input.value );
    } ) );
    register( _handleToggle.stream().forEach( event -> AppData.service.toggle( getTodo() ) ) );
    register( _handleEdit.stream().forEach( e -> {
      AppData.service.setTodoBeingEdited( getTodo() );
      resetEditTextAndReRender();
    } ) );
    register( _handleDestroy.stream().forEach( e -> AppData.service.destroy( getTodo() ) ) );
    register( _handleBlur.stream().forEach( e -> onSubmitTodo() ) );
    register( _handleKeyDown.stream().filter( e -> KeyCodes.ESCAPE_KEY == e.getWhich() ).forEach( e -> {
      AppData.service.setTodoBeingEdited( null );
      resetEditTextAndReRender();
    } ) );
    register( _handleKeyDown.stream()
                .filter( e -> KeyCodes.ENTER_KEY == e.getWhich() )
                .forEach( e -> onSubmitTodo() ) );
  }

  private void onSubmitTodo()
  {
    if ( null != _editText && !_editText.isEmpty() )
    {
      AppData.service.save( getTodo(), _editText );
      AppData.service.setTodoBeingEdited( null );
      setEditText( _editText );
    }
    else
    {
      AppData.service.destroy( getTodo() );
    }
  }

  @PostUpdate
  final void postUpdate()
  {
    final boolean todoBeingEdited = getTodo().isEditing();
    if ( !_isEditing && todoBeingEdited )
    {
      _isEditing = true;
      assert null != _editField;
      _editField.focus();
      _editField.select();
      resetEditTextAndReRender();
    }
    else if ( _isEditing && !todoBeingEdited )
    {
      _isEditing = false;
    }
  }

  @Nullable
  @Override
  protected ReactNode render()
  {
    final Todo todo = getTodo();
    final boolean completed = todo.isCompleted();
    return li( new HtmlProps().className( completed ? "checked" : null, getTodo().isEditing() ? "editing" : null ),
               div( new HtmlProps().className( "view" ),
                    input( new InputProps()
                             .className( "toggle" )
                             .type( InputType.checkbox )
                             .checked( completed )
                             .onChange( _handleToggle.callback() )
                    ),
                    label( new LabelProps().onDoubleClick( _handleEdit.callback() ), todo.getTitle() ),
                    button( new BtnProps().className( "destroy" ).onClick( _handleDestroy.callback() )
                    )
               ),
               input( new InputProps()
                        .ref( e -> _editField = (HTMLInputElement) e )
                        .className( "edit" )
                        .defaultValue( _editText )
                        .onBlur( e -> onSubmitTodo() )
                        .onChange( _handleChange.callback() )
                        .onKeyDown( _handleKeyDown.callback() )
               )
    );
  }
}
