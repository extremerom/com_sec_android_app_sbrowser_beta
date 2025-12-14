.class public final Lo3/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LS/d0;
.implements Lac/n;
.implements Luc/g;


# instance fields
.field public a:Ljava/lang/Object;

.field public b:Ljava/lang/Object;

.field public c:Ljava/lang/Object;

.field public d:Ljava/lang/Object;


# direct methods
.method public constructor <init>(LVb/a;LVb/e;Ldb/f;)V
    .locals 1

    const-string v0, "typeParameterResolver"

    invoke-static {p2, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo3/i;->a:Ljava/lang/Object;

    iput-object p2, p0, Lo3/i;->b:Ljava/lang/Object;

    iput-object p3, p0, Lo3/i;->c:Ljava/lang/Object;

    new-instance p1, Lo3/t;

    invoke-direct {p1, p0, p2}, Lo3/t;-><init>(Lo3/i;LVb/e;)V

    iput-object p1, p0, Lo3/i;->d:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lo3/i;->a:Ljava/lang/Object;

    iput-object p2, p0, Lo3/i;->b:Ljava/lang/Object;

    iput-object p3, p0, Lo3/i;->c:Ljava/lang/Object;

    iput-object p4, p0, Lo3/i;->d:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public E(Lhc/f;Lmc/f;)V
    .locals 0

    iget-object p0, p0, Lo3/i;->a:Ljava/lang/Object;

    check-cast p0, LD4/d;

    invoke-virtual {p0, p1, p2}, LD4/d;->E(Lhc/f;Lmc/f;)V

    return-void
.end method

.method public H(Lhc/b;Lhc/f;)Lac/n;
    .locals 0

    iget-object p0, p0, Lo3/i;->a:Ljava/lang/Object;

    check-cast p0, LD4/d;

    invoke-virtual {p0, p1, p2}, LD4/d;->H(Lhc/b;Lhc/f;)Lac/n;

    move-result-object p0

    return-object p0
.end method

.method public a(LR/s;Lsb/n;Lkb/c;)Ljava/lang/Object;
    .locals 2

    new-instance v0, LS/i;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, p2, v1}, LS/i;-><init>(Lo3/i;LR/s;Lsb/n;Lib/c;)V

    invoke-static {v0, p3}, LNc/E;->j(Lsb/n;Lib/c;)Ljava/lang/Object;

    move-result-object p0

    sget-object p1, Ljb/a;->COROUTINE_SUSPENDED:Ljb/a;

    if-ne p0, p1, :cond_0

    return-object p0

    :cond_0
    sget-object p0, Ldb/r;->a:Ldb/r;

    return-object p0
.end method

