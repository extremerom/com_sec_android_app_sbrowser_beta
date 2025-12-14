.class public final LI/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field public final a:LGa/d;

.field public final b:LR7/a;

.field public p:I

.field public q:LI/h;

.field public final r:Ljava/util/ArrayList;

.field public s:Ljava/lang/Exception;


# direct methods
.method public constructor <init>(LGa/d;)V
    .locals 2

    new-instance v0, LR7/a;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    iput v1, p0, LI/a;->p:I

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, LI/a;->r:Ljava/util/ArrayList;

    iput-object p1, p0, LI/a;->a:LGa/d;

    iput-object v0, p0, LI/a;->b:LR7/a;

    return-void
.end method


# virtual methods
.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3

    iget-object v0, p0, LI/a;->b:LR7/a;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, LI/h;

    sget v1, Ld/c;->a:I

    if-nez p2, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    :cond_0
    sget-object v1, Ld/d;->j:Ljava/lang/String;

    invoke-interface {p2, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v1

    if-eqz v1, :cond_1

    instance-of v2, v1, Ld/d;

    if-eqz v2, :cond_1

    move-object p2, v1

    check-cast p2, Ld/d;

    goto :goto_0

    :cond_1
    new-instance v1, Ld/b;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object p2, v1, Ld/b;->a:Landroid/os/IBinder;

    move-object p2, v1

    :goto_0
    invoke-direct {v0, p2, p1}, LI/h;-><init>(Ld/d;Landroid/content/ComponentName;)V

    iput-object v0, p0, LI/a;->q:LI/h;

    iget-object p1, p0, LI/a;->r:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LK0/i;

    iget-object v1, p0, LI/a;->q:LI/h;

    invoke-virtual {v0, v1}, LK0/i;->a(Ljava/lang/Object;)V

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    const/4 p1, 0x1

    iput p1, p0, LI/a;->p:I

    return-void
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0

    const/4 p1, 0x0

    iput-object p1, p0, LI/a;->q:LI/h;

    iget-object p1, p0, LI/a;->a:LGa/d;

    invoke-virtual {p1}, LGa/d;->run()V

    const/4 p1, 0x2

    iput p1, p0, LI/a;->p:I

    return-void
.end method
