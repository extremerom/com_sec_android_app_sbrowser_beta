.class public Landroidx/lifecycle/W;
.super Landroidx/lifecycle/X;
.source "SourceFile"


# instance fields
.field private mSources:LG/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LG/f;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroidx/lifecycle/S;-><init>()V

    new-instance v0, LG/f;

    invoke-direct {v0}, LG/f;-><init>()V

    iput-object v0, p0, Landroidx/lifecycle/W;->mSources:LG/f;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct {p0, p1}, Landroidx/lifecycle/S;-><init>(Ljava/lang/Object;)V

    new-instance p1, LG/f;

    invoke-direct {p1}, LG/f;-><init>()V

    iput-object p1, p0, Landroidx/lifecycle/W;->mSources:LG/f;

    return-void
.end method


# virtual methods
.method public addSource(Landroidx/lifecycle/S;Landroidx/lifecycle/Y;)V
    .locals 3
    .param p1    # Landroidx/lifecycle/S;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroidx/lifecycle/Y;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Ljava/lang/Object;",
            ">(",
            "Landroidx/lifecycle/S;",
            "Landroidx/lifecycle/Y;",
            ")V"
        }
    .end annotation

    if-eqz p1, :cond_4

    new-instance v0, Landroidx/lifecycle/V;

    invoke-direct {v0, p1, p2}, Landroidx/lifecycle/V;-><init>(Landroidx/lifecycle/S;Landroidx/lifecycle/Y;)V

    iget-object v1, p0, Landroidx/lifecycle/W;->mSources:LG/f;

    invoke-virtual {v1, p1, v0}, LG/f;->i(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/lifecycle/V;

    if-eqz v1, :cond_1

    iget-object v2, v1, Landroidx/lifecycle/V;->b:Landroidx/lifecycle/Y;

    if-ne v2, p2, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "This source was already added with the different observer"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    if-eqz v1, :cond_2

    return-void

    :cond_2
    invoke-virtual {p0}, Landroidx/lifecycle/S;->hasActiveObservers()Z

    move-result p0

    if-eqz p0, :cond_3

    invoke-virtual {p1, v0}, Landroidx/lifecycle/S;->observeForever(Landroidx/lifecycle/Y;)V

    :cond_3
    return-void

    :cond_4
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "source cannot be null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public onActive()V
    .locals 2
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    iget-object p0, p0, Landroidx/lifecycle/W;->mSources:LG/f;

    invoke-virtual {p0}, LG/f;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    move-object v0, p0

    check-cast v0, LG/b;

    invoke-virtual {v0}, LG/b;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, LG/b;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/lifecycle/V;

    iget-object v1, v0, Landroidx/lifecycle/V;->a:Landroidx/lifecycle/S;

    invoke-virtual {v1, v0}, Landroidx/lifecycle/S;->observeForever(Landroidx/lifecycle/Y;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onInactive()V
    .locals 2
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    iget-object p0, p0, Landroidx/lifecycle/W;->mSources:LG/f;

    invoke-virtual {p0}, LG/f;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    move-object v0, p0

    check-cast v0, LG/b;

    invoke-virtual {v0}, LG/b;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, LG/b;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/lifecycle/V;

    iget-object v1, v0, Landroidx/lifecycle/V;->a:Landroidx/lifecycle/S;

    invoke-virtual {v1, v0}, Landroidx/lifecycle/S;->removeObserver(Landroidx/lifecycle/Y;)V

    goto :goto_0

    :cond_0
    return-void
.end method
