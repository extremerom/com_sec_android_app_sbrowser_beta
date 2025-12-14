.class public final LB0/M;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final synthetic a:I

.field public final b:Ljava/lang/Object;

.field public final c:Ljava/lang/Object;

.field public d:Ljava/lang/Object;

.field public final e:Ljava/lang/Object;

.field public f:Ljava/lang/Object;

.field public g:Ljava/lang/Object;

.field public h:Ljava/lang/Object;

.field public i:Ljava/lang/Object;


# direct methods
.method public constructor <init>(LN/u;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, LB0/M;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LB0/M;->b:Ljava/lang/Object;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, LB0/M;->c:Ljava/lang/Object;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, LB0/M;->d:Ljava/lang/Object;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, LB0/M;->e:Ljava/lang/Object;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, LB0/M;->g:Ljava/lang/Object;

    new-instance p1, LN/p;

    invoke-direct {p1}, LN/p;-><init>()V

    iput-object p1, p0, LB0/M;->h:Ljava/lang/Object;

    new-instance p1, LN/p;

    invoke-direct {p1}, LN/p;-><init>()V

    iput-object p1, p0, LB0/M;->i:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lf3/c;Lr3/a;Lg3/d;Landroidx/work/impl/WorkDatabase;Lo3/q;Ljava/util/ArrayList;)V
    .locals 2

    const/4 v0, 0x3

    iput v0, p0, LB0/M;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, LZ3/x;

    const/16 v1, 0xd

    invoke-direct {v0, v1}, LZ3/x;-><init>(I)V

    iput-object v0, p0, LB0/M;->i:Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, LB0/M;->b:Ljava/lang/Object;

    iput-object p3, p0, LB0/M;->d:Ljava/lang/Object;

    iput-object p4, p0, LB0/M;->c:Ljava/lang/Object;

    iput-object p2, p0, LB0/M;->e:Ljava/lang/Object;

    iput-object p5, p0, LB0/M;->f:Ljava/lang/Object;

    iput-object p6, p0, LB0/M;->g:Ljava/lang/Object;

    iput-object p7, p0, LB0/M;->h:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroidx/compose/ui/node/a;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, LB0/M;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LB0/M;->b:Ljava/lang/Object;

    new-instance v0, LB0/m;

    invoke-direct {v0, p1}, LB0/m;-><init>(Landroidx/compose/ui/node/a;)V

    iput-object v0, p0, LB0/M;->c:Ljava/lang/Object;

    iput-object v0, p0, LB0/M;->d:Ljava/lang/Object;

    iget-object p1, v0, LB0/m;->v:LB0/V;

    iput-object p1, p0, LB0/M;->e:Ljava/lang/Object;

    iput-object p1, p0, LB0/M;->f:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroidx/recyclerview/widget/n;)V
    .locals 3

    const/4 v0, 0x2

    iput v0, p0, LB0/M;->a:I

    sget-object v0, Landroidx/recyclerview/widget/m;->b:Landroidx/recyclerview/widget/m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, LB0/M;->d:Ljava/lang/Object;

    new-instance v1, Ljava/util/IdentityHashMap;

    invoke-direct {v1}, Ljava/util/IdentityHashMap;-><init>()V

    iput-object v1, p0, LB0/M;->e:Ljava/lang/Object;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, LB0/M;->f:Ljava/lang/Object;

    new-instance v1, LD/b;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, LD/b;-><init>(I)V

    iput-object v1, p0, LB0/M;->g:Ljava/lang/Object;

    iput-object p1, p0, LB0/M;->b:Ljava/lang/Object;

    new-instance p1, Landroidx/recyclerview/widget/F1;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p1, Landroidx/recyclerview/widget/F1;->a:Landroid/util/SparseArray;

    const/4 v1, 0x0

    iput v1, p1, Landroidx/recyclerview/widget/F1;->b:I

    iput-object p1, p0, LB0/M;->c:Ljava/lang/Object;

    iget-object p1, v0, Landroidx/recyclerview/widget/m;->a:Landroidx/recyclerview/widget/l;

    iput-object p1, p0, LB0/M;->h:Ljava/lang/Object;

    sget-object v0, Landroidx/recyclerview/widget/l;->NO_STABLE_IDS:Landroidx/recyclerview/widget/l;

    if-ne p1, v0, :cond_0

    new-instance p1, Landroidx/recyclerview/widget/k0;

    const/4 v0, 0x2

    invoke-direct {p1, v0}, Landroidx/recyclerview/widget/k0;-><init>(I)V

    iput-object p1, p0, LB0/M;->i:Ljava/lang/Object;

    goto :goto_0

    :cond_0
    sget-object v0, Landroidx/recyclerview/widget/l;->ISOLATED_STABLE_IDS:Landroidx/recyclerview/widget/l;

    if-ne p1, v0, :cond_1

    new-instance p1, LO8/d;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p1, LO8/d;->a:J

    iput-object p1, p0, LB0/M;->i:Ljava/lang/Object;

    goto :goto_0

    :cond_1
    sget-object v0, Landroidx/recyclerview/widget/l;->SHARED_STABLE_IDS:Landroidx/recyclerview/widget/l;

    if-ne p1, v0, :cond_2

    new-instance p1, Landroidx/recyclerview/widget/k0;

    const/4 v0, 0x3

    invoke-direct {p1, v0}, Landroidx/recyclerview/widget/k0;-><init>(I)V

    iput-object p1, p0, LB0/M;->i:Ljava/lang/Object;

    :goto_0
    return-void

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "unknown stable id mode"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static final a(LB0/M;Lm0/l;LB0/O;)V
    .locals 1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p1, p1, Lm0/l;->e:Lm0/l;

    :goto_0
    if-eqz p1, :cond_3

    sget-object v0, Landroidx/compose/ui/node/b;->a:LB0/N;

    if-ne p1, v0, :cond_1

    iget-object p1, p0, LB0/M;->b:Ljava/lang/Object;

    check-cast p1, Landroidx/compose/ui/node/a;

    invoke-virtual {p1}, Landroidx/compose/ui/node/a;->j()Landroidx/compose/ui/node/a;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p1, Landroidx/compose/ui/node/a;->r:LB0/M;

    iget-object p1, p1, LB0/M;->c:Ljava/lang/Object;

    check-cast p1, LB0/m;

    goto :goto_1

    :cond_0
    const/4 p1, 0x0

    :goto_1
    iput-object p1, p2, LB0/O;->k:LB0/O;

    iput-object p2, p0, LB0/M;->d:Ljava/lang/Object;

    goto :goto_2

    :cond_1
    iget v0, p1, Lm0/l;->c:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_2

    goto :goto_2

    :cond_2
    iput-object p2, p1, Lm0/l;->g:LB0/O;

    iget-object p1, p1, Lm0/l;->e:Lm0/l;

    goto :goto_0

    :cond_3
    :goto_2
    return-void
