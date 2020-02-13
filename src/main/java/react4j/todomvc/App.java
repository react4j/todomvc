package react4j.todomvc;

import arez.spytools.browser.react4j.ReactArezSpyUtil;
import elemental2.dom.DomGlobal;
import react4j.ReactElement;
import react4j.dom.ReactDOM;
import react4j.todomvc.ioc.TodoComponent;

public final class App
{
  public void onModuleLoad()
  {
    ReactArezSpyUtil.enableSpyEventLogging();
    TodoComponent.create();
    ReactDOM.render( ReactElement.createStrictMode( TodoListBuilder.build() ),
                     DomGlobal.document.getElementById( "app" ) );
  }
}
