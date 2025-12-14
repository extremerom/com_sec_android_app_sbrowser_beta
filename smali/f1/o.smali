.class public final Lf1/o;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/Runnable;

.field public final b:Ljava/util/concurrent/CopyOnWriteArrayList;

.field public final c:Ljava/util/HashMap;


# direct methods
.method public constructor <init>(Ljava/lang/Runnable;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lf1/o;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lf1/o;->c:Ljava/util/HashMap;

    iput-object p1, p0, Lf1/o;->a:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final a(Lf1/p;Landroidx/lifecycle/J;Landroidx/lifecycle/C;)V
    .locals 4

    invoke-interface {p2}, Landroidx/lifecycle/J;->getLifecycle()Landroidx/lifecycle/D;

    move-result-object p2

    iget-object v0, p0, Lf1/o;->c:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lf1/n;

    if-eqz v1, :cond_0

    iget-object v2, v1, Lf1/n;->a:Landroidx/lifecycle/D;

    iget-object v3, v1, Lf1/n;->b:Landroidx/lifecycle/H;

    invoke-virtual {v2, v3}, Landroidx/lifecycle/D;->b(Landroidx/lifecycle/I;)V

    const/4 v2, 0x0

    iput-object v2, v1, Lf1/n;->b:Landroidx/lifecycle/H;

    :cond_0
    new-instance v1, Lf1/m;

    invoke-direct {v1, p0, p3, p1}, Lf1/m;-><init>(Lf1/o;Landroidx/lifecycle/C;Lf1/p;)V

    new-instance p0, Lf1/n;

    invoke-direct {p0, p2, v1}, Lf1/n;-><init>(Landroidx/lifecycle/D;Landroidx/lifecycle/H;)V

    invoke-virtual {v0, p1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final b(Landroid/view/Menu;)V
    .locals 1

    iget-object p0, p0, Lf1/o;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lf1/p;

    invoke-interface {v0, p1}, Lf1/p;->onPrepareMenu(Landroid/view/Menu;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final c(Lf1/p;)V
    .locals 2

    iget-object v0, p0, Lf1/o;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lf1/o;->c:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lf1/n;

    if-eqz p1, :cond_0

    iget-object v0, p1, Lf1/n;->a:Landroidx/lifecycle/D;

    iget-object v1, p1, Lf1/n;->b:Landroidx/lifecycle/H;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/D;->b(Landroidx/lifecycle/I;)V

    const/4 v0, 0x0

    iput-object v0, p1, Lf1/n;->b:Landroidx/lifecycle/H;

    :cond_0
    iget-object p0, p0, Lf1/o;->a:Ljava/lang/Runnable;

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    return-void
.end method
