.class public final Lp3/c;
.super Lp3/e;
.source "SourceFile"


# instance fields
.field public final synthetic c:Lg3/n;

.field public final synthetic d:Ljava/lang/String;

.field public final synthetic e:Z


# direct methods
.method public constructor <init>(Lg3/n;Ljava/lang/String;Z)V
    .locals 0

    iput-object p1, p0, Lp3/c;->c:Lg3/n;

    iput-object p2, p0, Lp3/c;->d:Ljava/lang/String;

    iput-boolean p3, p0, Lp3/c;->e:Z

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lp3/e;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final b()V
    .locals 4

    iget-object v0, p0, Lp3/c;->c:Lg3/n;

    iget-object v1, v0, Lg3/n;->c:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v1}, LJ2/U;->beginTransaction()V

    :try_start_0
    invoke-virtual {v1}, Landroidx/work/impl/WorkDatabase;->h()Lo3/r;

    move-result-object v2

    iget-object v3, p0, Lp3/c;->d:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lo3/r;->k(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v0, v3}, Lp3/e;->a(Lg3/n;Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    invoke-virtual {v1}, LJ2/U;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v1}, LJ2/U;->endTransaction()V

    iget-boolean p0, p0, Lp3/c;->e:Z

    if-eqz p0, :cond_1

    iget-object p0, v0, Lg3/n;->b:Lf3/c;

    iget-object v1, v0, Lg3/n;->c:Landroidx/work/impl/WorkDatabase;

    iget-object v0, v0, Lg3/n;->e:Ljava/util/List;

    invoke-static {p0, v1, v0}, Lg3/h;->b(Lf3/c;Landroidx/work/impl/WorkDatabase;Ljava/util/List;)V

    :cond_1
    return-void

    :goto_1
    invoke-virtual {v1}, LJ2/U;->endTransaction()V

    throw p0
.end method
