.class public final LQ/a;
.super Ltb/m;
.source "SourceFile"

# interfaces
.implements Lsb/k;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:Ljava/lang/Object;

.field public final synthetic e:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 0

    iput p5, p0, LQ/a;->a:I

    iput-object p1, p0, LQ/a;->d:Ljava/lang/Object;

    iput-object p2, p0, LQ/a;->b:Ljava/lang/Object;

    iput-object p3, p0, LQ/a;->c:Ljava/lang/Object;

    iput-object p4, p0, LQ/a;->e:Ljava/lang/Object;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Ltb/m;-><init>(I)V

    return-void
.end method

.method public constructor <init>(Ltb/w;LQ/e;LQ/i;Lsb/k;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, LQ/a;->a:I

    iput-object p1, p0, LQ/a;->d:Ljava/lang/Object;

    iput-object p2, p0, LQ/a;->e:Ljava/lang/Object;

    iput-object p3, p0, LQ/a;->b:Ljava/lang/Object;

    iput-object p4, p0, LQ/a;->c:Ljava/lang/Object;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Ltb/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    iget v0, p0, LQ/a;->a:I

    packed-switch v0, :pswitch_data_0

    const-string v0, "it"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, LQ/a;->d:Ljava/lang/Object;

    check-cast p1, Lc2/U;

    invoke-virtual {p1}, Lc2/U;->a()J

    move-result-wide v0

    iget-object v2, p0, LQ/a;->b:Ljava/lang/Object;

    check-cast v2, Lc2/Q;

    iget-wide v3, v2, Lc2/Q;->b:J

    invoke-static {v0, v1, v3, v4}, LLc/a;->d(JJ)I

    move-result v0

    if-gez v0, :cond_2

    iget-object v0, p1, Lc2/U;->b:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v1, Lc2/S;

    iget-wide v2, v2, Lc2/Q;->b:J

    invoke-direct {v1, v2, v3}, Lc2/S;-><init>(J)V

    :goto_0
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Lc2/S;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    :cond_0
    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v4

    if-eq v4, v2, :cond_0

    goto :goto_0

    :cond_2
    :goto_1
    iget-object v0, p0, LQ/a;->c:Ljava/lang/Object;

    check-cast v0, Lc2/m;

    iget-object v0, v0, Lc2/m;->a:Ljava/lang/String;

    invoke-virtual {p1}, Lc2/U;->a()J

    move-result-wide v1

    invoke-static {v1, v2}, LLc/a;->h(J)Ljava/lang/String;

    move-result-object v1

    const-string v2, "processing event for "

    const-string v3, "; "

    const-string v4, " left"

    invoke-static {v2, v0, v3, v1, v4}, Lw2/j;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "msg"

    invoke-static {v0, v1}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Le7/a;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GWT:SessionWorker"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lc2/L;

    iget-object p0, p0, LQ/a;->e:Ljava/lang/Object;

    check-cast p0, Lc2/j;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lc2/L;-><init>(Lc2/j;Lib/c;)V

    const/4 p0, 0x3

    invoke-static {p1, v1, v1, v0, p0}, LNc/E;->y(LNc/B;Lib/h;LNc/D;Lsb/n;I)LNc/C0;

    sget-object p0, Ldb/r;->a:Ldb/r;

    return-object p0

    :pswitch_0
    check-cast p1, LQ/g;

    const-string v0, "$this$animateDecay"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p1, LQ/g;->e:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-virtual {v0}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->floatValue()F

    move-result v1

    iget-object v2, p0, LQ/a;->d:Ljava/lang/Object;

    check-cast v2, Ltb/t;

    iget v3, v2, Ltb/t;->a:F

    sub-float/2addr v1, v3

    iget-object v3, p0, LQ/a;->b:Ljava/lang/Object;

    check-cast v3, LS/g0;

    invoke-virtual {v3, v1}, LS/g0;->scrollBy(F)F

    move-result v3

    invoke-virtual {v0}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v0

    iput v0, v2, Ltb/t;->a:F

    iget-object v0, p1, LQ/g;->a:LA7/h;

    iget-object v0, v0, LA7/h;->b:Ljava/lang/Object;

    check-cast v0, Ltb/m;

    iget-object v2, p1, LQ/g;->f:LQ/m;

    invoke-interface {v0, v2}, Lsb/k;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v0

    iget-object v2, p0, LQ/a;->c:Ljava/lang/Object;

    check-cast v2, Ltb/t;

    iput v0, v2, Ltb/t;->a:F

    sub-float/2addr v1, v3

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v1, 0x3f000000    # 0.5f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_3

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iget-object v1, p1, LQ/g;->i:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-virtual {v1, v0}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->setValue(Ljava/lang/Object;)V

    iget-object p1, p1, LQ/g;->d:Ltb/m;

    invoke-interface {p1}, Lsb/a;->invoke()Ljava/lang/Object;

    :cond_3
    iget-object p0, p0, LQ/a;->e:Ljava/lang/Object;

    check-cast p0, LS/g;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p0, Ldb/r;->a:Ldb/r;

    return-object p0

    :pswitch_1
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v1

    iget-object p1, p0, LQ/a;->d:Ljava/lang/Object;

    check-cast p1, Ltb/w;

    iget-object p1, p1, Ltb/w;->a:Ljava/lang/Object;

    invoke-static {p1}, Ltb/k;->c(Ljava/lang/Object;)V

    move-object v0, p1

    check-cast v0, LQ/g;

    iget-object p1, p0, LQ/a;->c:Ljava/lang/Object;

    move-object v5, p1

    check-cast v5, Lsb/k;

    iget-object p1, p0, LQ/a;->e:Ljava/lang/Object;

    move-object v3, p1

    check-cast v3, LQ/e;

    iget-object p0, p0, LQ/a;->b:Ljava/lang/Object;

    move-object v4, p0

    check-cast v4, LQ/i;

    invoke-static/range {v0 .. v5}, LG5/x;->g(LQ/g;JLQ/e;LQ/i;Lsb/k;)V

    sget-object p0, Ldb/r;->a:Ldb/r;

    return-object p0

    :pswitch_2
    check-cast p1, LQ/g;

    const-string v0, "$this$animate"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, LQ/a;->d:Ljava/lang/Object;

    check-cast v0, LQ/d;

    iget-object v1, v0, LQ/d;->c:LQ/i;

    invoke-static {p1, v1}, LG5/x;->j(LQ/g;LQ/i;)V

    iget-object v1, p1, LQ/g;->e:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-virtual {v1}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v0, v2}, LQ/d;->a(LQ/d;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v2, v1}, Ltb/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    iget-object v3, p0, LQ/a;->c:Ljava/lang/Object;

    check-cast v3, Lsb/k;

    if-nez v1, :cond_5

    iget-object v1, v0, LQ/d;->c:LQ/i;

    iget-object v1, v1, LQ/i;->b:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-virtual {v1, v2}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->setValue(Ljava/lang/Object;)V

    iget-object v1, p0, LQ/a;->b:Ljava/lang/Object;

    check-cast v1, LQ/i;

    iget-object v1, v1, LQ/i;->b:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-virtual {v1, v2}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->setValue(Ljava/lang/Object;)V

    if-eqz v3, :cond_4

    invoke-interface {v3, v0}, Lsb/k;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iget-object v1, p1, LQ/g;->i:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-virtual {v1, v0}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->setValue(Ljava/lang/Object;)V

    iget-object p1, p1, LQ/g;->d:Ltb/m;

    invoke-interface {p1}, Lsb/a;->invoke()Ljava/lang/Object;

    iget-object p0, p0, LQ/a;->e:Ljava/lang/Object;

    check-cast p0, Ltb/s;

    const/4 p1, 0x1

    iput-boolean p1, p0, Ltb/s;->a:Z

    goto :goto_2

    :cond_5
    if-eqz v3, :cond_6

    invoke-interface {v3, v0}, Lsb/k;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    :goto_2
    sget-object p0, Ldb/r;->a:Ldb/r;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
