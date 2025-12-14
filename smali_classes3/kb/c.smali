.class public abstract Lkb/c;
.super Lkb/a;
.source "SourceFile"


# instance fields
.field private final _context:Lib/h;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private transient intercepted:Lib/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lib/c<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lib/c;)V
    .locals 1

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lib/c;->getContext()Lib/h;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-direct {p0, p1, v0}, Lkb/c;-><init>(Lib/c;Lib/h;)V

    return-void
.end method

.method public constructor <init>(Lib/c;Lib/h;)V
    .locals 0

    invoke-direct {p0, p1}, Lkb/a;-><init>(Lib/c;)V

    iput-object p2, p0, Lkb/c;->_context:Lib/h;

    return-void
.end method


# virtual methods
.method public getContext()Lib/h;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lkb/c;->_context:Lib/h;

    invoke-static {p0}, Ltb/k;->c(Ljava/lang/Object;)V

    return-object p0
.end method

.method public final intercepted()Lib/c;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lib/c<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lkb/c;->intercepted:Lib/c;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lkb/c;->getContext()Lib/h;

    move-result-object v0

    sget-object v1, Lib/d;->a:Lib/d;

    invoke-interface {v0, v1}, Lib/h;->get(Lib/g;)Lib/f;

    move-result-object v0

    check-cast v0, Lib/e;

    if-eqz v0, :cond_0

    check-cast v0, LNc/x;

    new-instance v1, LUc/h;

    invoke-direct {v1, v0, p0}, LUc/h;-><init>(LNc/x;Lkb/c;)V

    move-object v0, v1

    goto :goto_0

    :cond_0
    move-object v0, p0

    :goto_0
    iput-object v0, p0, Lkb/c;->intercepted:Lib/c;

    :cond_1
    return-object v0
.end method

.method public releaseIntercepted()V
    .locals 4

    iget-object v0, p0, Lkb/c;->intercepted:Lib/c;

    if-eqz v0, :cond_2

    if-eq v0, p0, :cond_2

    invoke-virtual {p0}, Lkb/c;->getContext()Lib/h;

    move-result-object v1

    sget-object v2, Lib/d;->a:Lib/d;

    invoke-interface {v1, v2}, Lib/h;->get(Lib/g;)Lib/f;

    move-result-object v1

    invoke-static {v1}, Ltb/k;->c(Ljava/lang/Object;)V

    check-cast v1, Lib/e;

    check-cast v0, LUc/h;

    :cond_0
    sget-object v1, LUc/h;->h:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    sget-object v3, LUc/a;->d:LQ6/i;

    if-eq v2, v3, :cond_0

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, LNc/k;

    if-eqz v1, :cond_1

    check-cast v0, LNc/k;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    invoke-virtual {v0}, LNc/k;->m()V

    :cond_2
    sget-object v0, Lkb/b;->a:Lkb/b;

    iput-object v0, p0, Lkb/c;->intercepted:Lib/c;

    return-void
.end method
