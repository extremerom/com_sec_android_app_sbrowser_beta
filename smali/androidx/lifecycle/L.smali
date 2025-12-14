.class public final Landroidx/lifecycle/L;
.super Landroidx/lifecycle/D;
.source "SourceFile"


# instance fields
.field public final b:Z

.field public c:LG/a;

.field public d:Landroidx/lifecycle/C;

.field public final e:Ljava/lang/ref/WeakReference;

.field public f:I

.field public g:Z

.field public h:Z

.field public final i:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Landroidx/lifecycle/J;)V
    .locals 1

    const-string v0, "provider"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Landroidx/lifecycle/D;->a:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/lifecycle/L;->b:Z

    new-instance v0, LG/a;

    invoke-direct {v0}, LG/a;-><init>()V

    iput-object v0, p0, Landroidx/lifecycle/L;->c:LG/a;

    sget-object v0, Landroidx/lifecycle/C;->INITIALIZED:Landroidx/lifecycle/C;

    iput-object v0, p0, Landroidx/lifecycle/L;->d:Landroidx/lifecycle/C;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/lifecycle/L;->i:Ljava/util/ArrayList;

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroidx/lifecycle/L;->e:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public final a(Landroidx/lifecycle/I;)V
    .locals 9

    iget-object v0, p0, Landroidx/lifecycle/L;->i:Ljava/util/ArrayList;

    const-string v1, "addObserver"

    invoke-virtual {p0, v1}, Landroidx/lifecycle/L;->d(Ljava/lang/String;)V

    iget-object v1, p0, Landroidx/lifecycle/L;->d:Landroidx/lifecycle/C;

    sget-object v2, Landroidx/lifecycle/C;->DESTROYED:Landroidx/lifecycle/C;

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    sget-object v2, Landroidx/lifecycle/C;->INITIALIZED:Landroidx/lifecycle/C;

    :goto_0
    new-instance v1, Landroidx/lifecycle/K;

    const-string v3, "initialState"

    invoke-static {v2, v3}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    sget-object v3, Landroidx/lifecycle/N;->a:Ljava/util/HashMap;

    instance-of v3, p1, Landroidx/lifecycle/H;

    instance-of v4, p1, Landroidx/lifecycle/k;

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v3, :cond_1

    if-eqz v4, :cond_1

    new-instance v3, Landroidx/lifecycle/DefaultLifecycleObserverAdapter;

    move-object v4, p1

    check-cast v4, Landroidx/lifecycle/k;

    move-object v7, p1

    check-cast v7, Landroidx/lifecycle/H;

    invoke-direct {v3, v4, v7}, Landroidx/lifecycle/DefaultLifecycleObserverAdapter;-><init>(Landroidx/lifecycle/k;Landroidx/lifecycle/H;)V

    goto :goto_1

    :cond_1
    const/4 v7, 0x0

    if-eqz v4, :cond_2

    new-instance v3, Landroidx/lifecycle/DefaultLifecycleObserverAdapter;

    move-object v4, p1

    check-cast v4, Landroidx/lifecycle/k;

    invoke-direct {v3, v4, v7}, Landroidx/lifecycle/DefaultLifecycleObserverAdapter;-><init>(Landroidx/lifecycle/k;Landroidx/lifecycle/H;)V

    goto :goto_1

    :cond_2
    if-eqz v3, :cond_3

    move-object v3, p1

    check-cast v3, Landroidx/lifecycle/H;

    goto :goto_1

    :cond_3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-static {v3}, Landroidx/lifecycle/N;->b(Ljava/lang/Class;)I

    move-result v4

    const/4 v8, 0x2

    if-ne v4, v8, :cond_6

    sget-object v4, Landroidx/lifecycle/N;->b:Ljava/util/HashMap;

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Ltb/k;->c(Ljava/lang/Object;)V

    check-cast v3, Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-eq v4, v5, :cond_5

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    new-array v8, v4, [Landroidx/lifecycle/v;

    if-gtz v4, :cond_4

    new-instance v3, Landroidx/lifecycle/CompositeGeneratedAdaptersObserver;

    invoke-direct {v3, v8}, Landroidx/lifecycle/CompositeGeneratedAdaptersObserver;-><init>([Landroidx/lifecycle/v;)V

    goto :goto_1

    :cond_4
    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/reflect/Constructor;

    invoke-static {p0, p1}, Landroidx/lifecycle/N;->a(Ljava/lang/reflect/Constructor;Landroidx/lifecycle/I;)V

    throw v7

    :cond_5
    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/reflect/Constructor;

    invoke-static {p0, p1}, Landroidx/lifecycle/N;->a(Ljava/lang/reflect/Constructor;Landroidx/lifecycle/I;)V

    throw v7

    :cond_6
    new-instance v3, Landroidx/lifecycle/ReflectiveGenericLifecycleObserver;

    invoke-direct {v3, p1}, Landroidx/lifecycle/ReflectiveGenericLifecycleObserver;-><init>(Landroidx/lifecycle/I;)V

    :goto_1
    iput-object v3, v1, Landroidx/lifecycle/K;->b:Landroidx/lifecycle/H;

    iput-object v2, v1, Landroidx/lifecycle/K;->a:Landroidx/lifecycle/C;

    iget-object v2, p0, Landroidx/lifecycle/L;->c:LG/a;

    invoke-virtual {v2, p1, v1}, LG/a;->i(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/lifecycle/K;

    if-eqz v2, :cond_7

    return-void

    :cond_7
    iget-object v2, p0, Landroidx/lifecycle/L;->e:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/lifecycle/J;

    if-nez v2, :cond_8

    return-void

    :cond_8
    iget v3, p0, Landroidx/lifecycle/L;->f:I

    if-nez v3, :cond_9

    iget-boolean v3, p0, Landroidx/lifecycle/L;->g:Z

    if-eqz v3, :cond_a

    :cond_9
    move v6, v5

    :cond_a
    invoke-virtual {p0, p1}, Landroidx/lifecycle/L;->c(Landroidx/lifecycle/I;)Landroidx/lifecycle/C;

    move-result-object v3

    iget v4, p0, Landroidx/lifecycle/L;->f:I

    add-int/2addr v4, v5

    iput v4, p0, Landroidx/lifecycle/L;->f:I

    :goto_2
    iget-object v4, v1, Landroidx/lifecycle/K;->a:Landroidx/lifecycle/C;

    invoke-virtual {v4, v3}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v3

    if-gez v3, :cond_c

    iget-object v3, p0, Landroidx/lifecycle/L;->c:LG/a;

    iget-object v3, v3, LG/a;->e:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    iget-object v3, v1, Landroidx/lifecycle/K;->a:Landroidx/lifecycle/C;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v3, Landroidx/lifecycle/B;->Companion:Landroidx/lifecycle/z;

    iget-object v4, v1, Landroidx/lifecycle/K;->a:Landroidx/lifecycle/C;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v4}, Landroidx/lifecycle/z;->b(Landroidx/lifecycle/C;)Landroidx/lifecycle/B;

    move-result-object v3

    if-eqz v3, :cond_b

    invoke-virtual {v1, v2, v3}, Landroidx/lifecycle/K;->a(Landroidx/lifecycle/J;Landroidx/lifecycle/B;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    sub-int/2addr v3, v5

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    invoke-virtual {p0, p1}, Landroidx/lifecycle/L;->c(Landroidx/lifecycle/I;)Landroidx/lifecycle/C;

    move-result-object v3

    goto :goto_2

    :cond_b
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "no event up from "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, v1, Landroidx/lifecycle/K;->a:Landroidx/lifecycle/C;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_c
    if-nez v6, :cond_d

    invoke-virtual {p0}, Landroidx/lifecycle/L;->h()V

    :cond_d
    iget p1, p0, Landroidx/lifecycle/L;->f:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Landroidx/lifecycle/L;->f:I

    return-void
.end method

.method public final b(Landroidx/lifecycle/I;)V
    .locals 1

    const-string v0, "observer"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "removeObserver"

    invoke-virtual {p0, v0}, Landroidx/lifecycle/L;->d(Ljava/lang/String;)V

    iget-object p0, p0, Landroidx/lifecycle/L;->c:LG/a;

    invoke-virtual {p0, p1}, LG/a;->l(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final c(Landroidx/lifecycle/I;)Landroidx/lifecycle/C;
    .locals 3

    iget-object v0, p0, Landroidx/lifecycle/L;->c:LG/a;

    iget-object v0, v0, LG/a;->e:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, LG/c;

    iget-object p1, p1, LG/c;->d:LG/c;

    goto :goto_0

    :cond_0
    move-object p1, v2

    :goto_0
    if-eqz p1, :cond_1

    iget-object p1, p1, LG/c;->b:Ljava/lang/Object;

    check-cast p1, Landroidx/lifecycle/K;

    if-eqz p1, :cond_1

    iget-object p1, p1, Landroidx/lifecycle/K;->a:Landroidx/lifecycle/C;

    goto :goto_1

    :cond_1
    move-object p1, v2

    :goto_1
    iget-object v0, p0, Landroidx/lifecycle/L;->i:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    const/4 v1, 0x1

    invoke-static {v1, v0}, Lcom/sec/android/app/sbrowser/autofill/password/k;->g(ILjava/util/ArrayList;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroidx/lifecycle/C;

    :cond_2
    iget-object p0, p0, Landroidx/lifecycle/L;->d:Landroidx/lifecycle/C;

    const-string v0, "state1"

    invoke-static {p0, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p1, :cond_3

    invoke-virtual {p1, p0}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v0

    if-gez v0, :cond_3

    goto :goto_2

    :cond_3
    move-object p1, p0

    :goto_2
    if-eqz v2, :cond_4

    invoke-virtual {v2, p1}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result p0

    if-gez p0, :cond_4

    goto :goto_3

    :cond_4
    move-object v2, p1

    :goto_3
    return-object v2
.end method

.method public final d(Ljava/lang/String;)V
    .locals 1

    iget-boolean p0, p0, Landroidx/lifecycle/L;->b:Z

    if-eqz p0, :cond_1

    invoke-static {}, LF/a;->m()LF/a;

    move-result-object p0

    iget-object p0, p0, LF/a;->a:LF/c;

    invoke-virtual {p0}, LF/c;->m()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const-string p0, "Method "

    const-string v0, " must be called on the main thread"

    invoke-static {p0, p1, v0}, LV0/c;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    return-void
.end method

.method public final e(Landroidx/lifecycle/B;)V
    .locals 1

    const-string v0, "event"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "handleLifecycleEvent"

    invoke-virtual {p0, v0}, Landroidx/lifecycle/L;->d(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroidx/lifecycle/B;->a()Landroidx/lifecycle/C;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/lifecycle/L;->f(Landroidx/lifecycle/C;)V

    return-void
.end method

.method public final f(Landroidx/lifecycle/C;)V
    .locals 2

    iget-object v0, p0, Landroidx/lifecycle/L;->d:Landroidx/lifecycle/C;

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    sget-object v1, Landroidx/lifecycle/C;->INITIALIZED:Landroidx/lifecycle/C;

    if-ne v0, v1, :cond_2

    sget-object v0, Landroidx/lifecycle/C;->DESTROYED:Landroidx/lifecycle/C;

    if-eq p1, v0, :cond_1

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "no event down from "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/lifecycle/L;->d:Landroidx/lifecycle/C;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " in component "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Landroidx/lifecycle/L;->e:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    :goto_0
    iput-object p1, p0, Landroidx/lifecycle/L;->d:Landroidx/lifecycle/C;

    iget-boolean p1, p0, Landroidx/lifecycle/L;->g:Z

    const/4 v0, 0x1

    if-nez p1, :cond_5

    iget p1, p0, Landroidx/lifecycle/L;->f:I

    if-eqz p1, :cond_3

    goto :goto_1

    :cond_3
    iput-boolean v0, p0, Landroidx/lifecycle/L;->g:Z

    invoke-virtual {p0}, Landroidx/lifecycle/L;->h()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Landroidx/lifecycle/L;->g:Z

    iget-object p1, p0, Landroidx/lifecycle/L;->d:Landroidx/lifecycle/C;

    sget-object v0, Landroidx/lifecycle/C;->DESTROYED:Landroidx/lifecycle/C;

    if-ne p1, v0, :cond_4

    new-instance p1, LG/a;

    invoke-direct {p1}, LG/a;-><init>()V

    iput-object p1, p0, Landroidx/lifecycle/L;->c:LG/a;

    :cond_4
    return-void

    :cond_5
    :goto_1
    iput-boolean v0, p0, Landroidx/lifecycle/L;->h:Z

    return-void
.end method

.method public final g(Landroidx/lifecycle/C;)V
    .locals 1

    const-string v0, "state"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "setCurrentState"

    invoke-virtual {p0, v0}, Landroidx/lifecycle/L;->d(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Landroidx/lifecycle/L;->f(Landroidx/lifecycle/C;)V

    return-void
.end method

.method public final h()V
    .locals 7

    iget-object v0, p0, Landroidx/lifecycle/L;->e:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/lifecycle/J;

    if-eqz v0, :cond_8

    :cond_0
    iget-object v1, p0, Landroidx/lifecycle/L;->c:LG/a;

    iget v2, v1, LG/f;->d:I

    const/4 v3, 0x0

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    iget-object v1, v1, LG/f;->a:LG/c;

    invoke-static {v1}, Ltb/k;->c(Ljava/lang/Object;)V

    iget-object v1, v1, LG/c;->b:Ljava/lang/Object;

    check-cast v1, Landroidx/lifecycle/K;

    iget-object v1, v1, Landroidx/lifecycle/K;->a:Landroidx/lifecycle/C;

    iget-object v2, p0, Landroidx/lifecycle/L;->c:LG/a;

    iget-object v2, v2, LG/f;->b:LG/c;

    invoke-static {v2}, Ltb/k;->c(Ljava/lang/Object;)V

    iget-object v2, v2, LG/c;->b:Ljava/lang/Object;

    check-cast v2, Landroidx/lifecycle/K;

    iget-object v2, v2, Landroidx/lifecycle/K;->a:Landroidx/lifecycle/C;

    if-ne v1, v2, :cond_2

    iget-object v1, p0, Landroidx/lifecycle/L;->d:Landroidx/lifecycle/C;

    if-ne v1, v2, :cond_2

    :goto_0
    iput-boolean v3, p0, Landroidx/lifecycle/L;->h:Z

    return-void

    :cond_2
    iput-boolean v3, p0, Landroidx/lifecycle/L;->h:Z

    iget-object v1, p0, Landroidx/lifecycle/L;->d:Landroidx/lifecycle/C;

    iget-object v2, p0, Landroidx/lifecycle/L;->c:LG/a;

    iget-object v2, v2, LG/f;->a:LG/c;

    invoke-static {v2}, Ltb/k;->c(Ljava/lang/Object;)V

    iget-object v2, v2, LG/c;->b:Ljava/lang/Object;

    check-cast v2, Landroidx/lifecycle/K;

    iget-object v2, v2, Landroidx/lifecycle/K;->a:Landroidx/lifecycle/C;

    invoke-virtual {v1, v2}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v1

    if-gez v1, :cond_5

    iget-object v1, p0, Landroidx/lifecycle/L;->c:LG/a;

    new-instance v2, LG/b;

    iget-object v3, v1, LG/f;->b:LG/c;

    iget-object v4, v1, LG/f;->a:LG/c;

    const/4 v5, 0x1

    invoke-direct {v2, v3, v4, v5}, LG/b;-><init>(LG/c;LG/c;I)V

    iget-object v1, v1, LG/f;->c:Ljava/util/WeakHashMap;

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v1, v2, v3}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    invoke-virtual {v2}, LG/b;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    iget-boolean v1, p0, Landroidx/lifecycle/L;->h:Z

    if-nez v1, :cond_5

    invoke-virtual {v2}, LG/b;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    const-string v3, "next()"

    invoke-static {v1, v3}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/lifecycle/I;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/lifecycle/K;

    :goto_1
    iget-object v4, v1, Landroidx/lifecycle/K;->a:Landroidx/lifecycle/C;

    iget-object v5, p0, Landroidx/lifecycle/L;->d:Landroidx/lifecycle/C;

    invoke-virtual {v4, v5}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v4

    if-lez v4, :cond_3

    iget-boolean v4, p0, Landroidx/lifecycle/L;->h:Z

    if-nez v4, :cond_3

    iget-object v4, p0, Landroidx/lifecycle/L;->c:LG/a;

    iget-object v4, v4, LG/a;->e:Ljava/util/HashMap;

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    sget-object v4, Landroidx/lifecycle/B;->Companion:Landroidx/lifecycle/z;

    iget-object v5, v1, Landroidx/lifecycle/K;->a:Landroidx/lifecycle/C;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v5}, Landroidx/lifecycle/z;->a(Landroidx/lifecycle/C;)Landroidx/lifecycle/B;

    move-result-object v4

    if-eqz v4, :cond_4

    invoke-virtual {v4}, Landroidx/lifecycle/B;->a()Landroidx/lifecycle/C;

    move-result-object v5

    iget-object v6, p0, Landroidx/lifecycle/L;->i:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v1, v0, v4}, Landroidx/lifecycle/K;->a(Landroidx/lifecycle/J;Landroidx/lifecycle/B;)V

    iget-object v4, p0, Landroidx/lifecycle/L;->i:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_1

    :cond_4
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "no event down from "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, v1, Landroidx/lifecycle/K;->a:Landroidx/lifecycle/C;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
    iget-object v1, p0, Landroidx/lifecycle/L;->c:LG/a;

    iget-object v1, v1, LG/f;->b:LG/c;

    iget-boolean v2, p0, Landroidx/lifecycle/L;->h:Z

    if-nez v2, :cond_0

    if-eqz v1, :cond_0

    iget-object v2, p0, Landroidx/lifecycle/L;->d:Landroidx/lifecycle/C;

    iget-object v1, v1, LG/c;->b:Ljava/lang/Object;

    check-cast v1, Landroidx/lifecycle/K;

    iget-object v1, v1, Landroidx/lifecycle/K;->a:Landroidx/lifecycle/C;

    invoke-virtual {v2, v1}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v1

    if-lez v1, :cond_0

    iget-object v1, p0, Landroidx/lifecycle/L;->c:LG/a;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, LG/d;

    invoke-direct {v2, v1}, LG/d;-><init>(LG/f;)V

    iget-object v1, v1, LG/f;->c:Ljava/util/WeakHashMap;

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v1, v2, v3}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    invoke-virtual {v2}, LG/d;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Landroidx/lifecycle/L;->h:Z

    if-nez v1, :cond_0

    invoke-virtual {v2}, LG/d;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/lifecycle/I;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/lifecycle/K;

    :goto_2
    iget-object v4, v1, Landroidx/lifecycle/K;->a:Landroidx/lifecycle/C;

    iget-object v5, p0, Landroidx/lifecycle/L;->d:Landroidx/lifecycle/C;

    invoke-virtual {v4, v5}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v4

    if-gez v4, :cond_6

    iget-boolean v4, p0, Landroidx/lifecycle/L;->h:Z

    if-nez v4, :cond_6

    iget-object v4, p0, Landroidx/lifecycle/L;->c:LG/a;

    iget-object v4, v4, LG/a;->e:Ljava/util/HashMap;

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    iget-object v4, v1, Landroidx/lifecycle/K;->a:Landroidx/lifecycle/C;

    iget-object v5, p0, Landroidx/lifecycle/L;->i:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v4, Landroidx/lifecycle/B;->Companion:Landroidx/lifecycle/z;

    iget-object v5, v1, Landroidx/lifecycle/K;->a:Landroidx/lifecycle/C;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v5}, Landroidx/lifecycle/z;->b(Landroidx/lifecycle/C;)Landroidx/lifecycle/B;

    move-result-object v4

    if-eqz v4, :cond_7

    invoke-virtual {v1, v0, v4}, Landroidx/lifecycle/K;->a(Landroidx/lifecycle/J;Landroidx/lifecycle/B;)V

    iget-object v4, p0, Landroidx/lifecycle/L;->i:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_2

    :cond_7
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "no event up from "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, v1, Landroidx/lifecycle/K;->a:Landroidx/lifecycle/C;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_8
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "LifecycleOwner of this LifecycleRegistry is already garbage collected. It is too late to change lifecycle state."

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