.end method

.method public static e(Lm0/k;Lm0/l;)Lm0/l;
    .locals 2

    instance-of v0, p0, LB0/K;

    const/4 v1, 0x1

    if-eqz v0, :cond_d

    check-cast p0, LB0/K;

    invoke-virtual {p0}, LB0/K;->b()Lm0/l;

    move-result-object p0

    iget v0, p0, Lm0/l;->c:I

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    instance-of v0, p0, LB0/o;

    if-eqz v0, :cond_1

    const/4 v1, 0x3

    :cond_1
    instance-of v0, p0, LB0/j;

    if-eqz v0, :cond_2

    or-int/lit8 v1, v1, 0x4

    :cond_2
    instance-of v0, p0, LB0/U;

    if-eqz v0, :cond_3

    or-int/lit8 v1, v1, 0x8

    :cond_3
    instance-of v0, p0, LB0/S;

    if-eqz v0, :cond_4

    or-int/lit8 v1, v1, 0x10

    :cond_4
    instance-of v0, p0, LA0/e;

    if-eqz v0, :cond_5

    or-int/lit8 v1, v1, 0x20

    :cond_5
    instance-of v0, p0, LB0/c;

    if-eqz v0, :cond_6

    or-int/lit8 v1, v1, 0x40

    :cond_6
    instance-of v0, p0, LB0/c;

    if-eqz v0, :cond_7

    or-int/lit16 v1, v1, 0x80

    :cond_7
    instance-of v0, p0, LB0/k;

    if-eqz v0, :cond_8

    or-int/lit16 v1, v1, 0x100

    :cond_8
    instance-of v0, p0, Lq0/g;

    if-eqz v0, :cond_9

    or-int/lit16 v1, v1, 0x400

    :cond_9
    instance-of v0, p0, Lq0/c;

    if-eqz v0, :cond_a

    or-int/lit16 v1, v1, 0x800

    :cond_a
    instance-of v0, p0, LB0/c;

    if-eqz v0, :cond_b

    or-int/lit16 v1, v1, 0x1000

    :cond_b
    instance-of v0, p0, Lq0/g;

    if-eqz v0, :cond_c

    const v0, 0x8000

    or-int/2addr v0, v1

    goto :goto_0

    :cond_c
    move v0, v1

    :goto_0
    iput v0, p0, Lm0/l;->c:I

    goto :goto_1

    :cond_d
    new-instance v0, LB0/c;

    invoke-direct {v0}, Lm0/l;-><init>()V

    invoke-static {p0}, LB0/d;->g(Lm0/k;)I

    move-result v1

    iput v1, v0, Lm0/l;->c:I

    iput-object p0, v0, LB0/c;->k:Lm0/k;

    new-instance p0, Ljava/util/HashSet;

    invoke-direct {p0}, Ljava/util/HashSet;-><init>()V

    iput-object p0, v0, LB0/c;->m:Ljava/util/HashSet;

    move-object p0, v0

    :goto_1
    iget-boolean v0, p0, Lm0/l;->j:Z

    if-nez v0, :cond_f

    iget-object v0, p1, Lm0/l;->f:Lm0/l;

    if-eqz v0, :cond_e

    iput-object p0, v0, Lm0/l;->e:Lm0/l;

    iput-object v0, p0, Lm0/l;->f:Lm0/l;

    :cond_e
    iput-object p0, p1, Lm0/l;->f:Lm0/l;

    iput-object p1, p0, Lm0/l;->e:Lm0/l;

    return-object p0

    :cond_f
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "A ModifierNodeElement cannot return an already attached node from create() "

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static f(Lm0/l;)Lm0/l;
    .locals 3

    iget-boolean v0, p0, Lm0/l;->j:Z

    if-eqz v0, :cond_1

    if-eqz v0, :cond_0

    iget v0, p0, Lm0/l;->c:I

    const/4 v1, 0x2

    invoke-static {p0, v0, v1}, LB0/d;->e(Lm0/l;II)V

    invoke-virtual {p0}, Lm0/l;->x()V

    invoke-virtual {p0}, Lm0/l;->t()V

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "autoInvalidateRemovedNode called on unattached node"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    iget-object v0, p0, Lm0/l;->f:Lm0/l;

    iget-object v1, p0, Lm0/l;->e:Lm0/l;

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    iput-object v1, v0, Lm0/l;->e:Lm0/l;

    iput-object v2, p0, Lm0/l;->f:Lm0/l;

    :cond_2
    if-eqz v1, :cond_3

    iput-object v0, v1, Lm0/l;->f:Lm0/l;

    iput-object v2, p0, Lm0/l;->e:Lm0/l;

    :cond_3
    invoke-static {v1}, Ltb/k;->c(Ljava/lang/Object;)V

    return-object v1
.end method

