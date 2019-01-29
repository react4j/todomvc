package react4j.todomvc;

import javax.annotation.Nullable;
import react4j.Component;
import react4j.ReactNode;
import react4j.annotations.ReactComponent;
import react4j.dom.proptypes.html.HtmlProps;
import react4j.todomvc.model.AppData;
import static react4j.dom.DOM.*;

@ReactComponent( type = ReactComponent.Type.TRACKING )
abstract class FooterTodoCount
  extends Component
{
  @Nullable
  @Override
  protected ReactNode render()
  {
    final int count = AppData.model.totalCount();
    final String activeTodoWord = "item" + ( count == 1 ? "" : "s" );
    return
      span( new HtmlProps().className( "todo-count" ),
            strong( count ),
            text( " " + activeTodoWord + " left" )
      );
  }
}
