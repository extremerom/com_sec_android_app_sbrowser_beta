.class public final Lp3/d;
.super Lp3/e;
.source "SourceFile"


# instance fields
.field public final synthetic c:Lg3/n;


# direct methods
.method public constructor <init>(Lg3/n;)V
    .locals 0

    iput-object p1, p0, Lp3/d;->c:Lg3/n;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lp3/e;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final b()V
    .locals 4

    iget-object p0, p0, Lp3/d;->c:Lg3/n;

    iget-object v0, p0, Lg3/n;->c:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v0}, LJ2/U;->beginTransaction()V

    :try_start_0
    invoke-virtual {v0}, Landroidx/work/impl/WorkDatabase;->h()Lo3/r;

    move-result-object v1

    invoke-virtual {v1}, Lo3/r;->e()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {p0, v2}, Lp3/e;->a(Lg3/n;Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    iget-object v1, p0, Lg3/n;->c:Landroidx/work/impl/WorkDatabase;

    iget-object p0, p0, Lg3/n;->b:Lf3/c;

    iget-object p0, p0, Lf3/c;->c:Lf3/w;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    new-instance p0, Lo3/d;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v3, "last_cancel_all_time_ms"

    invoke-direct {p0, v3, v2}, Lo3/d;-><init>(Ljava/lang/String;Ljava/lang/Long;)V

    invoke-virtual {v1}, Landroidx/work/impl/WorkDatabase;->c()Lo3/e;

    move-result-object v1

    invoke-virtual {v1, p0}, Lo3/e;->l(Lo3/d;)V

    invoke-virtual {v0}, LJ2/U;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, LJ2/U;->endTransaction()V

    return-void

    :goto_1
    invoke-virtual {v0}, LJ2/U;->endTransaction()V

    throw p0
.end method
