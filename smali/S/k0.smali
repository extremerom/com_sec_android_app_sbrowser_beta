.class public final LS/k0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:LS/I;

.field public final b:Z

.field public final c:La0/a0;

.field public final d:LV/J;

.field public final e:LS/g;

.field public final f:LR/z;

.field public final g:Landroidx/compose/runtime/ParcelableSnapshotMutableState;


# direct methods
.method public constructor <init>(LS/I;ZLa0/a0;LV/J;LS/g;LR/z;)V
    .locals 1

    const-string v0, "nestedScrollDispatcher"

    invoke-static {p3, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "scrollableState"

    invoke-static {p4, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "flingBehavior"

    invoke-static {p5, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LS/k0;->a:LS/I;

    iput-boolean p2, p0, LS/k0;->b:Z

    iput-object p3, p0, LS/k0;->c:La0/a0;

    iput-object p4, p0, LS/k0;->d:LV/J;

    iput-object p5, p0, LS/k0;->e:LS/g;

    iput-object p6, p0, LS/k0;->f:LR/z;

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    sget-object p2, La0/V;->f:La0/V;

    invoke-static {p1, p2}, La0/d;->E(Ljava/lang/Object;La0/A0;)Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    move-result-object p1

    iput-object p1, p0, LS/k0;->g:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    return-void
.end method


# virtual methods
.method public final a(LS/N;JI)J
    .locals 3

    const-string v0, "$this$dispatchScroll"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, LS/k0;->a:LS/I;

    sget-object v1, LS/I;->Horizontal:LS/I;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    invoke-static {p2, p3}, Lr0/b;->a(J)F

    move-result p2

    invoke-static {p2, v2}, LG5/A;->a(FF)J

    move-result-wide p2

    goto :goto_0

    :cond_0
    invoke-static {p2, p3}, Lr0/b;->b(J)F

    move-result p2

    invoke-static {v2, p2}, LG5/A;->a(FF)J

    move-result-wide p2

    :goto_0
    new-instance v0, LS/e0;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p4, p1, v1}, LS/e0;-><init>(Ljava/lang/Object;ILjava/lang/Object;I)V

    iget-object p1, p0, LS/k0;->f:LR/z;

    iget-object p0, p0, LS/k0;->d:LV/J;

    invoke-virtual {p0}, LV/J;->c()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p0}, LV/J;->b()Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_1

    :cond_1
    new-instance p0, Lr0/b;

    invoke-direct {p0, p2, p3}, Lr0/b;-><init>(J)V

    invoke-virtual {v0, p0}, LS/e0;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lr0/b;

    iget-wide p0, p0, Lr0/b;->a:J

    goto :goto_2

    :cond_2
    :goto_1
    invoke-interface {p1, p2, p3, p4, v0}, LR/z;->a(JILS/e0;)J

    move-result-wide p0

    :goto_2
    return-wide p0
.end method

.method public final b(JLkb/c;)Ljava/lang/Object;
    .locals 10

    instance-of v0, p3, LS/f0;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, LS/f0;

    iget v1, v0, LS/f0;->d:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, LS/f0;->d:I

    goto :goto_0

    :cond_0
    new-instance v0, LS/f0;

    invoke-direct {v0, p0, p3}, LS/f0;-><init>(LS/k0;Lkb/c;)V

    :goto_0
    iget-object p3, v0, LS/f0;->b:Ljava/lang/Object;

    sget-object v1, Ljb/a;->COROUTINE_SUSPENDED:Ljb/a;

    iget v2, v0, LS/f0;->d:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p0, v0, LS/f0;->a:Ltb/v;

    invoke-static {p3}, LG5/A2;->f(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    invoke-static {p3}, LG5/A2;->f(Ljava/lang/Object;)V

    new-instance p3, Ltb/v;

    invoke-direct {p3}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p3, Ltb/v;->a:J

    new-instance v2, LS/h0;

    const/4 v9, 0x0

    move-object v4, v2

    move-object v5, p0

    move-object v6, p3

    move-wide v7, p1

    invoke-direct/range {v4 .. v9}, LS/h0;-><init>(LS/k0;Ltb/v;JLib/c;)V

    iput-object p3, v0, LS/f0;->a:Ltb/v;

    iput v3, v0, LS/f0;->d:I

    sget-object p1, LR/s;->Default:LR/s;

    iget-object p0, p0, LS/k0;->d:LV/J;

    invoke-virtual {p0, p1, v2, v0}, LV/J;->a(LR/s;Lsb/n;Lkb/c;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_3

    return-object v1

    :cond_3
    move-object p0, p3

    :goto_1
    iget-wide p0, p0, Ltb/v;->a:J

    new-instance p2, LH0/o;

    invoke-direct {p2, p0, p1}, LH0/o;-><init>(J)V

    return-object p2
.end method

.method public final c(JLkb/c;)Ljava/lang/Object;
    .locals 7

    instance-of v0, p3, LS/i0;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, LS/i0;

    iget v1, v0, LS/i0;->d:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, LS/i0;->d:I

    goto :goto_0

    :cond_0
    new-instance v0, LS/i0;

    invoke-direct {v0, p0, p3}, LS/i0;-><init>(LS/k0;Lkb/c;)V

    :goto_0
    iget-object p3, v0, LS/i0;->b:Ljava/lang/Object;

    sget-object v1, Ljb/a;->COROUTINE_SUSPENDED:Ljb/a;

    iget v2, v0, LS/i0;->d:I

    const/4 v3, 0x1

    const/4 v4, 0x2

    if-eqz v2, :cond_3

    if-eq v2, v3, :cond_1

    if-ne v2, v4, :cond_2

    :cond_1
    iget-object p0, v0, LS/i0;->a:LS/k0;

    invoke-static {p3}, LG5/A2;->f(Ljava/lang/Object;)V

    goto :goto_3

    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    invoke-static {p3}, LG5/A2;->f(Ljava/lang/Object;)V

    sget-object p3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iget-object v2, p0, LS/k0;->g:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-virtual {v2, p3}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->setValue(Ljava/lang/Object;)V

    iget-object p3, p0, LS/k0;->a:LS/I;

    sget-object v2, LS/I;->Horizontal:LS/I;

    const/4 v5, 0x0

    if-ne p3, v2, :cond_4

    invoke-static {p1, p2, v5, v5, v3}, LH0/o;->a(JFFI)J

    move-result-wide p1

    goto :goto_1

    :cond_4
    invoke-static {p1, p2, v5, v5, v4}, LH0/o;->a(JFFI)J

    move-result-wide p1

    :goto_1
    new-instance p3, LS/j0;

    const/4 v2, 0x0

    invoke-direct {p3, p0, v2}, LS/j0;-><init>(LS/k0;Lib/c;)V

    iget-object v2, p0, LS/k0;->f:LR/z;

    iget-object v5, p0, LS/k0;->d:LV/J;

    invoke-virtual {v5}, LV/J;->c()Z

    move-result v6

    if-nez v6, :cond_6

    invoke-virtual {v5}, LV/J;->b()Z

    move-result v5

    if-eqz v5, :cond_5

    goto :goto_2

    :cond_5
    new-instance v2, LH0/o;

    invoke-direct {v2, p1, p2}, LH0/o;-><init>(J)V

    iput-object p0, v0, LS/i0;->a:LS/k0;

    iput v4, v0, LS/i0;->d:I

    invoke-virtual {p3, v2, v0}, LS/j0;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_7

    return-object v1

    :cond_6
    :goto_2
    iput-object p0, v0, LS/i0;->a:LS/k0;

    iput v3, v0, LS/i0;->d:I

    invoke-interface {v2, p1, p2, p3, v0}, LR/z;->b(JLS/j0;Lib/c;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_7

    return-object v1

    :cond_7
    :goto_3
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iget-object p0, p0, LS/k0;->g:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-virtual {p0, p1}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->setValue(Ljava/lang/Object;)V

    sget-object p0, Ldb/r;->a:Ldb/r;

    return-object p0
.end method

.method public final d(F)F
    .locals 0

    iget-boolean p0, p0, LS/k0;->b:Z

    if-eqz p0, :cond_0

    const/4 p0, -0x1

    int-to-float p0, p0

    mul-float/2addr p1, p0

    :cond_0
    return p1
.end method

.method public final e(J)F
    .locals 1

    iget-object p0, p0, LS/k0;->a:LS/I;

    sget-object v0, LS/I;->Horizontal:LS/I;

    if-ne p0, v0, :cond_0

    invoke-static {p1, p2}, Lr0/b;->a(J)F

    move-result p0

    goto :goto_0

    :cond_0
    invoke-static {p1, p2}, Lr0/b;->b(J)F

    move-result p0

    :goto_0
    return p0
.end method

.method public final f(F)J
    .locals 2

    const/4 v0, 0x0

    cmpg-float v1, p1, v0

    if-nez v1, :cond_0

    sget p0, Lr0/b;->d:I

    sget-wide p0, Lr0/b;->b:J

    goto :goto_0

    :cond_0
    iget-object p0, p0, LS/k0;->a:LS/I;

    sget-object v1, LS/I;->Horizontal:LS/I;

    if-ne p0, v1, :cond_1

    invoke-static {p1, v0}, LG5/A;->a(FF)J

    move-result-wide p0

    goto :goto_0

    :cond_1
    invoke-static {v0, p1}, LG5/A;->a(FF)J

    move-result-wide p0

    :goto_0
    return-wide p0
.end method
