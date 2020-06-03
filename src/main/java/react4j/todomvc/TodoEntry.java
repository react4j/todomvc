package react4j.todomvc;

import arez.annotations.CascadeDispose;
import arez.annotations.PostConstruct;
import elemental2.dom.HTMLInputElement;
import javax.annotation.Nonnull;
import jsinterop.base.Js;
import react4j.ReactNode;
import react4j.annotations.ReactComponent;
import react4j.annotations.Render;
import react4j.annotations.ScheduleRender;
import react4j.dom.events.FormEvent;
import react4j.dom.events.FormEventHandler;
import react4j.dom.events.KeyboardEvent;
import react4j.dom.events.KeyboardEventHandler;
import react4j.dom.proptypes.html.InputProps;
import react4j.todomvc.model.AppData;
import static react4j.dom.DOM.*;

@ReactComponent
abstract class TodoEntry
  extends SpritzComponent
{
  @CascadeDispose
  final CallbackAdapter<KeyboardEvent, KeyboardEventHandler> _handleNewTodoKeyDown = CallbackAdapter.keyboard();
  @CascadeDispose
  final CallbackAdapter<FormEvent, FormEventHandler> _handleChange = CallbackAdapter.form();
  @Nonnull
  private String _todoText = "";

  @ScheduleRender
  abstract void scheduleRender();

  @PostConstruct
  void postConstruct()
  {
    _handleNewTodoKeyDown.stream().filter( e -> KeyCodes.ENTER_KEY == e.getKeyCode() ).forEach( event -> {
      event.preventDefault();
      final String val = _todoText.trim();
      if ( val.length() > 0 )
      {
        AppData.service.addTodo( val );
        setTodoText( "" );
      }
    } );
    _handleChange.stream().forEach( event -> {
      final HTMLInputElement input = Js.cast( event.getTarget() );
      setTodoText( input.value );
    } );
  }

  private void setTodoText( @Nonnull final String todoText )
  {
    _todoText = todoText;
    scheduleRender();
  }

  @Nonnull
  @Render
  ReactNode render()
  {
    return input( new InputProps()
                    .className( "new-todo" )
                    .placeHolder( "What needs to be done?" )
                    .value( _todoText )
                    .onKeyDown( _handleNewTodoKeyDown.callback() )
                    .onChange( _handleChange.callback() )
                    .autoFocus( true )
    );
  }
}
