.class public final Lp3/b;
.super Lp3/e;
.source "SourceFile"


# instance fields
.field public final synthetic c:I

.field public final synthetic d:Lg3/n;

.field public final synthetic e:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lg3/n;Ljava/lang/Object;I)V
    .locals 0

    iput p3, p0, Lp3/b;->c:I

    iput-object p1, p0, Lp3/b;->d:Lg3/n;

    iput-object p2, p0, Lp3/b;->e:Ljava/lang/Object;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lp3/e;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final b()V
    .locals 3

    iget v0, p0, Lp3/b;->c:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lp3/b;->d:Lg3/n;

    iget-object v1, v0, Lg3/n;->c:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v1}, LJ2/U;->beginTransaction()V

    :try_start_0
    invoke-virtual {v1}, Landroidx/work/impl/WorkDatabase;->h()Lo3/r;

    move-result-object v2

    iget-object p0, p0, Lp3/b;->e:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    invoke-virtual {v2, p0}, Lo3/r;->l(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v0, v2}, Lp3/e;->a(Lg3/n;Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    invoke-virtual {v1}, LJ2/U;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v1}, LJ2/U;->endTransaction()V

    iget-object p0, v0, Lg3/n;->b:Lf3/c;

    iget-object v1, v0, Lg3/n;->c:Landroidx/work/impl/WorkDatabase;

    iget-object v0, v0, Lg3/n;->e:Ljava/util/List;

    invoke-static {p0, v1, v0}, Lg3/h;->b(Lf3/c;Landroidx/work/impl/WorkDatabase;Ljava/util/List;)V

    return-void

    :goto_1
    invoke-virtual {v1}, LJ2/U;->endTransaction()V

    throw p0

    :pswitch_0
    iget-object v0, p0, Lp3/b;->d:Lg3/n;

    iget-object v1, v0, Lg3/n;->c:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v1}, LJ2/U;->beginTransaction()V

    :try_start_1
    iget-object p0, p0, Lp3/b;->e:Ljava/lang/Object;

    check-cast p0, Ljava/util/UUID;

    invoke-virtual {p0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lp3/e;->a(Lg3/n;Ljava/lang/String;)V

    invoke-virtual {v1}, LJ2/U;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    invoke-virtual {v1}, LJ2/U;->endTransaction()V

    iget-object p0, v0, Lg3/n;->b:Lf3/c;

    iget-object v1, v0, Lg3/n;->c:Landroidx/work/impl/WorkDatabase;

    iget-object v0, v0, Lg3/n;->e:Ljava/util/List;

    invoke-static {p0, v1, v0}, Lg3/h;->b(Lf3/c;Landroidx/work/impl/WorkDatabase;Ljava/util/List;)V

    return-void

    :catchall_1
    move-exception p0

    invoke-virtual {v1}, LJ2/U;->endTransaction()V

    throw p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
