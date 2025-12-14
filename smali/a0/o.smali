.class public final La0/o;
.super La0/s;
.source "SourceFile"


# instance fields
.field public final a:I

.field public final b:Z

.field public final c:Z

.field public d:Ljava/util/HashSet;

.field public final e:Ljava/util/LinkedHashSet;

.field public final f:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

.field public final synthetic g:La0/q;


# direct methods
.method public constructor <init>(La0/q;IZZLa0/x;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, La0/o;->g:La0/q;

    iput p2, p0, La0/o;->a:I

    iput-boolean p3, p0, La0/o;->b:Z

    iput-boolean p4, p0, La0/o;->c:Z

    new-instance p1, Ljava/util/LinkedHashSet;

    invoke-direct {p1}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object p1, p0, La0/o;->e:Ljava/util/LinkedHashSet;

    sget-object p1, Li0/e;->d:Li0/e;

    sget-object p2, La0/V;->d:La0/V;

    invoke-static {p1, p2}, La0/d;->E(Ljava/lang/Object;La0/A0;)Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    move-result-object p1

    iput-object p1, p0, La0/o;->f:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    return-void
.end method


# virtual methods
.method public final a(La0/u;Lsb/n;)V
    .locals 0

    iget-object p0, p0, La0/o;->g:La0/q;

    iget-object p0, p0, La0/q;->b:La0/s;

    invoke-virtual {p0, p1, p2}, La0/s;->a(La0/u;Lsb/n;)V

    return-void
.end method

.method public final b()V
    .locals 1

    iget-object p0, p0, La0/o;->g:La0/q;

    iget v0, p0, La0/q;->z:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, La0/q;->z:I

    return-void
.end method

.method public final c()Z
    .locals 0

    iget-object p0, p0, La0/o;->g:La0/q;

    iget-object p0, p0, La0/q;->b:La0/s;

    invoke-virtual {p0}, La0/s;->c()Z

    move-result p0

    return p0
.end method

.method public final d()Z
    .locals 0

    iget-boolean p0, p0, La0/o;->b:Z

    return p0
.end method

.method public final e()Z
    .locals 0

    iget-boolean p0, p0, La0/o;->c:Z

    return p0
.end method

.method public final f()La0/e0;
    .locals 0

    iget-object p0, p0, La0/o;->f:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-virtual {p0}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, La0/e0;

    return-object p0
.end method

.method public final g()I
    .locals 0

    iget p0, p0, La0/o;->a:I

    return p0
.end method

.method public final h()Lib/h;
    .locals 0

    iget-object p0, p0, La0/o;->g:La0/q;

    iget-object p0, p0, La0/q;->b:La0/s;

    invoke-virtual {p0}, La0/s;->h()Lib/h;

    move-result-object p0

    return-object p0
.end method

.method public final i(La0/u;)V
    .locals 2

    iget-object p0, p0, La0/o;->g:La0/q;

    iget-object v0, p0, La0/q;->b:La0/s;

    iget-object v1, p0, La0/q;->g:La0/u;

    invoke-virtual {v0, v1}, La0/s;->i(La0/u;)V

    iget-object p0, p0, La0/q;->b:La0/s;

    invoke-virtual {p0, p1}, La0/s;->i(La0/u;)V

    return-void
.end method

.method public final j(Ljava/util/Set;)V
    .locals 1

    iget-object v0, p0, La0/o;->d:Ljava/util/HashSet;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, La0/o;->d:Ljava/util/HashSet;

    :cond_0
    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final k(La0/q;)V
    .locals 0

    iget-object p0, p0, La0/o;->e:Ljava/util/LinkedHashSet;

    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final l(La0/u;)V
    .locals 0

    iget-object p0, p0, La0/o;->g:La0/q;

    iget-object p0, p0, La0/q;->b:La0/s;

    invoke-virtual {p0, p1}, La0/s;->l(La0/u;)V

    return-void
.end method

.method public final m()V
    .locals 1

    iget-object p0, p0, La0/o;->g:La0/q;

    iget v0, p0, La0/q;->z:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, La0/q;->z:I

    return-void
.end method

.method public final n(La0/m;)V
    .locals 3

    iget-object v0, p0, La0/o;->d:Ljava/util/HashSet;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    const-string v2, "null cannot be cast to non-null type androidx.compose.runtime.ComposerImpl"

    invoke-static {p1, v2}, Ltb/k;->d(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v2, p1

    check-cast v2, La0/q;

    iget-object v2, v2, La0/q;->c:La0/w0;

    invoke-interface {v1, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    iget-object p0, p0, La0/o;->e:Ljava/util/LinkedHashSet;

    invoke-static {p0}, Ltb/z;->a(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0, p1}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public final o(La0/u;)V
    .locals 0

    iget-object p0, p0, La0/o;->g:La0/q;

    iget-object p0, p0, La0/q;->b:La0/s;

    invoke-virtual {p0, p1}, La0/s;->o(La0/u;)V

    return-void
.end method

.method public final p()V
    .locals 6

    iget-object v0, p0, La0/o;->e:Ljava/util/LinkedHashSet;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object p0, p0, La0/o;->d:Ljava/util/HashSet;

    if-eqz p0, :cond_1

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, La0/q;

    invoke-virtual {p0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Set;

    iget-object v5, v2, La0/q;->c:La0/w0;

    invoke-interface {v4, v5}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-interface {v0}, Ljava/util/Set;->clear()V

    :cond_2
    return-void
.end method
