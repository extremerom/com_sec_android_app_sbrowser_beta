.class public final LJ0/q;
.super LJ0/i;
.source "SourceFile"


# instance fields
.field public final s:Landroid/view/View;

.field public final t:Lw0/d;

.field public u:Lj0/j;

.field public v:Lsb/k;

.field public w:Lsb/k;

.field public x:Lsb/k;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lsb/k;La0/o;Lj0/k;ILB0/P;)V
    .locals 8

    invoke-interface {p2, p1}, Lsb/k;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/View;

    new-instance v7, Lw0/d;

    invoke-direct {v7}, Lw0/d;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p3

    move v3, p5

    move-object v4, v7

    move-object v5, p2

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, LJ0/i;-><init>(Landroid/content/Context;La0/s;ILw0/d;Landroid/view/View;LB0/P;)V

    iput-object p2, p0, LJ0/q;->s:Landroid/view/View;

    iput-object v7, p0, LJ0/q;->t:Lw0/d;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    invoke-static {p5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const/4 p3, 0x0

    if-eqz p4, :cond_0

    invoke-interface {p4, p1}, Lj0/k;->e(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p5

    goto :goto_0

    :cond_0
    move-object p5, p3

    :goto_0
    instance-of p6, p5, Landroid/util/SparseArray;

    if-eqz p6, :cond_1

    move-object p3, p5

    check-cast p3, Landroid/util/SparseArray;

    :cond_1
    if-eqz p3, :cond_2

    invoke-virtual {p2, p3}, Landroid/view/View;->restoreHierarchyState(Landroid/util/SparseArray;)V

    :cond_2
    if-eqz p4, :cond_3

    new-instance p2, LJ0/h;

    const/4 p3, 0x2

    invoke-direct {p2, p0, p3}, LJ0/h;-><init>(LJ0/q;I)V

    invoke-interface {p4, p1, p2}, Lj0/k;->a(Ljava/lang/String;Lsb/a;)Lj0/j;

    move-result-object p1

    invoke-direct {p0, p1}, LJ0/q;->setSavableRegistryEntry(Lj0/j;)V

    :cond_3
    sget-object p1, LJ0/c;->d:LJ0/c;

    iput-object p1, p0, LJ0/q;->v:Lsb/k;

    iput-object p1, p0, LJ0/q;->w:Lsb/k;

    iput-object p1, p0, LJ0/q;->x:Lsb/k;

    return-void
.end method

.method public static final f(LJ0/q;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, LJ0/q;->setSavableRegistryEntry(Lj0/j;)V

    return-void
.end method

.method private final setSavableRegistryEntry(Lj0/j;)V
    .locals 1

    iget-object v0, p0, LJ0/q;->u:Lj0/j;

    if-eqz v0, :cond_0

    check-cast v0, LZ3/x;

    invoke-virtual {v0}, LZ3/x;->K()V

    :cond_0
    iput-object p1, p0, LJ0/q;->u:Lj0/j;

    return-void
.end method


# virtual methods
.method public final getDispatcher()Lw0/d;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, LJ0/q;->t:Lw0/d;

    return-object p0
.end method

.method public final getReleaseBlock()Lsb/k;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lsb/k;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, LJ0/q;->x:Lsb/k;

    return-object p0
.end method

.method public final getResetBlock()Lsb/k;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lsb/k;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, LJ0/q;->w:Lsb/k;

    return-object p0
.end method

.method public bridge synthetic getSubCompositionView()Landroidx/compose/ui/platform/a;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

.method public final getUpdateBlock()Lsb/k;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lsb/k;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, LJ0/q;->v:Lsb/k;

    return-object p0
.end method

.method public getViewRoot()Landroid/view/View;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    return-object p0
.end method

.method public final setReleaseBlock(Lsb/k;)V
    .locals 1
    .param p1    # Lsb/k;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lsb/k;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, LJ0/q;->x:Lsb/k;

    new-instance p1, LJ0/h;

    const/4 v0, 0x3

    invoke-direct {p1, p0, v0}, LJ0/h;-><init>(LJ0/q;I)V

    invoke-virtual {p0, p1}, LJ0/i;->setRelease(Lsb/a;)V

    return-void
.end method

.method public final setResetBlock(Lsb/k;)V
    .locals 1
    .param p1    # Lsb/k;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lsb/k;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, LJ0/q;->w:Lsb/k;

    new-instance p1, LJ0/h;

    const/4 v0, 0x4

    invoke-direct {p1, p0, v0}, LJ0/h;-><init>(LJ0/q;I)V

    invoke-virtual {p0, p1}, LJ0/i;->setReset(Lsb/a;)V

    return-void
.end method

.method public final setUpdateBlock(Lsb/k;)V
    .locals 1
    .param p1    # Lsb/k;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lsb/k;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, LJ0/q;->v:Lsb/k;

    new-instance p1, LJ0/h;

    const/4 v0, 0x5

    invoke-direct {p1, p0, v0}, LJ0/h;-><init>(LJ0/q;I)V

    invoke-virtual {p0, p1}, LJ0/i;->setUpdate(Lsb/a;)V

    return-void
.end method
