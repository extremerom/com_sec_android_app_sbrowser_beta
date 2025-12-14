.class public final Landroidx/lifecycle/o0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/v0;


# instance fields
.field public final a:Landroid/app/Application;

.field public final b:Landroidx/lifecycle/u0;

.field public final c:Landroid/os/Bundle;

.field public final d:Landroidx/lifecycle/D;

.field public final e:LQ2/d;


# direct methods
.method public constructor <init>(Landroid/app/Application;LQ2/f;Landroid/os/Bundle;)V
    .locals 1

    const-string v0, "owner"

    invoke-static {p2, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-interface {p2}, LQ2/f;->getSavedStateRegistry()LQ2/d;

    move-result-object v0

    iput-object v0, p0, Landroidx/lifecycle/o0;->e:LQ2/d;

    invoke-interface {p2}, Landroidx/lifecycle/J;->getLifecycle()Landroidx/lifecycle/D;

    move-result-object p2

    iput-object p2, p0, Landroidx/lifecycle/o0;->d:Landroidx/lifecycle/D;

    iput-object p3, p0, Landroidx/lifecycle/o0;->c:Landroid/os/Bundle;

    iput-object p1, p0, Landroidx/lifecycle/o0;->a:Landroid/app/Application;

    if-eqz p1, :cond_1

    sget-object p2, Landroidx/lifecycle/u0;->c:Landroidx/lifecycle/u0;

    if-nez p2, :cond_0

    new-instance p2, Landroidx/lifecycle/u0;

    invoke-direct {p2, p1}, Landroidx/lifecycle/u0;-><init>(Landroid/app/Application;)V

    sput-object p2, Landroidx/lifecycle/u0;->c:Landroidx/lifecycle/u0;

    :cond_0
    sget-object p1, Landroidx/lifecycle/u0;->c:Landroidx/lifecycle/u0;

    invoke-static {p1}, Ltb/k;->c(Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    new-instance p1, Landroidx/lifecycle/u0;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Landroidx/lifecycle/u0;-><init>(Landroid/app/Application;)V

    :goto_0
    iput-object p1, p0, Landroidx/lifecycle/o0;->b:Landroidx/lifecycle/u0;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Class;Li2/d;)Landroidx/lifecycle/s0;
    .locals 3

    sget-object v0, Landroidx/lifecycle/t0;->b:Landroidx/lifecycle/t0;

    iget-object v1, p2, Li2/b;->a:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_5

    sget-object v2, Landroidx/lifecycle/l0;->a:Landroidx/lifecycle/t0;

    invoke-virtual {v1, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_3

    sget-object v2, Landroidx/lifecycle/l0;->b:Landroidx/lifecycle/t0;

    invoke-virtual {v1, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_3

    sget-object v0, Landroidx/lifecycle/t0;->a:Landroidx/lifecycle/t0;

    invoke-virtual {v1, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Application;

    const-class v1, Landroidx/lifecycle/a;

    invoke-virtual {v1, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    sget-object v2, Landroidx/lifecycle/p0;->a:Ljava/util/List;

    invoke-static {v2, p1}, Landroidx/lifecycle/p0;->a(Ljava/util/List;Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    goto :goto_0

    :cond_0
    sget-object v2, Landroidx/lifecycle/p0;->b:Ljava/util/List;

    invoke-static {v2, p1}, Landroidx/lifecycle/p0;->a(Ljava/util/List;Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    :goto_0
    if-nez v2, :cond_1

    iget-object p0, p0, Landroidx/lifecycle/o0;->b:Landroidx/lifecycle/u0;

    invoke-virtual {p0, p1, p2}, Landroidx/lifecycle/u0;->a(Ljava/lang/Class;Li2/d;)Landroidx/lifecycle/s0;

    move-result-object p0

    return-object p0

    :cond_1
    if-eqz v1, :cond_2

    if-eqz v0, :cond_2

    invoke-static {p2}, Landroidx/lifecycle/l0;->e(Li2/d;)Landroidx/lifecycle/j0;

    move-result-object p0

    filled-new-array {v0, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p1, v2, p0}, Landroidx/lifecycle/p0;->b(Ljava/lang/Class;Ljava/lang/reflect/Constructor;[Ljava/lang/Object;)Landroidx/lifecycle/s0;

    move-result-object p0

    goto :goto_1

    :cond_2
    invoke-static {p2}, Landroidx/lifecycle/l0;->e(Li2/d;)Landroidx/lifecycle/j0;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p1, v2, p0}, Landroidx/lifecycle/p0;->b(Ljava/lang/Class;Ljava/lang/reflect/Constructor;[Ljava/lang/Object;)Landroidx/lifecycle/s0;

    move-result-object p0

    goto :goto_1

    :cond_3
    iget-object p2, p0, Landroidx/lifecycle/o0;->d:Landroidx/lifecycle/D;

    if-eqz p2, :cond_4

    invoke-virtual {p0, p1, v0}, Landroidx/lifecycle/o0;->b(Ljava/lang/Class;Ljava/lang/String;)Landroidx/lifecycle/s0;

    move-result-object p0

    :goto_1
    return-object p0

    :cond_4
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "SAVED_STATE_REGISTRY_OWNER_KEY andVIEW_MODEL_STORE_OWNER_KEY must be provided in the creation extras tosuccessfully create a ViewModel."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "VIEW_MODEL_KEY must always be provided by ViewModelProvider"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final b(Ljava/lang/Class;Ljava/lang/String;)Landroidx/lifecycle/s0;
    .locals 7

    iget-object v0, p0, Landroidx/lifecycle/o0;->d:Landroidx/lifecycle/D;

    if-eqz v0, :cond_7

    const-class v1, Landroidx/lifecycle/a;

    invoke-virtual {v1, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    iget-object v2, p0, Landroidx/lifecycle/o0;->a:Landroid/app/Application;

    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    sget-object v3, Landroidx/lifecycle/p0;->a:Ljava/util/List;

    invoke-static {v3, p1}, Landroidx/lifecycle/p0;->a(Ljava/util/List;Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v3

    goto :goto_0

    :cond_0
    sget-object v3, Landroidx/lifecycle/p0;->b:Ljava/util/List;

    invoke-static {v3, p1}, Landroidx/lifecycle/p0;->a(Ljava/util/List;Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v3

    :goto_0
    if-nez v3, :cond_3

    if-eqz v2, :cond_1

    iget-object p0, p0, Landroidx/lifecycle/o0;->b:Landroidx/lifecycle/u0;

    invoke-virtual {p0, p1}, Landroidx/lifecycle/u0;->create(Ljava/lang/Class;)Landroidx/lifecycle/s0;

    move-result-object p0

    goto :goto_1

    :cond_1
    sget-object p0, Landroidx/lifecycle/w0;->a:Landroidx/lifecycle/w0;

    if-nez p0, :cond_2

    new-instance p0, Landroidx/lifecycle/w0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sput-object p0, Landroidx/lifecycle/w0;->a:Landroidx/lifecycle/w0;

    :cond_2
    sget-object p0, Landroidx/lifecycle/w0;->a:Landroidx/lifecycle/w0;

    invoke-static {p0}, Ltb/k;->c(Ljava/lang/Object;)V

    invoke-virtual {p0, p1}, Landroidx/lifecycle/w0;->create(Ljava/lang/Class;)Landroidx/lifecycle/s0;

    move-result-object p0

    :goto_1
    return-object p0

    :cond_3
    iget-object v4, p0, Landroidx/lifecycle/o0;->e:LQ2/d;

    invoke-static {v4}, Ltb/k;->c(Ljava/lang/Object;)V

    invoke-virtual {v4, p2}, LQ2/d;->a(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v5

    sget-object v6, Landroidx/lifecycle/j0;->f:[Ljava/lang/Class;

    iget-object p0, p0, Landroidx/lifecycle/o0;->c:Landroid/os/Bundle;

    invoke-static {v5, p0}, Landroidx/lifecycle/l0;->d(Landroid/os/Bundle;Landroid/os/Bundle;)Landroidx/lifecycle/j0;

    move-result-object p0

    new-instance v5, Landroidx/lifecycle/SavedStateHandleController;

    invoke-direct {v5, p2, p0}, Landroidx/lifecycle/SavedStateHandleController;-><init>(Ljava/lang/String;Landroidx/lifecycle/j0;)V

    invoke-virtual {v5, v4, v0}, Landroidx/lifecycle/SavedStateHandleController;->a(LQ2/d;Landroidx/lifecycle/D;)V

    move-object p2, v0

    check-cast p2, Landroidx/lifecycle/L;

    iget-object p2, p2, Landroidx/lifecycle/L;->d:Landroidx/lifecycle/C;

    sget-object v6, Landroidx/lifecycle/C;->INITIALIZED:Landroidx/lifecycle/C;

    if-eq p2, v6, :cond_5

    sget-object v6, Landroidx/lifecycle/C;->STARTED:Landroidx/lifecycle/C;

    invoke-virtual {p2, v6}, Landroidx/lifecycle/C;->a(Landroidx/lifecycle/C;)Z

    move-result p2

    if-eqz p2, :cond_4

    goto :goto_2

    :cond_4
    new-instance p2, Landroidx/lifecycle/LegacySavedStateHandleController$tryToAddRecreator$1;

    invoke-direct {p2, v4, v0}, Landroidx/lifecycle/LegacySavedStateHandleController$tryToAddRecreator$1;-><init>(LQ2/d;Landroidx/lifecycle/D;)V

    invoke-virtual {v0, p2}, Landroidx/lifecycle/D;->a(Landroidx/lifecycle/I;)V

    goto :goto_3

    :cond_5
    :goto_2
    invoke-virtual {v4}, LQ2/d;->d()V

    :goto_3
    if-eqz v1, :cond_6

    if-eqz v2, :cond_6

    filled-new-array {v2, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p1, v3, p0}, Landroidx/lifecycle/p0;->b(Ljava/lang/Class;Ljava/lang/reflect/Constructor;[Ljava/lang/Object;)Landroidx/lifecycle/s0;

    move-result-object p0

    goto :goto_4

    :cond_6
    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p1, v3, p0}, Landroidx/lifecycle/p0;->b(Ljava/lang/Class;Ljava/lang/reflect/Constructor;[Ljava/lang/Object;)Landroidx/lifecycle/s0;

    move-result-object p0

    :goto_4
    const-string p1, "androidx.lifecycle.savedstate.vm.tag"

    invoke-virtual {p0, p1, v5}, Landroidx/lifecycle/s0;->setTagIfAbsent(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0

    :cond_7
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "SavedStateViewModelFactory constructed with empty constructor supports only calls to create(modelClass: Class<T>, extras: CreationExtras)."

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final create(Ljava/lang/Class;)Landroidx/lifecycle/s0;
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1, v0}, Landroidx/lifecycle/o0;->b(Ljava/lang/Class;Ljava/lang/String;)Landroidx/lifecycle/s0;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Local and anonymous classes can not be ViewModels"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
