package react4j.todomvc.model;

import arez.annotations.Action;
import arez.annotations.ArezComponent;
import arez.annotations.Feature;
import arez.annotations.Memoize;
import arez.component.internal.AbstractRepository;
import javax.annotation.Nonnull;

@ArezComponent( requireId = Feature.DISABLE, disposeNotifier = Feature.DISABLE, service = Feature.ENABLE )
public abstract class TodoRepository
  extends AbstractRepository<Integer, Todo, TodoRepository>
{
  @Nonnull
  static TodoRepository newRepository()
  {
    return new Arez_TodoRepository();
  }

  @Action
  @Nonnull
  Todo create( @Nonnull final String title, final boolean completed )
  {
    final Arez_Todo entity = new Arez_Todo( title, completed );
    attach( entity );
    return entity;
  }

  @Memoize
  public boolean isNotEmpty()
  {
    return 0 != totalCount();
  }

  @Memoize
  public int totalCount()
  {
    return (int) entities().count();
  }

  @Memoize
  int activeCount()
  {
    return (int) entities().filter( todo -> !todo.isCompleted() ).count();
  }

  @Memoize
  public int completedCount()
  {
    return totalCount() - activeCount();
  }

  @Override
  @Action( reportParameters = false )
  public void destroy( @Nonnull final Todo entity )
  {
    super.destroy( entity );
  }
}