.method public static p(Lm0/k;Lm0/k;Lm0/l;)V
    .locals 1

    instance-of p0, p0, LB0/K;

    if-eqz p0, :cond_0

    instance-of p0, p1, LB0/K;

    if-eqz p0, :cond_0

    check-cast p1, LB0/K;

    sget-object p0, Landroidx/compose/ui/node/b;->a:LB0/N;

    const-string p0, "null cannot be cast to non-null type T of androidx.compose.ui.node.NodeChainKt.updateUnsafe"

    invoke-static {p2, p0}, Ltb/k;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, p2}, LB0/K;->c(Lm0/l;)V

    iget-boolean p0, p2, Lm0/l;->j:Z

    if-eqz p0, :cond_4

    invoke-static {p2}, LB0/d;->f(Lm0/l;)V

    goto :goto_0

    :cond_0
    instance-of p0, p2, LB0/c;

    if-eqz p0, :cond_5

    move-object p0, p2

    check-cast p0, LB0/c;

    iget-boolean v0, p0, Lm0/l;->j:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, LB0/c;->z()V

    :cond_1
    iput-object p1, p0, LB0/c;->k:Lm0/k;

    invoke-static {p1}, LB0/d;->g(Lm0/k;)I

    move-result p1

    iput p1, p0, Lm0/l;->c:I

    iget-boolean p1, p0, Lm0/l;->j:Z

    if-eqz p1, :cond_2

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, LB0/c;->y(Z)V

    :cond_2
    iget-boolean p0, p2, Lm0/l;->j:Z

    if-eqz p0, :cond_3

    invoke-static {p2}, LB0/d;->f(Lm0/l;)V

    goto :goto_0

    :cond_3
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_4
    :goto_0
    return-void

    :cond_5
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Unknown Modifier.Node type"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public b(ILandroidx/recyclerview/widget/u0;)Z
    .locals 4

    iget-object v0, p0, LB0/M;->f:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    if-ltz p1, :cond_7

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-gt p1, v1, :cond_7

    iget-object v1, p0, LB0/M;->h:Ljava/lang/Object;

    check-cast v1, Landroidx/recyclerview/widget/l;

    sget-object v2, Landroidx/recyclerview/widget/l;->NO_STABLE_IDS:Landroidx/recyclerview/widget/l;

    if-eq v1, v2, :cond_0

    invoke-virtual {p2}, Landroidx/recyclerview/widget/u0;->hasStableIds()Z

    move-result v1

    const-string v2, "All sub adapters must have stable ids when stable id mode is ISOLATED_STABLE_IDS or SHARED_STABLE_IDS"

    invoke-static {v2, v1}, LG6/a;->a(Ljava/lang/String;Z)V

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Landroidx/recyclerview/widget/u0;->hasStableIds()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "ConcatAdapter"

    const-string v2, "Stable ids in the adapter will be ignored as the ConcatAdapter is configured not to have stable ids"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    invoke-virtual {p0, p2}, LB0/M;->l(Landroidx/recyclerview/widget/u0;)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_2

    const/4 v1, 0x0

    goto :goto_1

    :cond_2
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/recyclerview/widget/j0;

    :goto_1
    if-eqz v1, :cond_3

    const/4 p0, 0x0

    return p0

    :cond_3
    new-instance v1, Landroidx/recyclerview/widget/j0;

    iget-object v2, p0, LB0/M;->i:Ljava/lang/Object;

    check-cast v2, Landroidx/recyclerview/widget/t1;

    invoke-interface {v2}, Landroidx/recyclerview/widget/t1;->a()Landroidx/recyclerview/widget/s1;

    move-result-object v2

    iget-object v3, p0, LB0/M;->c:Ljava/lang/Object;

    check-cast v3, Landroidx/recyclerview/widget/F1;

    invoke-direct {v1, p2, p0, v3, v2}, Landroidx/recyclerview/widget/j0;-><init>(Landroidx/recyclerview/widget/u0;LB0/M;Landroidx/recyclerview/widget/F1;Landroidx/recyclerview/widget/s1;)V

    invoke-virtual {v0, p1, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    iget-object p1, p0, LB0/M;->d:Ljava/lang/Object;

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_4
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_4

    invoke-virtual {p2, v0}, Landroidx/recyclerview/widget/u0;->onAttachedToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    goto :goto_2

    :cond_5
    iget p1, v1, Landroidx/recyclerview/widget/j0;->e:I

    if-lez p1, :cond_6

    invoke-virtual {p0, v1}, LB0/M;->d(Landroidx/recyclerview/widget/j0;)I

    move-result p1

    iget p2, v1, Landroidx/recyclerview/widget/j0;->e:I

    iget-object v0, p0, LB0/M;->b:Ljava/lang/Object;

    check-cast v0, Landroidx/recyclerview/widget/n;

    invoke-virtual {v0, p1, p2}, Landroidx/recyclerview/widget/u0;->notifyItemRangeInserted(II)V

    :cond_6
    invoke-virtual {p0}, LB0/M;->c()V

    const/4 p0, 0x1

    return p0

    :cond_7
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v1, "Index must be between 0 and "

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ". Given:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public c()V
    .locals 5

    iget-object v0, p0, LB0/M;->f:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/recyclerview/widget/j0;

    iget-object v2, v1, Landroidx/recyclerview/widget/j0;->c:Landroidx/recyclerview/widget/u0;

    invoke-virtual {v2}, Landroidx/recyclerview/widget/u0;->getStateRestorationPolicy()Landroidx/recyclerview/widget/t0;

    move-result-object v2

    sget-object v3, Landroidx/recyclerview/widget/t0;->PREVENT:Landroidx/recyclerview/widget/t0;

    if-ne v2, v3, :cond_1

    goto :goto_0

    :cond_1
    sget-object v4, Landroidx/recyclerview/widget/t0;->PREVENT_WHEN_EMPTY:Landroidx/recyclerview/widget/t0;

    if-ne v2, v4, :cond_0

    iget v1, v1, Landroidx/recyclerview/widget/j0;->e:I

    if-nez v1, :cond_0

    goto :goto_0

    :cond_2
    sget-object v3, Landroidx/recyclerview/widget/t0;->ALLOW:Landroidx/recyclerview/widget/t0;

    :goto_0
    iget-object p0, p0, LB0/M;->b:Ljava/lang/Object;

    check-cast p0, Landroidx/recyclerview/widget/n;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/u0;->getStateRestorationPolicy()Landroidx/recyclerview/widget/t0;

    move-result-object v0

    if-eq v3, v0, :cond_3

    invoke-virtual {p0, v3}, Landroidx/recyclerview/widget/n;->d(Landroidx/recyclerview/widget/t0;)V

    :cond_3
    return-void
.end method

.method public d(Landroidx/recyclerview/widget/j0;)I
    .locals 2

    iget-object p0, p0, LB0/M;->f:Ljava/lang/Object;

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/recyclerview/widget/j0;

    if-eq v1, p1, :cond_0

    iget v1, v1, Landroidx/recyclerview/widget/j0;->e:I

    add-int/2addr v0, v1

    goto :goto_0

    :cond_0
    return v0
.end method

.method public g()V
    .locals 2

    iget-object p0, p0, LB0/M;->b:Ljava/lang/Object;

    check-cast p0, LN/u;

    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "Compose:abandons"

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {p0}, LN/u;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    move-object v0, p0

    check-cast v0, LJc/j;

    invoke-virtual {v0}, LJc/j;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, LJc/j;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, La0/q0;

    invoke-virtual {v0}, LJc/j;->remove()V

    invoke-interface {v1}, La0/q0;->b()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    invoke-static {}, Landroid/os/Trace;->endSection()V

    goto :goto_2

    :goto_1
    invoke-static {}, Landroid/os/Trace;->endSection()V

    throw p0

    :cond_1
    :goto_2
    return-void
.end method

.method public h()V
    .locals 6

    const/high16 v0, -0x80000000

    invoke-virtual {p0, v0}, LB0/M;->m(I)V

    iget-object v0, p0, LB0/M;->d:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    iget-object v2, p0, LB0/M;->b:Ljava/lang/Object;

    check-cast v2, LN/u;

    if-nez v1, :cond_4

    const-string v1, "Compose:onForgotten"

    invoke-static {v1}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    :try_start_0
    iget-object v1, p0, LB0/M;->f:Ljava/lang/Object;

    check-cast v1, LN/v;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    :goto_0
    const/4 v4, -0x1

    if-ge v4, v3, :cond_3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    instance-of v5, v4, La0/q0;

    if-eqz v5, :cond_0

    invoke-virtual {v2, v4}, LN/u;->remove(Ljava/lang/Object;)Z

    move-object v5, v4

    check-cast v5, La0/q0;

    invoke-interface {v5}, La0/q0;->c()V

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_3

    :cond_0
    :goto_1
    instance-of v5, v4, La0/j;

    if-eqz v5, :cond_2

    if-eqz v1, :cond_1

    invoke-virtual {v1, v4}, LN/v;->c(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    check-cast v4, La0/j;

    invoke-interface {v4}, La0/j;->c()V

    goto :goto_2

    :cond_1
    check-cast v4, La0/j;

    invoke-interface {v4}, La0/j;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    :goto_2
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    :cond_3
    invoke-static {}, Landroid/os/Trace;->endSection()V

    goto :goto_4

    :goto_3
    invoke-static {}, Landroid/os/Trace;->endSection()V

    throw p0

    :cond_4
    :goto_4
    iget-object p0, p0, LB0/M;->c:Ljava/lang/Object;

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    const-string v0, "Compose:onRemembered"

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    :try_start_1
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_5
    if-ge v1, v0, :cond_5

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, La0/q0;

    invoke-virtual {v2, v3}, LN/u;->remove(Ljava/lang/Object;)Z

    invoke-interface {v3}, La0/q0;->a()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :catchall_1
    move-exception p0

    goto :goto_6

    :cond_5
    invoke-static {}, Landroid/os/Trace;->endSection()V

    goto :goto_7

    :goto_6
    invoke-static {}, Landroid/os/Trace;->endSection()V

    throw p0

    :cond_6
    :goto_7
    return-void
.end method

.method public i(I)LD/b;
    .locals 4

    iget-object v0, p0, LB0/M;->g:Ljava/lang/Object;

    check-cast v0, LD/b;

    iget-boolean v1, v0, LD/b;->c:Z

    if-eqz v1, :cond_0

    new-instance v0, LD/b;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, LD/b;-><init>(I)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, v0, LD/b;->c:Z

    :goto_0
    iget-object p0, p0, LB0/M;->f:Ljava/lang/Object;

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    move v1, p1

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/recyclerview/widget/j0;

    iget v3, v2, Landroidx/recyclerview/widget/j0;->e:I

    if-le v3, v1, :cond_1

    iput-object v2, v0, LD/b;->d:Ljava/lang/Object;

    iput v1, v0, LD/b;->b:I

    goto :goto_2

    :cond_1
    sub-int/2addr v1, v3

    goto :goto_1

    :cond_2
    :goto_2
    iget-object p0, v0, LD/b;->d:Ljava/lang/Object;

    check-cast p0, Landroidx/recyclerview/widget/j0;

    if-eqz p0, :cond_3

    return-object v0

    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Cannot find wrapper for "

    invoke-static {p1, v0}, Lcom/sec/android/app/sbrowser/autofill/password/k;->i(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public j(Landroidx/recyclerview/widget/h1;)Landroidx/recyclerview/widget/j0;
    .locals 3

    iget-object v0, p0, LB0/M;->e:Ljava/lang/Object;

    check-cast v0, Ljava/util/IdentityHashMap;

    invoke-virtual {v0, p1}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/j0;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Cannot find wrapper for "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", seems like it is not bound by this adapter: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public k(I)Z
    .locals 0

    iget-object p0, p0, LB0/M;->f:Ljava/lang/Object;

    check-cast p0, Lm0/l;

    iget p0, p0, Lm0/l;->d:I

    and-int/2addr p0, p1

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public l(Landroidx/recyclerview/widget/u0;)I
    .locals 3

    iget-object p0, p0, LB0/M;->f:Ljava/lang/Object;

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/recyclerview/widget/j0;

    iget-object v2, v2, Landroidx/recyclerview/widget/j0;->c:Landroidx/recyclerview/widget/u0;

    if-ne v2, p1, :cond_0

    return v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method public m(I)V
    .locals 10

    iget-object v0, p0, LB0/M;->g:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_7

    const/4 v1, 0x0

    const/4 v2, 0x0

    move v5, v1

    move-object v3, v2

    move-object v4, v3

    :goto_0
    iget-object v6, p0, LB0/M;->i:Ljava/lang/Object;

    check-cast v6, LN/p;

    iget v7, v6, LN/p;->b:I

    const-string v8, "null cannot be cast to non-null type androidx.collection.MutableIntList"

    if-ge v5, v7, :cond_2

    invoke-virtual {v6, v5}, LN/p;->b(I)I

    move-result v7

    if-gt p1, v7, :cond_1

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v5}, LN/p;->c(I)I

    move-result v6

    iget-object v9, p0, LB0/M;->h:Ljava/lang/Object;

    check-cast v9, LN/p;

    invoke-virtual {v9, v5}, LN/p;->c(I)I

    move-result v9

    if-nez v2, :cond_0

    filled-new-array {v7}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lfb/o;->i([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v2

    new-instance v4, LN/p;

    invoke-direct {v4}, LN/p;-><init>()V

    invoke-virtual {v4, v6}, LN/p;->a(I)V

    new-instance v3, LN/p;

    invoke-direct {v3}, LN/p;-><init>()V

    invoke-virtual {v3, v9}, LN/p;->a(I)V

    goto :goto_0

    :cond_0
    invoke-static {v3, v8}, Ltb/k;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v4, v8}, Ltb/k;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v4, v6}, LN/p;->a(I)V

    invoke-virtual {v3, v9}, LN/p;->a(I)V

    goto :goto_0

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_2
    if-eqz v2, :cond_7

    invoke-static {v3, v8}, Ltb/k;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v4, v8}, Ltb/k;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    :goto_1
    if-ge v1, p1, :cond_6

    add-int/lit8 v0, v1, 0x1

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    move v6, v0

    :goto_2
    if-ge v6, v5, :cond_5

    invoke-virtual {v4, v1}, LN/p;->b(I)I

    move-result v7

    invoke-virtual {v4, v6}, LN/p;->b(I)I

    move-result v8

    if-lt v7, v8, :cond_3

    if-ne v8, v7, :cond_4

    invoke-virtual {v3, v1}, LN/p;->b(I)I

    move-result v7

    invoke-virtual {v3, v6}, LN/p;->b(I)I

    move-result v8

    if-ge v7, v8, :cond_4

    :cond_3
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    invoke-interface {v2, v1, v8}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v2, v6, v7}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v3, v1}, LN/p;->b(I)I

    move-result v7

    invoke-virtual {v3, v6}, LN/p;->b(I)I

    move-result v8

    invoke-virtual {v3, v1, v8}, LN/p;->d(II)V

    invoke-virtual {v3, v6, v7}, LN/p;->d(II)V

    invoke-virtual {v4, v1}, LN/p;->b(I)I

    move-result v7

    invoke-virtual {v4, v6}, LN/p;->b(I)I

    move-result v8

    invoke-virtual {v4, v1, v8}, LN/p;->d(II)V

    invoke-virtual {v4, v6, v7}, LN/p;->d(II)V

    :cond_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_5
    move v1, v0

    goto :goto_1

    :cond_6
    iget-object p0, p0, LB0/M;->d:Ljava/lang/Object;

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_7
    return-void
