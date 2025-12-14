.class public final LV/J;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LS/d0;


# static fields
.field public static final t:Lo3/c;


# instance fields
.field public final a:Lcom/samsung/android/scloud/lib/setting/e;

.field public final b:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

.field public final c:LP7/c;

.field public d:F

.field public final e:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

.field public final f:Lo3/i;

.field public final g:Z

.field public h:I

.field public i:LW/n;

.field public j:Z

.field public final k:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

.field public final l:LV/G;

.field public final m:LV/b;

.field public final n:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

.field public final o:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

.field public final p:LW/m;

.field public final q:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

.field public final r:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

.field public final s:LG5/J2;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x2

    sget-object v1, LV/A;->c:LV/A;

    new-instance v2, Lj0/d;

    invoke-direct {v2, v0, v0}, Lj0/d;-><init>(II)V

    const/4 v0, 0x1

    invoke-static {v0, v1}, Ltb/z;->e(ILjava/lang/Object;)V

    sget v0, Lj0/n;->a:I

    new-instance v0, Lo3/c;

    invoke-direct {v0, v2, v1}, Lo3/c;-><init>(Lsb/n;Lsb/k;)V

    sput-object v0, LV/J;->t:Lo3/c;

    return-void
.end method

.method public constructor <init>(II)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/samsung/android/scloud/lib/setting/e;

    invoke-direct {v0, p1, p2}, Lcom/samsung/android/scloud/lib/setting/e;-><init>(II)V

    iput-object v0, p0, LV/J;->a:Lcom/samsung/android/scloud/lib/setting/e;

    sget-object p1, LV/d;->a:LV/d;

    sget-object p2, La0/V;->f:La0/V;

    invoke-static {p1, p2}, La0/d;->E(Ljava/lang/Object;La0/A0;)Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    move-result-object p1

    iput-object p1, p0, LV/J;->b:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    new-instance p1, LP7/c;

    const/16 v0, 0x9

    invoke-direct {p1, v0}, LP7/c;-><init>(I)V

    iput-object p1, p0, LV/J;->c:LP7/c;

    new-instance p1, LH0/c;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-direct {p1, v0}, LH0/c;-><init>(F)V

    invoke-static {p1, p2}, La0/d;->E(Ljava/lang/Object;La0/A0;)Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    move-result-object p1

    iput-object p1, p0, LV/J;->e:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    new-instance p1, LB0/a;

    const/16 v0, 0xb

    invoke-direct {p1, v0, p0}, LB0/a;-><init>(ILjava/lang/Object;)V

    new-instance v0, Lo3/i;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object p1, v0, Lo3/i;->a:Ljava/lang/Object;

    new-instance p1, LS/j;

    invoke-direct {p1, v0}, LS/j;-><init>(Lo3/i;)V

    iput-object p1, v0, Lo3/i;->b:Ljava/lang/Object;

    new-instance p1, LR/v;

    invoke-direct {p1}, LR/v;-><init>()V

    iput-object p1, v0, Lo3/i;->c:Ljava/lang/Object;

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    sget-object v1, La0/V;->f:La0/V;

    invoke-static {p1, v1}, La0/d;->E(Ljava/lang/Object;La0/A0;)Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    move-result-object p1

    iput-object p1, v0, Lo3/i;->d:Ljava/lang/Object;

    iput-object v0, p0, LV/J;->f:Lo3/i;

    const/4 p1, 0x1

    iput-boolean p1, p0, LV/J;->g:Z

    const/4 p1, -0x1

    iput p1, p0, LV/J;->h:I

    const/4 p1, 0x0

    invoke-static {p1, p2}, La0/d;->E(Ljava/lang/Object;La0/A0;)Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    move-result-object v0

    iput-object v0, p0, LV/J;->k:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    new-instance v0, LV/G;

    invoke-direct {v0, p0}, LV/G;-><init>(LV/J;)V

    iput-object v0, p0, LV/J;->l:LV/G;

    new-instance v0, LV/b;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, LV/J;->m:LV/b;

    invoke-static {p1, p2}, La0/d;->E(Ljava/lang/Object;La0/A0;)Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    move-result-object p1

    iput-object p1, p0, LV/J;->n:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    const/16 p1, 0xf

    const/4 v0, 0x0

    invoke-static {v0, v0, p1}, LG5/S2;->b(III)J

    move-result-wide v0

    new-instance p1, LH0/a;

    invoke-direct {p1, v0, v1}, LH0/a;-><init>(J)V

    invoke-static {p1, p2}, La0/d;->E(Ljava/lang/Object;La0/A0;)Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    move-result-object p1

    iput-object p1, p0, LV/J;->o:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    new-instance p1, LW/m;

    invoke-direct {p1}, LW/m;-><init>()V

    iput-object p1, p0, LV/J;->p:LW/m;

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {p1, p2}, La0/d;->E(Ljava/lang/Object;La0/A0;)Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    move-result-object v0

    iput-object v0, p0, LV/J;->q:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-static {p1, p2}, La0/d;->E(Ljava/lang/Object;La0/A0;)Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    move-result-object p1

    iput-object p1, p0, LV/J;->r:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    new-instance p1, LG5/J2;

    const/4 p2, 0x7

    invoke-direct {p1, p2}, LG5/J2;-><init>(I)V

    iput-object p1, p0, LV/J;->s:LG5/J2;

    return-void