.method public b()V
    .locals 2

    iget-object v0, p0, Lo3/i;->b:Ljava/lang/Object;

    check-cast v0, LD4/d;

    invoke-virtual {v0}, LD4/d;->b()V

    iget-object v0, p0, Lo3/i;->c:Ljava/lang/Object;

    check-cast v0, Lo3/n;

    iget-object v0, v0, Lo3/n;->a:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    new-instance v1, Lmc/a;

    iget-object p0, p0, Lo3/i;->d:Ljava/lang/Object;

    check-cast p0, Ljava/util/ArrayList;

    invoke-static {p0}, Lfb/n;->U(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, LKb/b;

    invoke-direct {v1, p0}, Lmc/a;-><init>(LKb/b;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public c(F)F
    .locals 0

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    iget-object p0, p0, Lo3/i;->a:Ljava/lang/Object;

    check-cast p0, LB0/a;

    invoke-virtual {p0, p1}, LB0/a;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->floatValue()F

    move-result p0

    return p0
.end method

.method public d(Lo3/j;)Lo3/g;
    .locals 5

    sget-object v0, LJ2/d0;->i:Ljava/util/TreeMap;

    const-string v0, "SELECT * FROM SystemIdInfo WHERE work_spec_id=? AND generation=?"

    const/4 v1, 0x2

    invoke-static {v1, v0}, LG5/z3;->a(ILjava/lang/String;)LJ2/d0;

    move-result-object v0

    iget-object v2, p1, Lo3/j;->a:Ljava/lang/String;

    const/4 v3, 0x1

    if-nez v2, :cond_0

    invoke-virtual {v0, v3}, LJ2/d0;->l(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, v3, v2}, LJ2/d0;->U(ILjava/lang/String;)V

    :goto_0
    iget p1, p1, Lo3/j;->b:I

    int-to-long v2, p1

    invoke-virtual {v0, v1, v2, v3}, LJ2/d0;->i(IJ)V

    iget-object p0, p0, Lo3/i;->a:Ljava/lang/Object;

    check-cast p0, Landroidx/work/impl/WorkDatabase_Impl;

    invoke-virtual {p0}, LJ2/U;->assertNotSuspendingTransaction()V

    const/4 p1, 0x0

    invoke-static {p0, v0, p1}, LA/b;->k(LJ2/U;LT2/g;Z)Landroid/database/Cursor;

    move-result-object p0

    :try_start_0
    const-string p1, "work_spec_id"

    invoke-static {p0, p1}, Landroidx/glance/appwidget/protobuf/s0;->d(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result p1

    const-string v1, "generation"

    invoke-static {p0, v1}, Landroidx/glance/appwidget/protobuf/s0;->d(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    const-string v2, "system_id"

    invoke-static {p0, v2}, Landroidx/glance/appwidget/protobuf/s0;->d(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_2

    invoke-interface {p0, p1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_1

    :cond_1
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    :goto_1
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result p1

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    new-instance v2, Lo3/g;

    invoke-direct {v2, v4, p1, v1}, Lo3/g;-><init>(Ljava/lang/String;II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v4, v2

    goto :goto_2

    :catchall_0
    move-exception p1

    goto :goto_3

    :cond_2
    :goto_2
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    invoke-virtual {v0}, LJ2/d0;->a()V

    return-object v4

    :goto_3
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    invoke-virtual {v0}, LJ2/d0;->a()V

    throw p1
.end method

.method public e(Lo3/g;)V
    .locals 1

    iget-object v0, p0, Lo3/i;->a:Ljava/lang/Object;

    check-cast v0, Landroidx/work/impl/WorkDatabase_Impl;

    invoke-virtual {v0}, LJ2/U;->assertNotSuspendingTransaction()V

    invoke-virtual {v0}, LJ2/U;->beginTransaction()V

    :try_start_0
    iget-object p0, p0, Lo3/i;->b:Ljava/lang/Object;

    check-cast p0, Lo3/b;

    invoke-virtual {p0, p1}, Lo3/b;->x(Ljava/lang/Object;)V

    invoke-virtual {v0}, LJ2/U;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, LJ2/U;->endTransaction()V

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {v0}, LJ2/U;->endTransaction()V

    throw p0
.end method

.method public f(LJb/V;)Z
    .locals 1

    const-string v0, "descriptor"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lo3/i;->b:Ljava/lang/Object;

    check-cast v0, LJb/V;

    invoke-static {v0, p1}, Ltb/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    iget-object p0, p0, Lo3/i;->a:Ljava/lang/Object;

    check-cast p0, Lo3/i;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lo3/i;->f(LJb/V;)Z

    move-result p0

    goto :goto_0

    :cond_0
    move p0, v0

    :goto_0
    if-eqz p0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :cond_2
    return v0
.end method

.method public g()Z
    .locals 0

    iget-object p0, p0, Lo3/i;->d:Ljava/lang/Object;

    check-cast p0, Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-virtual {p0}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public h(Lm1/o;)V
    .locals 2

    iget-object v0, p0, Lo3/i;->c:Ljava/lang/Object;

    check-cast v0, LPc/i;

    invoke-interface {v0, p1}, LPc/B;->k(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    instance-of v0, p1, LPc/n;

    if-eqz v0, :cond_1

    invoke-static {p1}, LPc/p;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p0

    if-nez p0, :cond_0

    new-instance p0, LPc/s;

    const-string p1, "Channel was closed normally"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    :cond_0
    throw p0

    :cond_1
    instance-of p1, p1, LPc/o;

    if-nez p1, :cond_3

    iget-object p1, p0, Lo3/i;->d:Ljava/lang/Object;

    check-cast p1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result p1

    if-nez p1, :cond_2

    new-instance p1, Lm1/l;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lm1/l;-><init>(Lo3/i;Lib/c;)V

    const/4 v1, 0x3

    iget-object p0, p0, Lo3/i;->a:Ljava/lang/Object;

    check-cast p0, LNc/B;

    invoke-static {p0, v0, v0, p1, v1}, LNc/E;->y(LNc/B;Lib/h;LNc/D;Lsb/n;I)LNc/C0;

    :cond_2
    return-void

    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Check failed."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public i(Lhc/f;Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lo3/i;->a:Ljava/lang/Object;

    check-cast p0, LD4/d;

    invoke-virtual {p0, p1, p2}, LD4/d;->i(Lhc/f;Ljava/lang/Object;)V

    return-void
.end method

.method public j(Lhc/b;)Luc/f;
    .locals 3

    const-string v0, "classId"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lo3/i;->d:Ljava/lang/Object;

    check-cast v0, Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcc/k;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance v1, Luc/f;

    iget-object v2, p0, Lo3/i;->c:Ljava/lang/Object;

    check-cast v2, LMb/a;

    invoke-virtual {v2, p1}, LMb/a;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p1, LJb/S;->L:LJb/T;

    iget-object v2, p0, Lo3/i;->a:Ljava/lang/Object;

    check-cast v2, Lcom/google/android/gms/internal/auth/j;

    iget-object p0, p0, Lo3/i;->b:Ljava/lang/Object;

    check-cast p0, Ldc/a;

    invoke-direct {v1, v2, v0, p0, p1}, Luc/f;-><init>(Lec/g;Lcc/k;Lec/a;LJb/S;)V

    return-object v1
.end method

.method public q(Lhc/f;)Lac/o;
    .locals 0

    iget-object p0, p0, Lo3/i;->a:Ljava/lang/Object;

    check-cast p0, LD4/d;

    invoke-virtual {p0, p1}, LD4/d;->q(Lhc/f;)Lac/o;

    move-result-object p0

    return-object p0
.end method

.method public x(Lhc/f;Lhc/b;Lhc/f;)V
    .locals 0

    iget-object p0, p0, Lo3/i;->a:Ljava/lang/Object;

    check-cast p0, LD4/d;

    invoke-virtual {p0, p1, p2, p3}, LD4/d;->x(Lhc/f;Lhc/b;Lhc/f;)V

    return-void
.end method