.end method

.method public n(Ljava/lang/Object;III)V
    .locals 0

    invoke-virtual {p0, p2}, LB0/M;->m(I)V

    if-ltz p4, :cond_0

    if-ge p4, p2, :cond_0

    iget-object p2, p0, LB0/M;->g:Ljava/lang/Object;

    check-cast p2, Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, LB0/M;->h:Ljava/lang/Object;

    check-cast p1, LN/p;

    invoke-virtual {p1, p3}, LN/p;->a(I)V

    iget-object p0, p0, LB0/M;->i:Ljava/lang/Object;

    check-cast p0, LN/p;

    invoke-virtual {p0, p4}, LN/p;->a(I)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, LB0/M;->d:Ljava/lang/Object;

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_0
    return-void
.end method

.method public o(ILc0/d;Lc0/d;Lm0/l;Z)V
    .locals 29

    move-object/from16 v7, p0

    move/from16 v8, p1

    move-object/from16 v9, p2

    move-object/from16 v10, p3

    iget-object v0, v7, LB0/M;->i:Ljava/lang/Object;

    check-cast v0, LB0/L;

    if-nez v0, :cond_0

    new-instance v11, LB0/L;

    move-object v0, v11

    move-object/from16 v1, p0

    move-object/from16 v2, p4

    move/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move/from16 v6, p5

    invoke-direct/range {v0 .. v6}, LB0/L;-><init>(LB0/M;Lm0/l;ILc0/d;Lc0/d;Z)V

    iput-object v11, v7, LB0/M;->i:Ljava/lang/Object;

    goto :goto_0

    :cond_0
    move-object/from16 v1, p4

    iput-object v1, v0, LB0/L;->c:Ljava/lang/Object;

    iput v8, v0, LB0/L;->a:I

    iput-object v9, v0, LB0/L;->d:Ljava/lang/Object;

    iput-object v10, v0, LB0/L;->e:Ljava/lang/Object;

    move/from16 v1, p5

    iput-boolean v1, v0, LB0/L;->b:Z

    :goto_0
    iget v1, v9, Lc0/d;->c:I

    sub-int/2addr v1, v8

    iget v2, v10, Lc0/d;->c:I

    sub-int/2addr v2, v8

    add-int v3, v1, v2

    const/4 v4, 0x1

    add-int/2addr v3, v4

    const/4 v5, 0x2

    div-int/2addr v3, v5

    new-instance v6, LB0/n;

    mul-int/lit8 v8, v3, 0x3

    invoke-direct {v6, v8}, LB0/n;-><init>(I)V

    new-instance v8, LB0/n;

    mul-int/lit8 v9, v3, 0x4

    invoke-direct {v8, v9}, LB0/n;-><init>(I)V

    const/4 v9, 0x0

    invoke-virtual {v8, v9, v1, v9, v2}, LB0/n;->d(IIII)V

    mul-int/2addr v3, v5

    add-int/2addr v3, v4

    new-array v10, v3, [I

    new-array v11, v3, [I

    const/4 v12, 0x5

    new-array v12, v12, [I

    :goto_1
    iget v13, v8, LB0/n;->b:I

    if-eqz v13, :cond_1b

    iget-object v15, v8, LB0/n;->a:[I

    add-int/lit8 v14, v13, -0x1

    iput v14, v8, LB0/n;->b:I

    aget v14, v15, v14

    add-int/lit8 v9, v13, -0x2

    iput v9, v8, LB0/n;->b:I

    aget v9, v15, v9

    add-int/lit8 v5, v13, -0x3

    iput v5, v8, LB0/n;->b:I

    aget v5, v15, v5

    add-int/lit8 v13, v13, -0x4

    iput v13, v8, LB0/n;->b:I

    aget v13, v15, v13

    sub-int v15, v5, v13

    sub-int v7, v14, v9

    if-lt v15, v4, :cond_1

    if-ge v7, v4, :cond_2

    :cond_1
    move/from16 v23, v1

    move/from16 v24, v2

    move/from16 p5, v3

    move-object v5, v8

    goto/16 :goto_13

    :cond_2
    add-int v16, v15, v7

    add-int/lit8 v16, v16, 0x1

    const/16 v17, 0x2

    div-int/lit8 v4, v16, 0x2

    div-int/lit8 v16, v3, 0x2

    add-int/lit8 v17, v16, 0x1

    aput v13, v10, v17

    aput v5, v11, v17

    move/from16 p5, v3

    const/4 v3, 0x0

    :goto_2
    if-ge v3, v4, :cond_1a

    sub-int v17, v15, v7

    invoke-static/range {v17 .. v17}, Ljava/lang/Math;->abs(I)I

    move-result v18

    move/from16 v20, v4

    const/16 v19, 0x2

    rem-int/lit8 v4, v18, 0x2

    move/from16 v18, v7

    const/4 v7, 0x1

    if-ne v4, v7, :cond_3

    const/4 v4, 0x1

    goto :goto_3

    :cond_3
    const/4 v4, 0x0

    :goto_3
    neg-int v7, v3

    move/from16 v19, v15

    move v15, v7

    :goto_4
    const/16 v21, 0x4

    if-gt v15, v3, :cond_c

    if-eq v15, v7, :cond_6

    if-eq v15, v3, :cond_4

    add-int/lit8 v22, v15, 0x1

    add-int v22, v22, v16

    move/from16 v23, v1

    aget v1, v10, v22

    add-int/lit8 v22, v15, -0x1

    add-int v22, v22, v16

    move/from16 v24, v2

    aget v2, v10, v22

    if-le v1, v2, :cond_5

    goto :goto_5

    :cond_4
    move/from16 v23, v1

    move/from16 v24, v2

    :cond_5
    add-int/lit8 v1, v15, -0x1

    add-int v1, v1, v16

    aget v1, v10, v1

    add-int/lit8 v2, v1, 0x1

    goto :goto_6

    :cond_6
    move/from16 v23, v1

    move/from16 v24, v2

    :goto_5
    add-int/lit8 v1, v15, 0x1

    add-int v1, v1, v16

    aget v1, v10, v1

    move v2, v1

    :goto_6
    sub-int v22, v2, v13

    add-int v22, v22, v9

    sub-int v22, v22, v15

    if-eqz v3, :cond_8

    if-eq v2, v1, :cond_7

    goto :goto_7

    :cond_7
    add-int/lit8 v25, v22, -0x1

    goto :goto_8

    :cond_8
    :goto_7
    move/from16 v25, v22

    :goto_8
    move/from16 v28, v22

    move-object/from16 v22, v8

    move/from16 v8, v28

    :goto_9
    if-ge v2, v5, :cond_9

    if-ge v8, v14, :cond_9

    invoke-virtual {v0, v2, v8}, LB0/L;->a(II)Z

    move-result v26

    if-eqz v26, :cond_9

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v8, v8, 0x1

    goto :goto_9

    :cond_9
    add-int v26, v16, v15

    aput v2, v10, v26

    move/from16 v26, v4

    if-eqz v4, :cond_a

    sub-int v4, v17, v15

    move-object/from16 v27, v6

    add-int/lit8 v6, v7, 0x1

    if-lt v4, v6, :cond_b

    add-int/lit8 v6, v3, -0x1

    if-gt v4, v6, :cond_b

    add-int v4, v16, v4

    aget v4, v11, v4

    if-gt v4, v2, :cond_b

    const/4 v4, 0x0

    aput v1, v12, v4

    const/4 v1, 0x1

    aput v25, v12, v1

    const/4 v1, 0x2

    aput v2, v12, v1

    const/4 v1, 0x3

    aput v8, v12, v1

    aput v4, v12, v21

    move/from16 v25, v5

    move/from16 v26, v14

    const/4 v1, 0x1

    const/4 v2, 0x3

    goto/16 :goto_10

    :cond_a
    move-object/from16 v27, v6

    :cond_b
    add-int/lit8 v15, v15, 0x2

    move-object/from16 v8, v22

    move/from16 v1, v23

    move/from16 v2, v24

    move/from16 v4, v26

    move-object/from16 v6, v27

    goto/16 :goto_4

    :cond_c
    move/from16 v23, v1

    move/from16 v24, v2

    move-object/from16 v27, v6

    move-object/from16 v22, v8

    rem-int/lit8 v1, v17, 0x2

    if-nez v1, :cond_d

    const/4 v1, 0x1

    goto :goto_a

    :cond_d
    const/4 v1, 0x0

    :goto_a
    move v2, v7

    :goto_b
    if-gt v2, v3, :cond_19

    if-eq v2, v7, :cond_f

    if-eq v2, v3, :cond_e

    add-int/lit8 v4, v2, 0x1

    add-int v4, v4, v16

    aget v4, v11, v4

    add-int/lit8 v6, v2, -0x1

    add-int v6, v6, v16

    aget v6, v11, v6

    if-ge v4, v6, :cond_e

    goto :goto_c

    :cond_e
    add-int/lit8 v4, v2, -0x1

    add-int v4, v4, v16

    aget v4, v11, v4

    add-int/lit8 v6, v4, -0x1

    goto :goto_d

    :cond_f
    :goto_c
    add-int/lit8 v4, v2, 0x1

    add-int v4, v4, v16

    aget v4, v11, v4

    move v6, v4

    :goto_d
    sub-int v8, v5, v6

    sub-int/2addr v8, v2

    sub-int v8, v14, v8

    if-eqz v3, :cond_11

    if-eq v6, v4, :cond_10

    goto :goto_e

    :cond_10
    add-int/lit8 v15, v8, 0x1

    goto :goto_f

    :cond_11
    :goto_e
    move v15, v8

    :goto_f
    if-le v6, v13, :cond_12

    if-le v8, v9, :cond_12

    move/from16 v25, v5

    add-int/lit8 v5, v6, -0x1

    move/from16 v26, v14

    add-int/lit8 v14, v8, -0x1

    invoke-virtual {v0, v5, v14}, LB0/L;->a(II)Z

    move-result v5

    if-eqz v5, :cond_13

    add-int/lit8 v6, v6, -0x1

    add-int/lit8 v8, v8, -0x1

    move/from16 v5, v25

    move/from16 v14, v26

    goto :goto_f

    :cond_12
    move/from16 v25, v5

    move/from16 v26, v14

    :cond_13
    add-int v5, v16, v2

    aput v6, v11, v5

    if-eqz v1, :cond_18

    sub-int v5, v17, v2

    if-lt v5, v7, :cond_18

    if-gt v5, v3, :cond_18

    add-int v5, v16, v5

    aget v5, v10, v5

    if-lt v5, v6, :cond_18

    const/4 v5, 0x0

    aput v6, v12, v5

    const/4 v1, 0x1

    aput v8, v12, v1

    const/4 v2, 0x2

    aput v4, v12, v2

    const/4 v2, 0x3

    aput v15, v12, v2

    aput v1, v12, v21

    :goto_10
    invoke-static {v12}, LB0/d;->h([I)I

    move-result v3

    if-lez v3, :cond_17

    aget v3, v12, v2

    aget v2, v12, v1

    sub-int/2addr v3, v2

    const/4 v1, 0x2

    aget v4, v12, v1

    const/4 v1, 0x0

    aget v5, v12, v1

    sub-int/2addr v4, v5

    if-eq v3, v4, :cond_16

    aget v1, v12, v21

    if-eqz v1, :cond_14

    invoke-static {v12}, LB0/d;->h([I)I

    move-result v1

    move-object/from16 v6, v27

    invoke-virtual {v6, v5, v2, v1}, LB0/n;->c(III)V

    goto :goto_11

    :cond_14
    move-object/from16 v6, v27

    if-le v3, v4, :cond_15

    add-int/lit8 v2, v2, 0x1

    invoke-static {v12}, LB0/d;->h([I)I

    move-result v1

    invoke-virtual {v6, v5, v2, v1}, LB0/n;->c(III)V

    goto :goto_11

    :cond_15
    add-int/lit8 v5, v5, 0x1

    invoke-static {v12}, LB0/d;->h([I)I

    move-result v1

    invoke-virtual {v6, v5, v2, v1}, LB0/n;->c(III)V

    goto :goto_11

    :cond_16
    move-object/from16 v6, v27

    invoke-virtual {v6, v5, v2, v4}, LB0/n;->c(III)V

    :goto_11
    const/4 v1, 0x0

    goto :goto_12

    :cond_17
    move-object/from16 v6, v27

    goto :goto_11

    :goto_12
    aget v2, v12, v1

    const/4 v4, 0x1

    aget v1, v12, v4

    move-object/from16 v5, v22

    invoke-virtual {v5, v13, v2, v9, v1}, LB0/n;->d(IIII)V

    const/4 v1, 0x2

    aget v2, v12, v1

    const/4 v1, 0x3

    aget v1, v12, v1

    move/from16 v14, v25

    move/from16 v8, v26

    invoke-virtual {v5, v2, v14, v1, v8}, LB0/n;->d(IIII)V

    :goto_13
    move-object/from16 v7, p0

    move/from16 v3, p5

    move-object v8, v5

    move/from16 v1, v23

    move/from16 v2, v24

    const/4 v9, 0x0

    const/4 v5, 0x2

    goto/16 :goto_1

    :cond_18
    move-object/from16 v5, v22

    move/from16 v14, v25

    move/from16 v8, v26

    move-object/from16 v6, v27

    const/4 v4, 0x1

    add-int/lit8 v2, v2, 0x2

    move-object/from16 v22, v5

    move-object/from16 v27, v6

    move v5, v14

    move v14, v8

    goto/16 :goto_b

    :cond_19
    move v8, v14

    move-object/from16 v6, v27

    const/4 v4, 0x1

    move v14, v5

    move-object/from16 v5, v22

    add-int/lit8 v3, v3, 0x1

    move/from16 v7, v18

    move/from16 v15, v19

    move/from16 v4, v20

    move/from16 v1, v23

    move/from16 v2, v24

    move/from16 v28, v8

    move-object v8, v5

    move v5, v14

    move/from16 v14, v28

    goto/16 :goto_2

    :cond_1a
    move/from16 v23, v1

    move/from16 v24, v2

    move-object v5, v8

    const/4 v4, 0x1

    goto :goto_13

    :cond_1b
    move/from16 v23, v1

    move/from16 v24, v2

    iget v1, v6, LB0/n;->b:I

    rem-int/lit8 v2, v1, 0x3

    if-nez v2, :cond_2c

    const/4 v2, 0x3

    if-le v1, v2, :cond_1c

    sub-int/2addr v1, v2

    const/4 v4, 0x0

    invoke-virtual {v6, v4, v1}, LB0/n;->e(II)V

    :goto_14
    move/from16 v1, v23

    move/from16 v2, v24

    goto :goto_15

    :cond_1c
    const/4 v4, 0x0

    goto :goto_14

    :goto_15
    invoke-virtual {v6, v1, v2, v4}, LB0/n;->c(III)V

    move v1, v4

    move v2, v1

    move v3, v2

    :cond_1d
    iget v5, v6, LB0/n;->b:I

    if-ge v1, v5, :cond_2a

    iget-object v5, v6, LB0/n;->a:[I

    aget v7, v5, v1

    add-int/lit8 v8, v1, 0x2

    aget v8, v5, v8

    sub-int/2addr v7, v8

    add-int/lit8 v9, v1, 0x1

    aget v5, v5, v9

    sub-int/2addr v5, v8

    add-int/lit8 v1, v1, 0x3

    :goto_16
    iget-object v9, v0, LB0/L;->f:Ljava/lang/Object;

    check-cast v9, LB0/M;

    if-ge v2, v7, :cond_20

    iget-object v10, v0, LB0/L;->c:Ljava/lang/Object;

    check-cast v10, Lm0/l;

    iget-object v10, v10, Lm0/l;->f:Lm0/l;

    invoke-static {v10}, Ltb/k;->c(Ljava/lang/Object;)V

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v11, v10, Lm0/l;->c:I

    const/4 v12, 0x2

    and-int/2addr v11, v12

    if-eqz v11, :cond_1f

    iget-object v11, v10, Lm0/l;->g:LB0/O;

    invoke-static {v11}, Ltb/k;->c(Ljava/lang/Object;)V

    iget-object v12, v11, LB0/O;->k:LB0/O;

    iget-object v11, v11, LB0/O;->j:LB0/O;

    invoke-static {v11}, Ltb/k;->c(Ljava/lang/Object;)V

    if-nez v12, :cond_1e

    goto :goto_17

    :cond_1e
    iput-object v11, v12, LB0/O;->j:LB0/O;

    :goto_17
    iput-object v12, v11, LB0/O;->k:LB0/O;

    iget-object v12, v0, LB0/L;->c:Ljava/lang/Object;

    check-cast v12, Lm0/l;

    invoke-static {v9, v12, v11}, LB0/M;->a(LB0/M;Lm0/l;LB0/O;)V

    :cond_1f
    invoke-static {v10}, LB0/M;->f(Lm0/l;)Lm0/l;

    move-result-object v9

    iput-object v9, v0, LB0/L;->c:Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_16

    :cond_20
    :goto_18
    if-ge v3, v5, :cond_28

    iget v7, v0, LB0/L;->a:I

    add-int/2addr v7, v3

    iget-object v10, v0, LB0/L;->c:Ljava/lang/Object;

    check-cast v10, Lm0/l;

    iget-object v11, v0, LB0/L;->e:Ljava/lang/Object;

    check-cast v11, Lc0/d;

    iget-object v11, v11, Lc0/d;->a:[Ljava/lang/Object;

    aget-object v7, v11, v7

    check-cast v7, Lm0/k;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v7, v10}, LB0/M;->e(Lm0/k;Lm0/l;)Lm0/l;

    move-result-object v7

    iput-object v7, v0, LB0/L;->c:Ljava/lang/Object;

    iget-boolean v10, v0, LB0/L;->b:Z

    if-eqz v10, :cond_27

    iget-object v7, v7, Lm0/l;->f:Lm0/l;

    invoke-static {v7}, Ltb/k;->c(Ljava/lang/Object;)V

    iget-object v7, v7, Lm0/l;->g:LB0/O;

    invoke-static {v7}, Ltb/k;->c(Ljava/lang/Object;)V

    iget-object v10, v0, LB0/L;->c:Ljava/lang/Object;

    check-cast v10, Lm0/l;

    iget v11, v10, Lm0/l;->c:I

    const/4 v12, 0x2

    and-int/2addr v11, v12

    const/4 v13, 0x0

    if-eqz v11, :cond_21

    instance-of v11, v10, LB0/o;

    if-eqz v11, :cond_21

    move-object v13, v10

    check-cast v13, LB0/o;

    :cond_21
    if-eqz v13, :cond_22

    new-instance v10, LB0/q;

    iget-object v11, v9, LB0/M;->b:Ljava/lang/Object;

    check-cast v11, Landroidx/compose/ui/node/a;

    invoke-direct {v10, v11, v13}, LB0/q;-><init>(Landroidx/compose/ui/node/a;LB0/o;)V

    iget-object v11, v0, LB0/L;->c:Ljava/lang/Object;

    check-cast v11, Lm0/l;

    iput-object v10, v11, Lm0/l;->g:LB0/O;

    invoke-static {v9, v11, v10}, LB0/M;->a(LB0/M;Lm0/l;LB0/O;)V

    iget-object v11, v7, LB0/O;->k:LB0/O;

    iput-object v11, v10, LB0/O;->k:LB0/O;

    iput-object v7, v10, LB0/O;->j:LB0/O;

    iput-object v10, v7, LB0/O;->k:LB0/O;

    goto :goto_19

    :cond_22
    iput-object v7, v10, Lm0/l;->g:LB0/O;

    :goto_19
    iget-object v7, v0, LB0/L;->c:Ljava/lang/Object;

    check-cast v7, Lm0/l;

    iget-boolean v10, v7, Lm0/l;->j:Z

    if-nez v10, :cond_26

    iget-object v10, v7, Lm0/l;->g:LB0/O;

    if-eqz v10, :cond_25

    const/4 v10, 0x1

    iput-boolean v10, v7, Lm0/l;->j:Z

    iput-boolean v10, v7, Lm0/l;->h:Z

    iget-object v7, v0, LB0/L;->c:Ljava/lang/Object;

    check-cast v7, Lm0/l;

    iget-boolean v10, v7, Lm0/l;->j:Z

    if-eqz v10, :cond_24

    iget-boolean v10, v7, Lm0/l;->h:Z

    if-eqz v10, :cond_23

    const/4 v10, 0x0

    iput-boolean v10, v7, Lm0/l;->h:Z

    invoke-virtual {v7}, Lm0/l;->u()V

    const/4 v10, 0x1

    iput-boolean v10, v7, Lm0/l;->i:Z

    iget-object v7, v0, LB0/L;->c:Ljava/lang/Object;

    check-cast v7, Lm0/l;

    invoke-static {v7}, LB0/d;->d(Lm0/l;)V

    goto :goto_1a

    :cond_23
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Must run runAttachLifecycle() only once after markAsAttached()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_24
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Must run markAsAttached() prior to runAttachLifecycle"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_25
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "attach invoked on a node without a coordinator"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_26
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "node attached multiple times"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_27
    const/4 v12, 0x2

    :goto_1a
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_18

    :cond_28
    const/4 v12, 0x2

    :goto_1b
    add-int/lit8 v5, v8, -0x1

    if-lez v8, :cond_1d

    iget-object v7, v0, LB0/L;->c:Ljava/lang/Object;

    check-cast v7, Lm0/l;

    iget-object v7, v7, Lm0/l;->f:Lm0/l;

    invoke-static {v7}, Ltb/k;->c(Ljava/lang/Object;)V

    iput-object v7, v0, LB0/L;->c:Ljava/lang/Object;

    iget-object v7, v0, LB0/L;->d:Ljava/lang/Object;

    check-cast v7, Lc0/d;

    iget v8, v0, LB0/L;->a:I

    add-int v10, v8, v2

    iget-object v7, v7, Lc0/d;->a:[Ljava/lang/Object;

    aget-object v7, v7, v10

    check-cast v7, Lm0/k;

    iget-object v10, v0, LB0/L;->e:Ljava/lang/Object;

    check-cast v10, Lc0/d;

    add-int/2addr v8, v3

    iget-object v10, v10, Lc0/d;->a:[Ljava/lang/Object;

    aget-object v8, v10, v8

    check-cast v8, Lm0/k;

    invoke-static {v7, v8}, Ltb/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_29

    iget-object v10, v0, LB0/L;->c:Ljava/lang/Object;

    check-cast v10, Lm0/l;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v7, v8, v10}, LB0/M;->p(Lm0/k;Lm0/k;Lm0/l;)V

    goto :goto_1c

    :cond_29
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :goto_1c
    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v3, v3, 0x1

    move v8, v5

    goto :goto_1b

    :cond_2a
    move-object/from16 v1, p0

    iget-object v0, v1, LB0/M;->e:Ljava/lang/Object;

    check-cast v0, LB0/V;

    iget-object v0, v0, Lm0/l;->e:Lm0/l;

    move v9, v4

    :goto_1d
    if-eqz v0, :cond_2b

    sget-object v1, Landroidx/compose/ui/node/b;->a:LB0/N;

    if-eq v0, v1, :cond_2b

    iget v1, v0, Lm0/l;->c:I

    or-int/2addr v9, v1

    iput v9, v0, Lm0/l;->d:I

    iget-object v0, v0, Lm0/l;->e:Lm0/l;

    goto :goto_1d

    :cond_2b
    return-void

    :cond_2c
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Array size not a multiple of 3"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    iget v0, p0, LB0/M;->a:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, LB0/M;->f:Ljava/lang/Object;

    check-cast v1, Lm0/l;

    iget-object p0, p0, LB0/M;->e:Ljava/lang/Object;

    check-cast p0, LB0/V;

    const-string v2, "]"

    if-ne v1, p0, :cond_0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_0
    :goto_0
    if-eqz v1, :cond_2

    if-eq v1, p0, :cond_2

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Lm0/l;->f:Lm0/l;

    if-ne v3, p0, :cond_1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_1
    const-string v3, ","

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v1, Lm0/l;->f:Lm0/l;

    goto :goto_0

    :cond_2
    :goto_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "StringBuilder().apply(builderAction).toString()"

    invoke-static {p0, v0}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