.end method


# virtual methods
.method public final a(LR/s;Lsb/n;Lkb/c;)Ljava/lang/Object;
    .locals 5

    instance-of v0, p3, LV/H;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, LV/H;

    iget v1, v0, LV/H;->f:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, LV/H;->f:I

    goto :goto_0

    :cond_0
    new-instance v0, LV/H;

    invoke-direct {v0, p0, p3}, LV/H;-><init>(LV/J;Lkb/c;)V

    :goto_0
    iget-object p3, v0, LV/H;->d:Ljava/lang/Object;

    sget-object v1, Ljb/a;->COROUTINE_SUSPENDED:Ljb/a;

    iget v2, v0, LV/H;->f:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v2, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p3}, LG5/A2;->f(Ljava/lang/Object;)V

    goto :goto_2

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    iget-object p2, v0, LV/H;->c:Lsb/n;

    iget-object p1, v0, LV/H;->b:LR/s;

    iget-object p0, v0, LV/H;->a:LV/J;

    invoke-static {p3}, LG5/A2;->f(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    invoke-static {p3}, LG5/A2;->f(Ljava/lang/Object;)V

    iput-object p0, v0, LV/H;->a:LV/J;

    iput-object p1, v0, LV/H;->b:LR/s;

    iput-object p2, v0, LV/H;->c:Lsb/n;

    iput v4, v0, LV/H;->f:I

    iget-object p3, p0, LV/J;->m:LV/b;

    invoke-virtual {p3, v0}, LV/b;->b(Lkb/c;)Ljava/lang/Object;

    move-result-object p3

    if-ne p3, v1, :cond_4

    return-object v1

    :cond_4
    :goto_1
    iget-object p0, p0, LV/J;->f:Lo3/i;

    const/4 p3, 0x0

    iput-object p3, v0, LV/H;->a:LV/J;

    iput-object p3, v0, LV/H;->b:LR/s;

    iput-object p3, v0, LV/H;->c:Lsb/n;

    iput v3, v0, LV/H;->f:I

    invoke-virtual {p0, p1, p2, v0}, Lo3/i;->a(LR/s;Lsb/n;Lkb/c;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_5

    return-object v1

    :cond_5
    :goto_2
    sget-object p0, Ldb/r;->a:Ldb/r;

    return-object p0
.end method

.method public final b()Z
    .locals 0

    iget-object p0, p0, LV/J;->r:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-virtual {p0}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public final c()Z
    .locals 0

    iget-object p0, p0, LV/J;->q:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-virtual {p0}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public final d(LV/t;)V
    .locals 4

    const-string v0, "itemProvider"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, LV/J;->a:Lcom/samsung/android/scloud/lib/setting/e;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lk0/n;->a:LZ3/x;

    invoke-virtual {v0}, LZ3/x;->u()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lk0/h;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v0, v2, v1}, Lk0/n;->h(Lk0/h;Lsb/k;Z)Lk0/h;

    move-result-object v0

    :try_start_0
    invoke-virtual {v0}, Lk0/h;->j()Lk0/h;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v2, p0, Lcom/samsung/android/scloud/lib/setting/e;->e:Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/samsung/android/scloud/lib/setting/e;->e()I

    move-result v3

    invoke-static {p1, v2, v3}, LG5/Z2;->b(LV/o;Ljava/lang/Object;I)I

    move-result p1

    invoke-virtual {p0}, Lcom/samsung/android/scloud/lib/setting/e;->f()I

    move-result v2

    invoke-virtual {p0, p1, v2}, Lcom/samsung/android/scloud/lib/setting/e;->r(II)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-static {v1}, Lk0/h;->p(Lk0/h;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    invoke-virtual {v0}, Lk0/h;->c()V

    return-void

    :catchall_0
    move-exception p0

    :try_start_3
    invoke-static {v1}, Lk0/h;->p(Lk0/h;)V

    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception p0

    invoke-virtual {v0}, Lk0/h;->c()V

    throw p0
.end method
