.class public final Lz0/t;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements La0/j;


# instance fields
.field public final a:Landroidx/compose/ui/node/a;

.field public b:La0/s;

.field public c:LA7/h;

.field public d:I

.field public e:I

.field public final f:Ljava/util/HashMap;

.field public final g:Ljava/util/HashMap;

.field public final h:Lz0/p;

.field public final i:Lz0/n;

.field public final j:Ljava/util/HashMap;

.field public final k:Lz0/N;

.field public final l:Ljava/util/LinkedHashMap;

.field public final m:Lc0/d;

.field public n:I

.field public o:I


# direct methods
.method public constructor <init>(Landroidx/compose/ui/node/a;LA7/h;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lz0/t;->a:Landroidx/compose/ui/node/a;

    iput-object p2, p0, Lz0/t;->c:LA7/h;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lz0/t;->f:Ljava/util/HashMap;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lz0/t;->g:Ljava/util/HashMap;

    new-instance p1, Lz0/p;

    invoke-direct {p1, p0}, Lz0/p;-><init>(Lz0/t;)V

    iput-object p1, p0, Lz0/t;->h:Lz0/p;

    new-instance p1, Lz0/n;

    invoke-direct {p1, p0}, Lz0/n;-><init>(Lz0/t;)V

    iput-object p1, p0, Lz0/t;->i:Lz0/n;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lz0/t;->j:Ljava/util/HashMap;

    new-instance p1, Lz0/N;

    invoke-direct {p1}, Lz0/N;-><init>()V

    iput-object p1, p0, Lz0/t;->k:Lz0/N;

    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Lz0/t;->l:Ljava/util/LinkedHashMap;

    new-instance p1, Lc0/d;

    const/16 p2, 0x10

    new-array p2, p2, [Ljava/lang/Object;

    invoke-direct {p1, p2}, Lc0/d;-><init>([Ljava/lang/Object;)V

    iput-object p1, p0, Lz0/t;->m:Lc0/d;

    return-void
.end method

.method public static g(La0/u;Landroidx/compose/ui/node/a;ZLa0/s;Li0/a;)La0/u;
    .locals 1

    if-eqz p0, :cond_0

    iget-boolean v0, p0, La0/u;->r:Z

    if-eqz v0, :cond_1

    :cond_0
    sget p0, Landroidx/compose/ui/platform/v;->a:I

    new-instance p0, LB0/W;

    invoke-direct {p0, p1}, LJ2/i0;-><init>(Ljava/lang/Object;)V

    new-instance p1, La0/u;

    invoke-direct {p1, p3, p0}, La0/u;-><init>(La0/s;LJ2/i0;)V

    move-object p0, p1

    :cond_1
    if-nez p2, :cond_2

    invoke-virtual {p0, p4}, La0/u;->k(Lsb/n;)V

    goto :goto_0

    :cond_2
    iget-object p1, p0, La0/u;->q:La0/q;

    const/16 p2, 0x64

    iput p2, p1, La0/q;->y:I

    const/4 p3, 0x1

    iput-boolean p3, p1, La0/q;->x:Z

    invoke-virtual {p0, p4}, La0/u;->k(Lsb/n;)V

    iget-boolean p3, p1, La0/q;->E:Z

    if-nez p3, :cond_3

    iget p3, p1, La0/q;->y:I

    if-ne p3, p2, :cond_3

    const/4 p2, -0x1

    iput p2, p1, La0/q;->y:I

    const/4 p2, 0x0

    iput-boolean p2, p1, La0/q;->x:Z

    :goto_0
    return-object p0

    :cond_3
    const-string p0, "Cannot disable reuse from root if it was caused by other groups"

    invoke-static {p0}, La0/d;->N(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method


# virtual methods
.method public final a()V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lz0/t;->e(Z)V

    return-void
.end method

.method public final b()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lz0/t;->e(Z)V

    return-void
.end method

.method public final c()V
    .locals 4

    const/4 v0, 0x1

    iget-object v1, p0, Lz0/t;->a:Landroidx/compose/ui/node/a;

    iput-boolean v0, v1, Landroidx/compose/ui/node/a;->i:Z

    iget-object v0, p0, Lz0/t;->f:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    check-cast v2, Ljava/lang/Iterable;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lz0/m;

    iget-object v3, v3, Lz0/m;->c:La0/u;

    if-eqz v3, :cond_0

    invoke-virtual {v3}, La0/u;->a()V

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Landroidx/compose/ui/node/a;->t()V

    const/4 v2, 0x0

    iput-boolean v2, v1, Landroidx/compose/ui/node/a;->i:Z

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    iget-object v0, p0, Lz0/t;->g:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    iput v2, p0, Lz0/t;->o:I

    iput v2, p0, Lz0/t;->n:I

    iget-object v0, p0, Lz0/t;->j:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    invoke-virtual {p0}, Lz0/t;->d()V

    return-void
.end method

.method public final d()V
    .locals 3

    iget-object v0, p0, Lz0/t;->a:Landroidx/compose/ui/node/a;

    invoke-virtual {v0}, Landroidx/compose/ui/node/a;->i()Ljava/util/List;

    move-result-object v0

    check-cast v0, Lc0/a;

    iget-object v0, v0, Lc0/a;->a:Lc0/d;

    iget v0, v0, Lc0/d;->c:I

    iget-object v1, p0, Lz0/t;->f:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v2

    if-ne v2, v0, :cond_2

    iget v1, p0, Lz0/t;->n:I

    sub-int v1, v0, v1

    iget v2, p0, Lz0/t;->o:I

    sub-int/2addr v1, v2

    if-ltz v1, :cond_1

    iget-object v0, p0, Lz0/t;->j:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v1

    iget v2, p0, Lz0/t;->o:I

    if-ne v1, v2, :cond_0

    return-void

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Incorrect state. Precomposed children "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p0, p0, Lz0/t;->o:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ". Map size "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    const-string v1, "Incorrect state. Total children "

    const-string v2, ". Reusable children "

    invoke-static {v0, v1, v2}, Lt/b;->l(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lz0/t;->n:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ". Precomposed children "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lz0/t;->o:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v2, "Inconsistency between the count of nodes tracked by the state ("

    invoke-direct {p0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ") and the children count on the SubcomposeLayout ("

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "). Are you trying to use the state of the disposed SubcomposeLayout?"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final e(Z)V
    .locals 9

    const/4 v0, 0x0

    iput v0, p0, Lz0/t;->o:I

    iget-object v1, p0, Lz0/t;->j:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    iget-object v1, p0, Lz0/t;->a:Landroidx/compose/ui/node/a;

    invoke-virtual {v1}, Landroidx/compose/ui/node/a;->i()Ljava/util/List;

    move-result-object v2

    check-cast v2, Lc0/a;

    iget-object v2, v2, Lc0/a;->a:Lc0/d;

    iget v2, v2, Lc0/d;->c:I

    iget v3, p0, Lz0/t;->n:I

    if-eq v3, v2, :cond_5

    iput v2, p0, Lz0/t;->n:I

    sget-object v3, Lk0/n;->a:LZ3/x;

    invoke-virtual {v3}, LZ3/x;->u()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lk0/h;

    const/4 v4, 0x0

    invoke-static {v3, v4, v0}, Lk0/n;->h(Lk0/h;Lsb/k;Z)Lk0/h;

    move-result-object v3

    :try_start_0
    invoke-virtual {v3}, Lk0/h;->j()Lk0/h;

    move-result-object v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :goto_0
    if-ge v0, v2, :cond_4

    :try_start_1
    invoke-virtual {v1}, Landroidx/compose/ui/node/a;->i()Ljava/util/List;

    move-result-object v5

    check-cast v5, Lc0/a;

    invoke-virtual {v5, v0}, Lc0/a;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/compose/ui/node/a;

    iget-object v6, p0, Lz0/t;->f:Ljava/util/HashMap;

    invoke-virtual {v6, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lz0/m;

    if-eqz v6, :cond_3

    iget-object v7, v6, Lz0/m;->f:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-virtual {v7}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_3

    iget-object v5, v5, Landroidx/compose/ui/node/a;->s:LB0/G;

    iget-object v7, v5, LB0/G;->m:LB0/F;

    sget-object v8, LB0/x;->NotUsed:LB0/x;

    iput-object v8, v7, LB0/F;->h:LB0/x;

    iget-object v5, v5, LB0/G;->n:LB0/C;

    if-eqz v5, :cond_0

    iput-object v8, v5, LB0/C;->g:LB0/x;

    :cond_0
    if-eqz p1, :cond_2

    iget-object v5, v6, Lz0/m;->c:La0/u;

    if-eqz v5, :cond_1

    invoke-virtual {v5}, La0/u;->l()V

    :cond_1
    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    sget-object v7, La0/V;->f:La0/V;

    invoke-static {v5, v7}, La0/d;->E(Ljava/lang/Object;La0/A0;)Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    move-result-object v5

    iput-object v5, v6, Lz0/m;->f:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_2
    iget-object v5, v6, Lz0/m;->f:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    sget-object v7, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v5, v7}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->setValue(Ljava/lang/Object;)V

    :goto_1
    sget-object v5, Lz0/J;->a:Lz0/g;

    iput-object v5, v6, Lz0/m;->a:Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :goto_2
    :try_start_2
    invoke-static {v4}, Lk0/h;->p(Lk0/h;)V

    throw p0

    :catchall_1
    move-exception p0

    goto :goto_3

    :cond_4
    invoke-static {v4}, Lk0/h;->p(Lk0/h;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    invoke-virtual {v3}, Lk0/h;->c()V

    iget-object p1, p0, Lz0/t;->g:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->clear()V

    goto :goto_4

    :goto_3
    invoke-virtual {v3}, Lk0/h;->c()V

    throw p0

    :cond_5
    :goto_4
    invoke-virtual {p0}, Lz0/t;->d()V

    return-void
.end method

.method public final f(Ljava/lang/Object;Lsb/n;)Lz0/s;
    .locals 0

    iget-object p0, p0, Lz0/t;->a:Landroidx/compose/ui/node/a;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Lz0/s;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-object p0
.end method
