.class public abstract LG5/x;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:Ljava/lang/Boolean;


# direct methods
.method public static final a(ILjava/util/List;)V
    .locals 4

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-ltz p0, :cond_0

    if-ge p0, p1, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const-string v1, "Index "

    const-string v2, " is out of bounds. The list has "

    const-string v3, " elements."

    invoke-static {p0, p1, v1, v2, v3}, Landroidx/recyclerview/widget/P;->d(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static final b(Ljava/util/List;II)V
    .locals 3

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    if-gt p1, p2, :cond_2

    if-ltz p1, :cond_1

    if-gt p2, p0, :cond_0

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "toIndex ("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ") is more than than the list size ("

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    const-string p2, "fromIndex ("

    const-string v0, ") is less than 0."

    invoke-static {p1, p2, v0}, Lt/b;->f(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Indices are out of order. fromIndex ("

    const-string v1, ") is greater than toIndex ("

    const-string v2, ")."

    invoke-static {p1, p2, v0, v1, v2}, Landroidx/recyclerview/widget/P;->d(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static final synthetic c()Ljava/lang/Boolean;
    .locals 1

    sget-object v0, LG5/x;->a:Ljava/lang/Boolean;

    return-object v0
.end method

.method public static final synthetic d(Ljava/lang/Boolean;)V
    .locals 0

    sput-object p0, LG5/x;->a:Ljava/lang/Boolean;

    return-void
.end method

.method public static final e(LQ/i;LQ/e;JLsb/k;Lkb/c;)Ljava/lang/Object;
    .locals 24

    move-object/from16 v9, p0

    move-object/from16 v0, p1

    move-object/from16 v1, p5

    instance-of v2, v1, LQ/B;

    if-eqz v2, :cond_0

    move-object v2, v1

    check-cast v2, LQ/B;

    iget v3, v2, LQ/B;->f:I

    const/high16 v4, -0x80000000

    and-int v5, v3, v4

    if-eqz v5, :cond_0

    sub-int/2addr v3, v4

    iput v3, v2, LQ/B;->f:I

    :goto_0
    move-object v10, v2

    goto :goto_1

    :cond_0
    new-instance v2, LQ/B;

    invoke-direct {v2, v1}, Lkb/c;-><init>(Lib/c;)V

    goto :goto_0

    :goto_1
    iget-object v1, v10, LQ/B;->e:Ljava/lang/Object;

    sget-object v11, Ljb/a;->COROUTINE_SUSPENDED:Ljb/a;

    iget v2, v10, LQ/B;->f:I

    const/4 v12, 0x2

    const/4 v13, 0x1

    if-eqz v2, :cond_3

    if-eq v2, v13, :cond_2

    if-ne v2, v12, :cond_1

    iget-object v2, v10, LQ/B;->d:Ltb/w;

    iget-object v0, v10, LQ/B;->c:Lsb/k;

    iget-object v3, v10, LQ/B;->b:LQ/e;

    iget-object v4, v10, LQ/B;->a:LQ/i;

    :goto_2
    :try_start_0
    invoke-static {v1}, LG5/A2;->f(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    move-object v9, v4

    goto/16 :goto_7

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget-object v2, v10, LQ/B;->d:Ltb/w;

    iget-object v0, v10, LQ/B;->c:Lsb/k;

    iget-object v3, v10, LQ/B;->b:LQ/e;

    iget-object v4, v10, LQ/B;->a:LQ/i;

    goto :goto_2

    :goto_3
    move-object v7, v0

    move-object v0, v3

    goto/16 :goto_5

    :cond_3
    invoke-static {v1}, LG5/A2;->f(Ljava/lang/Object;)V

    const-wide/16 v1, 0x0

    invoke-interface {v0, v1, v2}, LQ/e;->f(J)Ljava/lang/Object;

    move-result-object v15

    invoke-interface {v0, v1, v2}, LQ/e;->b(J)LQ/m;

    move-result-object v17

    new-instance v14, Ltb/w;

    invoke-direct {v14}, Ljava/lang/Object;-><init>()V

    const-wide/high16 v1, -0x8000000000000000L

    cmp-long v1, p2, v1

    if-nez v1, :cond_5

    :try_start_1
    invoke-interface {v10}, Lib/c;->getContext()Lib/h;

    move-result-object v1

    invoke-static {v1}, LG5/x;->h(Lib/h;)V

    new-instance v8, LQ/D;

    const/16 v16, 0x0

    move-object v1, v8

    move-object v2, v14

    move-object v3, v15

    move-object/from16 v4, p1

    move-object/from16 v5, v17

    move-object/from16 v6, p0

    move-object/from16 v7, p4

    move-object v15, v8

    move/from16 v8, v16

    invoke-direct/range {v1 .. v8}, LQ/D;-><init>(Ljava/io/Serializable;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    iput-object v9, v10, LQ/B;->a:LQ/i;

    iput-object v0, v10, LQ/B;->b:LQ/e;

    move-object/from16 v7, p4

    iput-object v7, v10, LQ/B;->c:Lsb/k;

    iput-object v14, v10, LQ/B;->d:Ltb/w;

    iput v13, v10, LQ/B;->f:I

    invoke-static {v0, v15, v10}, LG5/x;->f(LQ/e;Lsb/k;LQ/B;)Ljava/lang/Object;

    move-result-object v1
    :try_end_1
    .catch Ljava/util/concurrent/CancellationException; {:try_start_1 .. :try_end_1} :catch_1

    if-ne v1, v11, :cond_4

    return-object v11

    :cond_4
    move-object v4, v9

    move-object v2, v14

    goto :goto_5

    :goto_4
    move-object v2, v14

    goto/16 :goto_7

    :catch_1
    move-exception v0

    goto :goto_4

    :cond_5
    move-object/from16 v7, p4

    :try_start_2
    new-instance v8, LQ/g;

    invoke-interface/range {p1 .. p1}, LQ/e;->e()LA7/h;

    move-result-object v16

    invoke-interface/range {p1 .. p1}, LQ/e;->g()Ljava/lang/Object;

    move-result-object v20

    new-instance v1, LQ/C;

    const/4 v2, 0x1

    invoke-direct {v1, v9, v2}, LQ/C;-><init>(LQ/i;I)V
    :try_end_2
    .catch Ljava/util/concurrent/CancellationException; {:try_start_2 .. :try_end_2} :catch_3

    move-object v13, v14

    move-object v14, v8

    move-wide/from16 v18, p2

    move-wide/from16 v21, p2

    move-object/from16 v23, v1

    :try_start_3
    invoke-direct/range {v14 .. v23}, LQ/g;-><init>(Ljava/lang/Object;LA7/h;LQ/m;JLjava/lang/Object;JLsb/a;)V

    invoke-interface {v10}, Lib/c;->getContext()Lib/h;

    move-result-object v1

    invoke-static {v1}, LG5/x;->h(Lib/h;)V

    move-object v1, v8

    move-wide/from16 v2, p2

    move-object/from16 v4, p1

    move-object/from16 v5, p0

    move-object/from16 v6, p4

    invoke-static/range {v1 .. v6}, LG5/x;->g(LQ/g;JLQ/e;LQ/i;Lsb/k;)V

    iput-object v8, v13, Ltb/w;->a:Ljava/lang/Object;
    :try_end_3
    .catch Ljava/util/concurrent/CancellationException; {:try_start_3 .. :try_end_3} :catch_2

    move-object v4, v9

    move-object v2, v13

    :cond_6
    :goto_5
    :try_start_4
    iget-object v1, v2, Ltb/w;->a:Ljava/lang/Object;

    invoke-static {v1}, Ltb/k;->c(Ljava/lang/Object;)V

    check-cast v1, LQ/g;

    iget-object v1, v1, LQ/g;->i:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-virtual {v1}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {v10}, Lib/c;->getContext()Lib/h;

    move-result-object v1

    invoke-static {v1}, LG5/x;->h(Lib/h;)V

    new-instance v1, LQ/a;

    invoke-direct {v1, v2, v0, v4, v7}, LQ/a;-><init>(Ltb/w;LQ/e;LQ/i;Lsb/k;)V

    iput-object v4, v10, LQ/B;->a:LQ/i;

    iput-object v0, v10, LQ/B;->b:LQ/e;

    iput-object v7, v10, LQ/B;->c:Lsb/k;

    iput-object v2, v10, LQ/B;->d:Ltb/w;

    iput v12, v10, LQ/B;->f:I

    invoke-static {v0, v1, v10}, LG5/x;->f(LQ/e;Lsb/k;LQ/B;)Ljava/lang/Object;

    move-result-object v1
    :try_end_4
    .catch Ljava/util/concurrent/CancellationException; {:try_start_4 .. :try_end_4} :catch_0

    if-ne v1, v11, :cond_6

    return-object v11

    :cond_7
    sget-object v0, Ldb/r;->a:Ldb/r;

    return-object v0

    :catch_2
    move-exception v0

    :goto_6
    move-object v2, v13

    goto :goto_7

    :catch_3
    move-exception v0

    move-object v13, v14

    goto :goto_6

    :goto_7
    iget-object v1, v2, Ltb/w;->a:Ljava/lang/Object;

    check-cast v1, LQ/g;

    if-nez v1, :cond_8

    goto :goto_8

    :cond_8
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iget-object v1, v1, LQ/g;->i:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-virtual {v1, v3}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->setValue(Ljava/lang/Object;)V

    :goto_8
    iget-object v1, v2, Ltb/w;->a:Ljava/lang/Object;

    check-cast v1, LQ/g;

    if-eqz v1, :cond_9

    iget-wide v1, v1, LQ/g;->g:J

    iget-wide v3, v9, LQ/i;->d:J

    cmp-long v1, v1, v3

    if-nez v1, :cond_9

    const/4 v1, 0x0

    iput-boolean v1, v9, LQ/i;->f:Z

    :cond_9
    throw v0
.end method

.method public static final f(LQ/e;Lsb/k;LQ/B;)Ljava/lang/Object;
    .locals 1

    invoke-interface {p0}, LQ/e;->a()Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-interface {p2}, Lib/c;->getContext()Lib/h;

    move-result-object p0

    sget-object v0, Landroidx/compose/ui/platform/l;->a:Landroidx/compose/ui/platform/l;

    invoke-interface {p0, v0}, Lib/h;->get(Lib/g;)Lib/f;

    move-result-object p0

    if-nez p0, :cond_0

    invoke-interface {p2}, Lib/c;->getContext()Lib/h;

    move-result-object p0

    invoke-static {p0}, La0/d;->A(Lib/h;)La0/W;

    move-result-object p0

    invoke-interface {p0, p1, p2}, La0/W;->t(Lsb/k;Lkb/c;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/ClassCastException;

    invoke-direct {p0}, Ljava/lang/ClassCastException;-><init>()V

    throw p0

    :cond_1
    new-instance p0, LQ/E;

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, LQ/E;-><init>(ILsb/k;)V

    invoke-interface {p2}, Lib/c;->getContext()Lib/h;

    move-result-object p1

    invoke-static {p1}, La0/d;->A(Lib/h;)La0/W;

    move-result-object p1

    invoke-interface {p1, p0, p2}, La0/W;->t(Lsb/k;Lkb/c;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final g(LQ/g;JLQ/e;LQ/i;Lsb/k;)V
    .locals 2

    iget-wide v0, p0, LQ/g;->c:J

    sub-long v0, p1, v0

    long-to-float v0, v0

    const/high16 v1, 0x3f800000    # 1.0f

    div-float/2addr v0, v1

    float-to-long v0, v0

    iput-wide p1, p0, LQ/g;->g:J

    invoke-interface {p3, v0, v1}, LQ/e;->f(J)Ljava/lang/Object;

    move-result-object p1

    iget-object p2, p0, LQ/g;->e:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-virtual {p2, p1}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->setValue(Ljava/lang/Object;)V

    invoke-interface {p3, v0, v1}, LQ/e;->b(J)LQ/m;

    move-result-object p1

    const-string p2, "<set-?>"

    invoke-static {p1, p2}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, LQ/g;->f:LQ/m;

    invoke-interface {p3, v0, v1}, LQ/e;->c(J)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-wide p1, p0, LQ/g;->g:J

    iput-wide p1, p0, LQ/g;->h:J

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iget-object p2, p0, LQ/g;->i:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-virtual {p2, p1}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->setValue(Ljava/lang/Object;)V

    :cond_0
    invoke-static {p0, p4}, LG5/x;->j(LQ/g;LQ/i;)V

    invoke-interface {p5, p0}, Lsb/k;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static final h(Lib/h;)V
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lm0/a;->h:Lm0/a;

    invoke-interface {p0, v0}, Lib/h;->get(Lib/g;)Lib/f;

    move-result-object p0

    check-cast p0, LS/O;

    return-void
.end method

.method public static i(Landroid/content/res/Configuration;Landroid/graphics/Typeface;)Landroid/graphics/Typeface;
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1f

    if-lt v0, v1, :cond_0

    invoke-static {p0}, LB4/b;->a(Landroid/content/res/Configuration;)I

    move-result v0

    const v1, 0x7fffffff

    if-eq v0, v1, :cond_0

    invoke-static {p0}, LB4/b;->a(Landroid/content/res/Configuration;)I

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Typeface;->getWeight()I

    move-result v0

    invoke-static {p0}, LB4/b;->a(Landroid/content/res/Configuration;)I

    move-result p0

    add-int/2addr p0, v0

    const/4 v0, 0x1

    const/16 v1, 0x3e8

    invoke-static {p0, v0, v1}, LG5/L3;->e(III)I

    move-result p0

    invoke-virtual {p1}, Landroid/graphics/Typeface;->isItalic()Z

    move-result v0

    invoke-static {p1, p0, v0}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;IZ)Landroid/graphics/Typeface;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static final j(LQ/g;LQ/i;)V
    .locals 5

    const-string v0, "<this>"

    invoke-static {p0, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "state"

    invoke-static {p1, v1}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, LQ/g;->e:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-virtual {v1}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p1, LQ/i;->b:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-virtual {v2, v1}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->setValue(Ljava/lang/Object;)V

    iget-object v1, p1, LQ/i;->c:LQ/m;

    iget-object v2, p0, LQ/g;->f:LQ/m;

    invoke-static {v1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "source"

    invoke-static {v2, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, LQ/m;->b()I

    move-result v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_0

    invoke-virtual {v2, v3}, LQ/m;->a(I)F

    move-result v4

    invoke-virtual {v1, v4, v3}, LQ/m;->e(FI)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    iget-wide v0, p0, LQ/g;->h:J

    iput-wide v0, p1, LQ/i;->e:J

    iget-wide v0, p0, LQ/g;->g:J

    iput-wide v0, p1, LQ/i;->d:J

    iget-object p0, p0, LQ/g;->i:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-virtual {p0}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    iput-boolean p0, p1, LQ/i;->f:Z

    return-void
.end method
