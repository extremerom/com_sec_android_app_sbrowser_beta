.class public final LS/b0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lw0/a;


# instance fields
.field public final synthetic a:La0/a0;

.field public final synthetic b:Z


# direct methods
.method public constructor <init>(La0/a0;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LS/b0;->a:La0/a0;

    iput-boolean p2, p0, LS/b0;->b:Z

    return-void
.end method


# virtual methods
.method public final c(IJ)J
    .locals 0

    const/4 p2, 0x2

    if-ne p1, p2, :cond_0

    iget-object p0, p0, LS/b0;->a:La0/a0;

    invoke-interface {p0}, La0/K0;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, LS/k0;

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iget-object p0, p0, LS/k0;->g:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-virtual {p0, p1}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->setValue(Ljava/lang/Object;)V

    :cond_0
    sget-wide p0, Lr0/b;->b:J

    return-wide p0
.end method

.method public final g(JJLib/c;)Ljava/lang/Object;
    .locals 2

    instance-of p1, p5, LS/a0;

    if-eqz p1, :cond_0

    move-object p1, p5

    check-cast p1, LS/a0;

    iget p2, p1, LS/a0;->e:I

    const/high16 v0, -0x80000000

    and-int v1, p2, v0

    if-eqz v1, :cond_0

    sub-int/2addr p2, v0

    iput p2, p1, LS/a0;->e:I

    goto :goto_0

    :cond_0
    new-instance p1, LS/a0;

    check-cast p5, Lkb/c;

    invoke-direct {p1, p0, p5}, LS/a0;-><init>(LS/b0;Lkb/c;)V

    :goto_0
    iget-object p2, p1, LS/a0;->c:Ljava/lang/Object;

    sget-object p5, Ljb/a;->COROUTINE_SUSPENDED:Ljb/a;

    iget v0, p1, LS/a0;->e:I

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    if-ne v0, v1, :cond_1

    iget-wide p3, p1, LS/a0;->b:J

    iget-object p0, p1, LS/a0;->a:LS/b0;

    invoke-static {p2}, LG5/A2;->f(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    invoke-static {p2}, LG5/A2;->f(Ljava/lang/Object;)V

    iget-boolean p2, p0, LS/b0;->b:Z

    if-eqz p2, :cond_4

    iget-object p2, p0, LS/b0;->a:La0/a0;

    invoke-interface {p2}, La0/K0;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, LS/k0;

    iput-object p0, p1, LS/a0;->a:LS/b0;

    iput-wide p3, p1, LS/a0;->b:J

    iput v1, p1, LS/a0;->e:I

    invoke-virtual {p2, p3, p4, p1}, LS/k0;->b(JLkb/c;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, p5, :cond_3

    return-object p5

    :cond_3
    :goto_1
    check-cast p2, LH0/o;

    iget-wide p1, p2, LH0/o;->a:J

    invoke-static {p3, p4, p1, p2}, LH0/o;->d(JJ)J

    move-result-wide p1

    goto :goto_2

    :cond_4
    sget-wide p1, LH0/o;->b:J

    :goto_2
    new-instance p3, LH0/o;

    invoke-direct {p3, p1, p2}, LH0/o;-><init>(J)V

    iget-object p0, p0, LS/b0;->a:La0/a0;

    invoke-interface {p0}, La0/K0;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, LS/k0;

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iget-object p0, p0, LS/k0;->g:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-virtual {p0, p1}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->setValue(Ljava/lang/Object;)V

    return-object p3
.end method

.method public final i(JJI)J
    .locals 0

    iget-boolean p1, p0, LS/b0;->b:Z

    if-eqz p1, :cond_1

    iget-object p0, p0, LS/b0;->a:La0/a0;

    invoke-interface {p0}, La0/K0;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, LS/k0;

    iget-object p1, p0, LS/k0;->d:LV/J;

    iget-object p2, p1, LV/J;->f:Lo3/i;

    invoke-virtual {p2}, Lo3/i;->g()Z

    move-result p2

    if-eqz p2, :cond_0

    sget-wide p0, Lr0/b;->b:J

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p3, p4}, LS/k0;->e(J)F

    move-result p2

    invoke-virtual {p0, p2}, LS/k0;->d(F)F

    move-result p2

    iget-object p1, p1, LV/J;->f:Lo3/i;

    invoke-virtual {p1, p2}, Lo3/i;->c(F)F

    move-result p1

    invoke-virtual {p0, p1}, LS/k0;->d(F)F

    move-result p1

    invoke-virtual {p0, p1}, LS/k0;->f(F)J

    move-result-wide p0

    goto :goto_0

    :cond_1
    sget-wide p0, Lr0/b;->b:J

    :goto_0
    return-wide p0
.end method
