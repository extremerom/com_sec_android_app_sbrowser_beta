.class public abstract Landroidx/lifecycle/l0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Landroidx/lifecycle/t0;

.field public static final b:Landroidx/lifecycle/t0;

.field public static final c:Landroidx/lifecycle/t0;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/lifecycle/t0;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroidx/lifecycle/l0;->a:Landroidx/lifecycle/t0;

    new-instance v0, Landroidx/lifecycle/t0;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroidx/lifecycle/l0;->b:Landroidx/lifecycle/t0;

    new-instance v0, Landroidx/lifecycle/t0;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroidx/lifecycle/l0;->c:Landroidx/lifecycle/t0;

    return-void
.end method

.method public static final a(Landroidx/lifecycle/S;)LQc/h;
    .locals 2

    const-string v0, "<this>"

    invoke-static {p0, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Landroidx/lifecycle/t;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroidx/lifecycle/t;-><init>(Landroidx/lifecycle/S;Lib/c;)V

    invoke-static {v0}, LQc/n0;->g(Lsb/n;)LQc/c;

    move-result-object p0

    const/4 v0, -0x1

    invoke-static {p0, v0}, LQc/n0;->f(LQc/h;I)LQc/h;

    move-result-object p0

    return-object p0
.end method

.method public static b(LQc/h;Lib/h;I)Landroidx/lifecycle/j;
    .locals 7

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    sget-object p1, Lib/i;->a:Lib/i;

    :cond_0
    const-string p2, "<this>"

    invoke-static {p0, p2}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "context"

    invoke-static {p1, p2}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Landroidx/lifecycle/u;

    const/4 p2, 0x0

    invoke-direct {v2, p0, p2}, Landroidx/lifecycle/u;-><init>(LQc/h;Lib/c;)V

    new-instance p2, Landroidx/lifecycle/j;

    invoke-direct {p2}, Landroidx/lifecycle/W;-><init>()V

    sget-object v0, LNc/i0;->a:LNc/i0;

    invoke-interface {p1, v0}, Lib/h;->get(Lib/g;)Lib/f;

    move-result-object v0

    check-cast v0, LNc/j0;

    new-instance v1, LNc/E0;

    invoke-direct {v1, v0}, LNc/m0;-><init>(LNc/j0;)V

    sget-object v0, LNc/N;->a:LWc/f;

    sget-object v0, LUc/q;->a:LNc/w0;

    invoke-virtual {v0}, LNc/w0;->K()LNc/w0;

    move-result-object v0

    invoke-virtual {v0, p1}, Lib/a;->plus(Lib/h;)Lib/h;

    move-result-object p1

    invoke-interface {p1, v1}, Lib/h;->plus(Lib/h;)Lib/h;

    move-result-object p1

    invoke-static {p1}, LNc/E;->c(Lib/h;)LUc/e;

    move-result-object v5

    new-instance p1, Landroidx/lifecycle/d;

    new-instance v6, LA4/a;

    const/16 v0, 0x10

    invoke-direct {v6, v0, p2}, LA4/a;-><init>(ILjava/lang/Object;)V

    const-wide/16 v3, 0x1388

    move-object v0, p1

    move-object v1, p2

    invoke-direct/range {v0 .. v6}, Landroidx/lifecycle/d;-><init>(Landroidx/lifecycle/j;Landroidx/lifecycle/u;JLUc/e;LA4/a;)V

    iput-object p1, p2, Landroidx/lifecycle/j;->a:Landroidx/lifecycle/d;

    instance-of p1, p0, LQc/y0;

    if-eqz p1, :cond_2

    invoke-static {}, LF/a;->m()LF/a;

    move-result-object p1

    iget-object p1, p1, LF/a;->a:LF/c;

    invoke-virtual {p1}, LF/c;->m()Z

    move-result p1

    if-eqz p1, :cond_1

    check-cast p0, LQc/y0;

    invoke-interface {p0}, LQc/y0;->getValue()Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p2, p0}, Landroidx/lifecycle/X;->setValue(Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    check-cast p0, LQc/y0;

    invoke-interface {p0}, LQc/y0;->getValue()Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p2, p0}, Landroidx/lifecycle/X;->postValue(Ljava/lang/Object;)V

    :cond_2
    :goto_0
    return-object p2
.end method

.method public static final c(Landroidx/lifecycle/s0;LQ2/d;Landroidx/lifecycle/D;)V
    .locals 1

    const-string v0, "registry"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "lifecycle"

    invoke-static {p2, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "androidx.lifecycle.savedstate.vm.tag"

    invoke-virtual {p0, v0}, Landroidx/lifecycle/s0;->getTag(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/lifecycle/SavedStateHandleController;

    if-eqz p0, :cond_2

    iget-boolean v0, p0, Landroidx/lifecycle/SavedStateHandleController;->c:Z

    if-nez v0, :cond_2

    invoke-virtual {p0, p1, p2}, Landroidx/lifecycle/SavedStateHandleController;->a(LQ2/d;Landroidx/lifecycle/D;)V

    move-object p0, p2

    check-cast p0, Landroidx/lifecycle/L;

    iget-object p0, p0, Landroidx/lifecycle/L;->d:Landroidx/lifecycle/C;

    sget-object v0, Landroidx/lifecycle/C;->INITIALIZED:Landroidx/lifecycle/C;

    if-eq p0, v0, :cond_1

    sget-object v0, Landroidx/lifecycle/C;->STARTED:Landroidx/lifecycle/C;

    invoke-virtual {p0, v0}, Landroidx/lifecycle/C;->a(Landroidx/lifecycle/C;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Landroidx/lifecycle/LegacySavedStateHandleController$tryToAddRecreator$1;

    invoke-direct {p0, p1, p2}, Landroidx/lifecycle/LegacySavedStateHandleController$tryToAddRecreator$1;-><init>(LQ2/d;Landroidx/lifecycle/D;)V

    invoke-virtual {p2, p0}, Landroidx/lifecycle/D;->a(Landroidx/lifecycle/I;)V

    goto :goto_1

    :cond_1
    :goto_0
    invoke-virtual {p1}, LQ2/d;->d()V

    :cond_2
    :goto_1
    return-void
.end method

.method public static d(Landroid/os/Bundle;Landroid/os/Bundle;)Landroidx/lifecycle/j0;
    .locals 5

    if-nez p0, :cond_2

    if-nez p1, :cond_0

    new-instance p0, Landroidx/lifecycle/j0;

    invoke-direct {p0}, Landroidx/lifecycle/j0;-><init>()V

    goto :goto_1

    :cond_0
    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p1}, Landroid/os/BaseBundle;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "key"

    invoke-static {v1, v2}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    new-instance p1, Landroidx/lifecycle/j0;

    invoke-direct {p1, p0}, Landroidx/lifecycle/j0;-><init>(Ljava/util/HashMap;)V

    move-object p0, p1

    :goto_1
    return-object p0

    :cond_2
    const-string p1, "keys"

    invoke-virtual {p0, p1}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    const-string v0, "values"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p0

    if-eqz p1, :cond_4

    if-eqz p0, :cond_4

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ne v0, v1, :cond_4

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_2
    if-ge v2, v1, :cond_3

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    const-string v4, "null cannot be cast to non-null type kotlin.String"

    invoke-static {v3, v4}, Ltb/k;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_3
    new-instance p0, Landroidx/lifecycle/j0;

    invoke-direct {p0, v0}, Landroidx/lifecycle/j0;-><init>(Ljava/util/HashMap;)V

    return-object p0

    :cond_4
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Invalid bundle passed as restored state"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static final e(Li2/d;)Landroidx/lifecycle/j0;
    .locals 7

    sget-object v0, Landroidx/lifecycle/l0;->a:Landroidx/lifecycle/t0;

    iget-object p0, p0, Li2/b;->a:Ljava/util/LinkedHashMap;

    invoke-virtual {p0, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LQ2/f;

    if-eqz v0, :cond_8

    sget-object v1, Landroidx/lifecycle/l0;->b:Landroidx/lifecycle/t0;

    invoke-virtual {p0, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/lifecycle/y0;

    if-eqz v1, :cond_7

    sget-object v2, Landroidx/lifecycle/l0;->c:Landroidx/lifecycle/t0;

    invoke-virtual {p0, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    sget-object v3, Landroidx/lifecycle/t0;->b:Landroidx/lifecycle/t0;

    invoke-virtual {p0, v3}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    if-eqz p0, :cond_6

    invoke-interface {v0}, LQ2/f;->getSavedStateRegistry()LQ2/d;

    move-result-object v0

    invoke-virtual {v0}, LQ2/d;->b()LQ2/c;

    move-result-object v0

    instance-of v3, v0, Landroidx/lifecycle/m0;

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    check-cast v0, Landroidx/lifecycle/m0;

    goto :goto_0

    :cond_0
    move-object v0, v4

    :goto_0
    if-eqz v0, :cond_5

    invoke-static {v1}, Landroidx/lifecycle/l0;->j(Landroidx/lifecycle/y0;)Landroidx/lifecycle/n0;

    move-result-object v1

    iget-object v1, v1, Landroidx/lifecycle/n0;->a:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, p0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/lifecycle/j0;

    if-nez v3, :cond_4

    sget-object v3, Landroidx/lifecycle/j0;->f:[Ljava/lang/Class;

    invoke-virtual {v0}, Landroidx/lifecycle/m0;->a()V

    iget-object v3, v0, Landroidx/lifecycle/m0;->c:Landroid/os/Bundle;

    if-eqz v3, :cond_1

    invoke-virtual {v3, p0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v3

    goto :goto_1

    :cond_1
    move-object v3, v4

    :goto_1
    iget-object v5, v0, Landroidx/lifecycle/m0;->c:Landroid/os/Bundle;

    if-eqz v5, :cond_2

    invoke-virtual {v5, p0}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    :cond_2
    iget-object v5, v0, Landroidx/lifecycle/m0;->c:Landroid/os/Bundle;

    if-eqz v5, :cond_3

    invoke-virtual {v5}, Landroid/os/BaseBundle;->isEmpty()Z

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_3

    iput-object v4, v0, Landroidx/lifecycle/m0;->c:Landroid/os/Bundle;

    :cond_3
    invoke-static {v3, v2}, Landroidx/lifecycle/l0;->d(Landroid/os/Bundle;Landroid/os/Bundle;)Landroidx/lifecycle/j0;

    move-result-object v3

    invoke-interface {v1, p0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    return-object v3

    :cond_5
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "enableSavedStateHandles() wasn\'t called prior to createSavedStateHandle() call"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_6
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "CreationExtras must have a value by `VIEW_MODEL_KEY`"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_7
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "CreationExtras must have a value by `VIEW_MODEL_STORE_OWNER_KEY`"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_8
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "CreationExtras must have a value by `SAVED_STATE_REGISTRY_OWNER_KEY`"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static final f(Landroidx/lifecycle/S;)Landroidx/lifecycle/W;
    .locals 4

    const-string v0, "<this>"

    invoke-static {p0, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Landroidx/lifecycle/W;

    invoke-direct {v0}, Landroidx/lifecycle/W;-><init>()V

    new-instance v1, Ltb/s;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    const/4 v2, 0x1

    iput-boolean v2, v1, Ltb/s;->a:Z

    invoke-virtual {p0}, Landroidx/lifecycle/S;->isInitialized()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Landroidx/lifecycle/S;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroidx/lifecycle/X;->setValue(Ljava/lang/Object;)V

    const/4 v2, 0x0

    iput-boolean v2, v1, Ltb/s;->a:Z

    :cond_0
    new-instance v2, LC1/j;

    const/16 v3, 0xf

    invoke-direct {v2, v3, v0, v1}, LC1/j;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    new-instance v1, Landroidx/lifecycle/r0;

    invoke-direct {v1, v2}, Landroidx/lifecycle/r0;-><init>(Lsb/k;)V

    invoke-virtual {v0, p0, v1}, Landroidx/lifecycle/W;->addSource(Landroidx/lifecycle/S;Landroidx/lifecycle/Y;)V

    return-object v0
.end method

.method public static final g(LQ2/f;)V
    .locals 3

    invoke-interface {p0}, Landroidx/lifecycle/J;->getLifecycle()Landroidx/lifecycle/D;

    move-result-object v0

    check-cast v0, Landroidx/lifecycle/L;

    iget-object v0, v0, Landroidx/lifecycle/L;->d:Landroidx/lifecycle/C;

    sget-object v1, Landroidx/lifecycle/C;->INITIALIZED:Landroidx/lifecycle/C;

    if-eq v0, v1, :cond_1

    sget-object v1, Landroidx/lifecycle/C;->CREATED:Landroidx/lifecycle/C;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Failed requirement."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    invoke-interface {p0}, LQ2/f;->getSavedStateRegistry()LQ2/d;

    move-result-object v0

    invoke-virtual {v0}, LQ2/d;->b()LQ2/c;

    move-result-object v0

    if-nez v0, :cond_2

    new-instance v0, Landroidx/lifecycle/m0;

    invoke-interface {p0}, LQ2/f;->getSavedStateRegistry()LQ2/d;

    move-result-object v1

    move-object v2, p0

    check-cast v2, Landroidx/lifecycle/y0;

    invoke-direct {v0, v1, v2}, Landroidx/lifecycle/m0;-><init>(LQ2/d;Landroidx/lifecycle/y0;)V

    invoke-interface {p0}, LQ2/f;->getSavedStateRegistry()LQ2/d;

    move-result-object v1

    const-string v2, "androidx.lifecycle.internal.SavedStateHandlesProvider"

    invoke-virtual {v1, v2, v0}, LQ2/d;->c(Ljava/lang/String;LQ2/c;)V

    invoke-interface {p0}, Landroidx/lifecycle/J;->getLifecycle()Landroidx/lifecycle/D;

    move-result-object p0

    new-instance v1, Landroidx/lifecycle/SavedStateHandleAttacher;

    invoke-direct {v1, v0}, Landroidx/lifecycle/SavedStateHandleAttacher;-><init>(Landroidx/lifecycle/m0;)V

    invoke-virtual {p0, v1}, Landroidx/lifecycle/D;->a(Landroidx/lifecycle/I;)V

    :cond_2
    return-void
.end method

.method public static final h(Landroid/view/View;)Landroidx/lifecycle/y0;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Landroidx/lifecycle/k0;->e:Landroidx/lifecycle/k0;

    invoke-static {p0, v0}, LJc/n;->q(Ljava/lang/Object;Lsb/k;)LJc/l;

    move-result-object p0

    sget-object v0, Landroidx/lifecycle/k0;->f:Landroidx/lifecycle/k0;

    invoke-static {p0, v0}, LJc/n;->u(LJc/l;Lsb/k;)LJc/h;

    move-result-object p0

    invoke-static {p0}, LJc/n;->o(LJc/h;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/lifecycle/y0;

    return-object p0
.end method

.method public static final i(Landroidx/lifecycle/J;)Landroidx/lifecycle/LifecycleCoroutineScopeImpl;
    .locals 4

    const-string v0, "<this>"

    invoke-static {p0, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0}, Landroidx/lifecycle/J;->getLifecycle()Landroidx/lifecycle/D;

    move-result-object p0

    invoke-static {p0, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    iget-object v0, p0, Landroidx/lifecycle/D;->a:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/lifecycle/LifecycleCoroutineScopeImpl;

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    new-instance v1, Landroidx/lifecycle/LifecycleCoroutineScopeImpl;

    invoke-static {}, LNc/E;->e()LNc/E0;

    move-result-object v2

    sget-object v3, LNc/N;->a:LWc/f;

    sget-object v3, LUc/q;->a:LNc/w0;

    invoke-virtual {v3}, LNc/w0;->K()LNc/w0;

    move-result-object v3

    invoke-static {v2, v3}, LG5/P3;->h(Lib/f;Lib/h;)Lib/h;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Landroidx/lifecycle/LifecycleCoroutineScopeImpl;-><init>(Landroidx/lifecycle/D;Lib/h;)V

    :cond_1
    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    sget-object p0, LNc/N;->a:LWc/f;

    sget-object p0, LUc/q;->a:LNc/w0;

    invoke-virtual {p0}, LNc/w0;->K()LNc/w0;

    move-result-object p0

    new-instance v0, Landroidx/lifecycle/E;

    invoke-direct {v0, v1, v2}, Landroidx/lifecycle/E;-><init>(Landroidx/lifecycle/LifecycleCoroutineScopeImpl;Lib/c;)V

    const/4 v3, 0x2

    invoke-static {v1, p0, v2, v0, v3}, LNc/E;->y(LNc/B;Lib/h;LNc/D;Lsb/n;I)LNc/C0;

    :goto_1
    return-object v1

    :cond_2
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_1

    goto :goto_0
.end method

.method public static final j(Landroidx/lifecycle/y0;)Landroidx/lifecycle/n0;
    .locals 4

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sget-object v1, Ltb/x;->a:Ltb/y;

    const-class v2, Landroidx/lifecycle/n0;

    invoke-virtual {v1, v2}, Ltb/y;->b(Ljava/lang/Class;)LAb/c;

    move-result-object v1

    new-instance v3, Li2/e;

    invoke-static {v1}, LG5/D;->c(LAb/c;)Ljava/lang/Class;

    move-result-object v1

    invoke-direct {v3, v1}, Li2/e;-><init>(Ljava/lang/Class;)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Li2/c;

    const/4 v3, 0x0

    new-array v3, v3, [Li2/e;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Li2/e;

    array-length v3, v0

    invoke-static {v0, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Li2/e;

    invoke-direct {v1, v0}, Li2/c;-><init>([Li2/e;)V

    new-instance v0, LZ3/x;

    invoke-direct {v0, p0, v1}, LZ3/x;-><init>(Landroidx/lifecycle/y0;Landroidx/lifecycle/v0;)V

    const-string p0, "androidx.lifecycle.internal.SavedStateHandlesVM"

    invoke-virtual {v0, v2, p0}, LZ3/x;->t(Ljava/lang/Class;Ljava/lang/String;)Landroidx/lifecycle/s0;

    move-result-object p0

    check-cast p0, Landroidx/lifecycle/n0;

    return-object p0
.end method

.method public static final k(Landroidx/lifecycle/s0;)LNc/B;
    .locals 4

    const-string v0, "<this>"

    invoke-static {p0, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "androidx.lifecycle.ViewModelCoroutineScope.JOB_KEY"

    invoke-virtual {p0, v0}, Landroidx/lifecycle/s0;->getTag(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LNc/B;

    if-eqz v1, :cond_0

    return-object v1

    :cond_0
    new-instance v1, Landroidx/lifecycle/h;

    invoke-static {}, LNc/E;->e()LNc/E0;

    move-result-object v2

    sget-object v3, LNc/N;->a:LWc/f;

    sget-object v3, LUc/q;->a:LNc/w0;

    invoke-virtual {v3}, LNc/w0;->K()LNc/w0;

    move-result-object v3

    invoke-static {v2, v3}, LG5/P3;->h(Lib/f;Lib/h;)Lib/h;

    move-result-object v2

    invoke-direct {v1, v2}, Landroidx/lifecycle/h;-><init>(Lib/h;)V

    invoke-virtual {p0, v0, v1}, Landroidx/lifecycle/s0;->setTagIfAbsent(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    const-string v0, "setTagIfAbsent(\n        \u2026Main.immediate)\n        )"

    invoke-static {p0, v0}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, LNc/B;

    return-object p0
.end method

.method public static final l(Landroidx/lifecycle/X;Lsb/k;)Landroidx/lifecycle/W;
    .locals 3

    const-string v0, "<this>"

    invoke-static {p0, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "transform"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Landroidx/lifecycle/W;

    invoke-direct {v0}, Landroidx/lifecycle/W;-><init>()V

    new-instance v1, LC1/j;

    const/16 v2, 0x10

    invoke-direct {v1, v2, v0, p1}, LC1/j;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    new-instance p1, Landroidx/lifecycle/r0;

    invoke-direct {p1, v1}, Landroidx/lifecycle/r0;-><init>(Lsb/k;)V

    invoke-virtual {v0, p0, p1}, Landroidx/lifecycle/W;->addSource(Landroidx/lifecycle/S;Landroidx/lifecycle/Y;)V

    return-object v0
.end method

.method public static final m(Landroidx/lifecycle/D;Landroidx/lifecycle/C;Lsb/n;Lkb/i;)Ljava/lang/Object;
    .locals 3

    sget-object v0, Landroidx/lifecycle/C;->INITIALIZED:Landroidx/lifecycle/C;

    if-eq p1, v0, :cond_2

    move-object v0, p0

    check-cast v0, Landroidx/lifecycle/L;

    iget-object v0, v0, Landroidx/lifecycle/L;->d:Landroidx/lifecycle/C;

    sget-object v1, Landroidx/lifecycle/C;->DESTROYED:Landroidx/lifecycle/C;

    sget-object v2, Ldb/r;->a:Ldb/r;

    if-ne v0, v1, :cond_0

    return-object v2

    :cond_0
    new-instance v0, Landroidx/lifecycle/f0;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, p2, v1}, Landroidx/lifecycle/f0;-><init>(Landroidx/lifecycle/D;Landroidx/lifecycle/C;Lsb/n;Lib/c;)V

    invoke-static {v0, p3}, LNc/E;->j(Lsb/n;Lib/c;)Ljava/lang/Object;

    move-result-object p0

    sget-object p1, Ljb/a;->COROUTINE_SUSPENDED:Ljb/a;

    if-ne p0, p1, :cond_1

    return-object p0

    :cond_1
    return-object v2

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "repeatOnLifecycle cannot start work with the INITIALIZED lifecycle state."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static final n(Landroidx/lifecycle/J;Landroidx/lifecycle/C;Lsb/n;Lkb/i;)Ljava/lang/Object;
    .locals 0

    invoke-interface {p0}, Landroidx/lifecycle/J;->getLifecycle()Landroidx/lifecycle/D;

    move-result-object p0

    invoke-static {p0, p1, p2, p3}, Landroidx/lifecycle/l0;->m(Landroidx/lifecycle/D;Landroidx/lifecycle/C;Lsb/n;Lkb/i;)Ljava/lang/Object;

    move-result-object p0

    sget-object p1, Ljb/a;->COROUTINE_SUSPENDED:Ljb/a;

    if-ne p0, p1, :cond_0

    return-object p0

    :cond_0
    sget-object p0, Ldb/r;->a:Ldb/r;

    return-object p0
.end method

.method public static final o(Landroid/view/View;Landroidx/lifecycle/J;)V
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const v0, 0x7f0b0e1d

    invoke-virtual {p0, v0, p1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    return-void
.end method
