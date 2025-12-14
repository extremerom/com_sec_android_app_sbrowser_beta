.class public abstract LG5/X2;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:I


# direct methods
.method public static final a(FF)J
    .locals 4

    invoke-static {p0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p0

    int-to-long v0, p0

    invoke-static {p1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p0

    int-to-long p0, p0

    const/16 v2, 0x20

    shl-long/2addr v0, v2

    const-wide v2, 0xffffffffL

    and-long/2addr p0, v2

    or-long/2addr p0, v0

    sget v0, LH0/o;->c:I

    return-wide p0
.end method

.method public static final b(Ljava/util/ArrayList;)V
    .locals 1

    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lx1/l;

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public static c(I)I
    .locals 3

    const/4 v0, 0x1

    if-eq p0, v0, :cond_8

    const/4 v1, 0x2

    if-eq p0, v1, :cond_7

    const/4 v0, 0x4

    if-eq p0, v0, :cond_6

    const/16 v1, 0x8

    if-eq p0, v1, :cond_5

    const/16 v2, 0x10

    if-eq p0, v2, :cond_4

    const/16 v0, 0x20

    if-eq p0, v0, :cond_3

    const/16 v0, 0x40

    if-eq p0, v0, :cond_2

    const/16 v0, 0x80

    if-eq p0, v0, :cond_1

    const/16 v0, 0x100

    if-ne p0, v0, :cond_0

    return v1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "type needs to be >= FIRST and <= LAST, type="

    invoke-static {p0, v1}, Lcom/sec/android/app/sbrowser/autofill/password/k;->i(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    const/4 p0, 0x7

    return p0

    :cond_2
    const/4 p0, 0x6

    return p0

    :cond_3
    const/4 p0, 0x5

    return p0

    :cond_4
    return v0

    :cond_5
    const/4 p0, 0x3

    return p0

    :cond_6
    return v1

    :cond_7
    return v0

    :cond_8
    const/4 p0, 0x0

    return p0
.end method

.method public static final d(Landroid/widget/RemoteViews;Lz1/f1;Lz1/z0;Ljava/util/ArrayList;)V
    .locals 3

    const-string v0, "children"

    invoke-static {p3, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v0, 0xa

    invoke-static {p3, v0}, Lfb/n;->b0(Ljava/lang/Iterable;I)Ljava/util/List;

    move-result-object p3

    check-cast p3, Ljava/lang/Iterable;

    invoke-interface {p3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p3

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    add-int/lit8 v2, v0, 0x1

    if-ltz v0, :cond_0

    check-cast v1, Lx1/l;

    invoke-virtual {p1, p2, v0}, Lz1/f1;->b(Lz1/z0;I)Lz1/f1;

    move-result-object v0

    invoke-static {p0, v0, v1}, LG5/X2;->g(Landroid/widget/RemoteViews;Lz1/f1;Lx1/l;)V

    move v0, v2

    goto :goto_0

    :cond_0
    invoke-static {}, Lfb/o;->l()V

    const/4 p0, 0x0

    throw p0

    :cond_1
    return-void
.end method

.method public static final e(LUc/w;LUc/w;Lsb/n;)Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x2

    :try_start_0
    invoke-static {v0, p2}, Ltb/z;->e(ILjava/lang/Object;)V

    invoke-interface {p2, p1, p0}, Lsb/n;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    new-instance p2, LNc/s;

    const/4 v0, 0x0

    invoke-direct {p2, v0, p1}, LNc/s;-><init>(ZLjava/lang/Throwable;)V

    move-object p1, p2

    :goto_0
    sget-object p2, Ljb/a;->COROUTINE_SUSPENDED:Ljb/a;

    if-ne p1, p2, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p0, p1}, LNc/t0;->W(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    sget-object p1, LNc/E;->e:LQ6/i;

    if-ne p0, p1, :cond_1

    goto :goto_1

    :cond_1
    instance-of p1, p0, LNc/s;

    if-nez p1, :cond_2

    invoke-static {p0}, LNc/E;->I(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    :goto_1
    return-object p2

    :cond_2
    check-cast p0, LNc/s;

    iget-object p0, p0, LNc/s;->a:Ljava/lang/Throwable;

    throw p0
.end method

.method public static final f(LK1/c;)I
    .locals 10

    iget v0, p0, LK1/c;->a:I

    const/4 v1, 0x0

    invoke-static {v0, v1}, LK1/a;->b(II)Z

    move-result v2

    const-string v3, " "

    const-string v4, "msg"

    const-string v5, "GWT:Translator"

    const/4 v6, 0x1

    const/4 v7, 0x2

    const v8, 0x800003

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {v0, v7}, LK1/a;->b(II)Z

    move-result v2

    if-eqz v2, :cond_1

    const v8, 0x800005

    goto :goto_0

    :cond_1
    invoke-static {v0, v6}, LK1/a;->b(II)Z

    move-result v2

    if-eqz v2, :cond_2

    move v8, v6

    goto :goto_0

    :cond_2
    invoke-static {v0}, LK1/a;->c(I)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v9, "Unknown horizontal alignment: "

    invoke-direct {v2, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v4}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v2, Le7/a;->a:Ljava/lang/String;

    invoke-static {v2, v3, v0, v5}, Lw2/j;->h(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    iget p0, p0, LK1/c;->b:I

    invoke-static {p0, v1}, LK1/b;->b(II)Z

    move-result v0

    const/16 v1, 0x30

    if-eqz v0, :cond_3

    goto :goto_1

    :cond_3
    invoke-static {p0, v7}, LK1/b;->b(II)Z

    move-result v0

    if-eqz v0, :cond_4

    const/16 v1, 0x50

    goto :goto_1

    :cond_4
    invoke-static {p0, v6}, LK1/b;->b(II)Z

    move-result v0

    if-eqz v0, :cond_5

    const/16 v1, 0x10

    goto :goto_1

    :cond_5
    invoke-static {p0}, LK1/b;->c(I)Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Unknown vertical alignment: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v4}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Le7/a;->a:Ljava/lang/String;

    invoke-static {v0, v3, p0, v5}, Lw2/j;->h(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    or-int p0, v8, v1

    return p0
.end method

.method public static final g(Landroid/widget/RemoteViews;Lz1/f1;Lx1/l;)V
    .locals 48

    move-object/from16 v8, p0

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    const/16 v2, 0x1f

    const/4 v4, 0x0

    const-string v5, "element"

    invoke-static {v1, v5}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v5, v1, LK1/l;

    if-eqz v5, :cond_1

    move-object v9, v1

    check-cast v9, LK1/l;

    sget-object v3, Lz1/K0;->Box:Lz1/K0;

    iget-object v10, v9, Lx1/n;->c:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v4

    iget-object v5, v9, LK1/l;->d:Lx1/r;

    iget-object v1, v9, LK1/l;->e:LK1/c;

    iget v2, v1, LK1/c;->a:I

    new-instance v6, LK1/a;

    invoke-direct {v6, v2}, LK1/a;-><init>(I)V

    new-instance v7, LK1/b;

    iget v1, v1, LK1/c;->b:I

    invoke-direct {v7, v1}, LK1/b;-><init>(I)V

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-static/range {v1 .. v7}, Lz1/H0;->b(Landroid/widget/RemoteViews;Lz1/f1;Lz1/K0;ILx1/r;LK1/a;LK1/b;)Lz1/z0;

    move-result-object v1

    iget-object v2, v9, LK1/l;->d:Lx1/r;

    invoke-static {v0, v8, v2, v1}, LG5/L2;->b(Lz1/f1;Landroid/widget/RemoteViews;Lx1/r;Lz1/z0;)V

    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lx1/l;

    invoke-interface {v3}, Lx1/l;->b()Lx1/r;

    move-result-object v4

    new-instance v5, Lz1/a;

    iget-object v6, v9, LK1/l;->e:LK1/c;

    invoke-direct {v5, v6}, Lz1/a;-><init>(LK1/c;)V

    invoke-interface {v4, v5}, Lx1/r;->d(Lx1/r;)Lx1/r;

    move-result-object v4

    invoke-interface {v3, v4}, Lx1/l;->a(Lx1/r;)V

    goto :goto_0

    :cond_0
    invoke-static {v8, v0, v1, v10}, LG5/X2;->d(Landroid/widget/RemoteViews;Lz1/f1;Lz1/z0;Ljava/util/ArrayList;)V

    goto/16 :goto_34

    :cond_1
    instance-of v5, v1, LK1/n;

    const-string v9, "setGravity"

    if-eqz v5, :cond_3

    move-object v15, v1

    check-cast v15, LK1/n;

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v1, v2, :cond_2

    iget-object v1, v15, LK1/n;->d:Lx1/r;

    invoke-static {v1}, LG5/W2;->a(Lx1/r;)Z

    move-result v1

    if-eqz v1, :cond_2

    sget-object v1, Lz1/K0;->RadioRow:Lz1/K0;

    :goto_1
    move-object v3, v1

    goto :goto_2

    :cond_2
    sget-object v1, Lz1/K0;->Row:Lz1/K0;

    goto :goto_1

    :goto_2
    iget-object v14, v15, Lx1/n;->c:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v4

    iget-object v5, v15, LK1/n;->d:Lx1/r;

    iget v1, v15, LK1/n;->f:I

    new-instance v7, LK1/b;

    invoke-direct {v7, v1}, LK1/b;-><init>(I)V

    const/4 v6, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-static/range {v1 .. v7}, Lz1/H0;->b(Landroid/widget/RemoteViews;Lz1/f1;Lz1/K0;ILx1/r;LK1/a;LK1/b;)Lz1/z0;

    move-result-object v1

    new-instance v2, LK1/c;

    iget v3, v15, LK1/n;->e:I

    iget v4, v15, LK1/n;->f:I

    invoke-direct {v2, v3, v4}, LK1/c;-><init>(II)V

    invoke-static {v2}, LG5/X2;->f(LK1/c;)I

    move-result v2

    iget v3, v1, Lz1/z0;->a:I

    invoke-virtual {v8, v3, v9, v2}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    const/16 v18, 0x1

    const v21, 0x1efff

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    const/16 v17, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object/from16 v9, p1

    move-object v5, v14

    move-object v14, v2

    move-object v2, v15

    move-wide v15, v3

    invoke-static/range {v9 .. v21}, Lz1/f1;->a(Lz1/f1;IZLjava/util/concurrent/atomic/AtomicInteger;Lz1/z0;Ljava/util/concurrent/atomic/AtomicBoolean;JIZLjava/lang/Integer;ZI)Lz1/f1;

    move-result-object v3

    iget-object v4, v2, LK1/n;->d:Lx1/r;

    invoke-static {v3, v8, v4, v1}, LG5/L2;->b(Lz1/f1;Landroid/widget/RemoteViews;Lx1/r;Lz1/z0;)V

    invoke-static {v8, v0, v1, v5}, LG5/X2;->d(Landroid/widget/RemoteViews;Lz1/f1;Lz1/z0;Ljava/util/ArrayList;)V

    iget-object v0, v2, LK1/n;->d:Lx1/r;

    invoke-static {v0}, LG5/W2;->a(Lx1/r;)Z

    move-result v0

    if-eqz v0, :cond_62

    invoke-static {v5}, LG5/X2;->b(Ljava/util/ArrayList;)V

    goto/16 :goto_34

    :cond_3
    instance-of v5, v1, LK1/m;

    if-eqz v5, :cond_5

    move-object v15, v1

    check-cast v15, LK1/m;

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v1, v2, :cond_4

    iget-object v1, v15, LK1/m;->d:Lx1/r;

    invoke-static {v1}, LG5/W2;->a(Lx1/r;)Z

    move-result v1

    if-eqz v1, :cond_4

    sget-object v1, Lz1/K0;->RadioColumn:Lz1/K0;

    :goto_3
    move-object v3, v1

    goto :goto_4

    :cond_4
    sget-object v1, Lz1/K0;->Column:Lz1/K0;

    goto :goto_3

    :goto_4
    iget-object v14, v15, Lx1/n;->c:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v4

    iget-object v5, v15, LK1/m;->d:Lx1/r;

    iget v1, v15, LK1/m;->f:I

    new-instance v6, LK1/a;

    invoke-direct {v6, v1}, LK1/a;-><init>(I)V

    const/4 v7, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-static/range {v1 .. v7}, Lz1/H0;->b(Landroid/widget/RemoteViews;Lz1/f1;Lz1/K0;ILx1/r;LK1/a;LK1/b;)Lz1/z0;

    move-result-object v1

    new-instance v2, LK1/c;

    iget v3, v15, LK1/m;->f:I

    iget v4, v15, LK1/m;->e:I

    invoke-direct {v2, v3, v4}, LK1/c;-><init>(II)V

    invoke-static {v2}, LG5/X2;->f(LK1/c;)I

    move-result v2

    iget v3, v1, Lz1/z0;->a:I

    invoke-virtual {v8, v3, v9, v2}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    const/16 v18, 0x1

    const v21, 0x1efff

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    const/16 v17, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object/from16 v9, p1

    move-object v5, v14

    move-object v14, v2

    move-object v2, v15

    move-wide v15, v3

    invoke-static/range {v9 .. v21}, Lz1/f1;->a(Lz1/f1;IZLjava/util/concurrent/atomic/AtomicInteger;Lz1/z0;Ljava/util/concurrent/atomic/AtomicBoolean;JIZLjava/lang/Integer;ZI)Lz1/f1;

    move-result-object v3

    iget-object v4, v2, LK1/m;->d:Lx1/r;

    invoke-static {v3, v8, v4, v1}, LG5/L2;->b(Lz1/f1;Landroid/widget/RemoteViews;Lx1/r;Lz1/z0;)V

    invoke-static {v8, v0, v1, v5}, LG5/X2;->d(Landroid/widget/RemoteViews;Lz1/f1;Lz1/z0;Ljava/util/ArrayList;)V

    iget-object v0, v2, LK1/m;->d:Lx1/r;

    invoke-static {v0}, LG5/W2;->a(Lx1/r;)Z

    move-result v0

    if-eqz v0, :cond_62

    invoke-static {v5}, LG5/X2;->b(Ljava/util/ArrayList;)V

    goto/16 :goto_34

    :cond_5
    instance-of v5, v1, Le2/b;

    const-string v6, "msg"

    const-string v9, " "

    if-eqz v5, :cond_41

    check-cast v1, Le2/b;

    sget-object v5, Le2/f;->b:Le2/f;

    invoke-static {v4, v5}, Ltb/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    sget-object v5, Lz1/K0;->Row:Lz1/K0;

    goto :goto_5

    :cond_6
    sget-object v5, Le2/f;->c:Le2/f;

    invoke-static {v4, v5}, Ltb/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    sget-object v5, Lz1/K0;->Row:Lz1/K0;

    goto :goto_5

    :cond_7
    sget-object v5, Le2/f;->d:Le2/f;

    invoke-static {v4, v5}, Ltb/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    sget-object v5, Lz1/K0;->Row:Lz1/K0;

    goto :goto_5

    :cond_8
    sget-object v5, Le2/f;->e:Le2/f;

    invoke-static {v4, v5}, Ltb/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    sget-object v5, Lz1/K0;->Row:Lz1/K0;

    goto :goto_5

    :cond_9
    sget-object v5, Le2/f;->f:Le2/f;

    invoke-static {v4, v5}, Ltb/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a

    sget-object v5, Lz1/K0;->Row:Lz1/K0;

    goto :goto_5

    :cond_a
    sget-object v5, Lz1/K0;->Row:Lz1/K0;

    :goto_5
    iget-object v5, v1, Le2/b;->b:Le2/l;

    if-eqz v5, :cond_b

    new-instance v10, Le2/g;

    iget v5, v5, Le2/l;->f:I

    invoke-direct {v10, v5}, Le2/g;-><init>(I)V

    goto :goto_6

    :cond_b
    move-object v10, v4

    :goto_6
    const/4 v5, 0x5

    if-nez v10, :cond_c

    goto :goto_7

    :cond_c
    iget v10, v10, Le2/g;->a:I

    if-ne v10, v5, :cond_d

    sget-object v10, Lz1/K0;->Text:Lz1/K0;

    goto :goto_8

    :cond_d
    :goto_7
    sget-object v10, Lz1/K0;->TextFirstStrong:Lz1/K0;

    :goto_8
    iget-object v11, v1, Le2/b;->f:Lx1/r;

    invoke-static {v8, v0, v10, v11}, Lz1/H0;->c(Landroid/widget/RemoteViews;Lz1/f1;Lz1/K0;Lx1/r;)Lz1/z0;

    move-result-object v10

    iget-object v11, v1, Le2/b;->a:Ljava/lang/String;

    iget-object v12, v1, Le2/b;->b:Le2/l;

    iget v13, v1, Le2/b;->c:I

    iget v14, v1, Le2/b;->d:F

    iget v15, v1, Le2/b;->e:I

    const-string v4, "text"

    invoke-static {v11, v4}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const v4, 0x7fffffff

    iget v5, v10, Lz1/z0;->a:I

    if-eq v13, v4, :cond_e

    const-string v4, "setMaxLines"

    invoke-virtual {v8, v5, v4, v13}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    :cond_e
    if-nez v12, :cond_10

    if-nez v15, :cond_f

    const-string v2, "setText"

    invoke-virtual {v8, v5, v2, v15}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    goto :goto_9

    :cond_f
    invoke-virtual {v8, v5, v11}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    :goto_9
    move-object v0, v1

    move-object/from16 v19, v10

    goto/16 :goto_25

    :cond_10
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    const-string v13, "getDeclaredMethods(...)"

    const-string v2, "GWT:TextTranslator"

    iget-object v7, v0, Lz1/f1;->a:Landroid/content/Context;

    iget-object v3, v12, Le2/l;->b:LH0/m;

    if-eqz v3, :cond_1a

    move-object/from16 v19, v10

    move-object/from16 v20, v11

    iget-wide v10, v3, LH0/m;->a:J

    const-wide v22, 0xff00000000L

    and-long v22, v10, v22

    const-wide v24, 0x100000000L

    cmp-long v3, v22, v24

    if-nez v3, :cond_19

    const-string v3, "getResources(...)"

    move-object/from16 v21, v1

    iget-object v1, v12, Le2/l;->i:Le2/a;

    move/from16 v22, v15

    iget v15, v12, Le2/l;->j:I

    if-eqz v15, :cond_17

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-static {v10, v3}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Le2/a;->a()I

    move-result v1

    :try_start_0
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v3

    invoke-static {v3, v13}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    array-length v11, v3
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object/from16 v23, v13

    const/4 v13, 0x0

    :goto_a
    if-ge v13, v11, :cond_12

    move/from16 v24, v11

    :try_start_1
    aget-object v11, v3, v13

    move-object/from16 v25, v3

    invoke-virtual {v11}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v3
    :try_end_1
    .catch Ljava/util/NoSuchElementException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object/from16 v26, v6

    :try_start_2
    const-string v6, "hidden_semSetTextViewTextSizeResource"

    invoke-static {v3, v6}, Ltb/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3
    :try_end_2
    .catch Ljava/util/NoSuchElementException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v3, :cond_11

    const/4 v3, 0x1

    :try_start_3
    invoke-virtual {v11, v3}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    goto :goto_b

    :catchall_0
    move-exception v0

    move-object v4, v11

    goto :goto_e

    :cond_11
    const/4 v3, 0x1

    add-int/2addr v13, v3

    move/from16 v11, v24

    move-object/from16 v3, v25

    move-object/from16 v6, v26

    goto :goto_a

    :catchall_1
    move-exception v0

    const/4 v4, 0x0

    goto :goto_e

    :catch_0
    move-object/from16 v26, v6

    goto :goto_d

    :cond_12
    move-object/from16 v26, v6

    const/4 v11, 0x0

    :goto_b
    if-eqz v11, :cond_13

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-static {v14}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    filled-new-array {v3, v6, v13, v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v11, v8, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/util/NoSuchElementException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_13
    if-nez v11, :cond_1b

    invoke-virtual {v10, v15}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v0

    const/4 v3, 0x2

    if-ne v1, v3, :cond_14

    :goto_c
    invoke-static {v8, v10, v5, v0, v14}, LG5/Z2;->e(Landroid/widget/RemoteViews;Landroid/content/res/Resources;IFF)V

    goto/16 :goto_10

    :cond_14
    const/4 v1, 0x1

    invoke-virtual {v8, v5, v1, v0}, Landroid/widget/RemoteViews;->setTextViewTextSize(IIF)V

    goto/16 :goto_10

    :catch_1
    move-object/from16 v26, v6

    move-object/from16 v23, v13

    :catch_2
    :goto_d
    :try_start_4
    const-string v0, "hidden_semSetTextViewTextSizeResource isn\'t supported."

    sget-object v3, Le7/a;->a:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    invoke-virtual {v10, v15}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v0

    const/4 v3, 0x2

    if-ne v1, v3, :cond_14

    goto :goto_c

    :goto_e
    if-nez v4, :cond_16

    invoke-virtual {v10, v15}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v2

    const/4 v6, 0x2

    if-ne v1, v6, :cond_15

    invoke-static {v8, v10, v5, v2, v14}, LG5/Z2;->e(Landroid/widget/RemoteViews;Landroid/content/res/Resources;IFF)V

    goto :goto_f

    :cond_15
    const/4 v1, 0x1

    invoke-virtual {v8, v5, v1, v2}, Landroid/widget/RemoteViews;->setTextViewTextSize(IIF)V

    :cond_16
    :goto_f
    throw v0

    :cond_17
    move-object/from16 v26, v6

    move-object/from16 v23, v13

    const/4 v6, 0x2

    invoke-virtual {v1}, Le2/a;->a()I

    move-result v0

    if-ne v0, v6, :cond_18

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0, v3}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v10, v11}, LH0/m;->a(J)F

    move-result v1

    invoke-static {v8, v0, v5, v1, v14}, LG5/Z2;->e(Landroid/widget/RemoteViews;Landroid/content/res/Resources;IFF)V

    goto :goto_10

    :cond_18
    invoke-static {v10, v11}, LH0/m;->a(J)F

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {v8, v5, v1, v0}, Landroid/widget/RemoteViews;->setTextViewTextSize(IIF)V

    goto :goto_10

    :cond_19
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Only Sp is currently supported for font sizes"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1a
    move-object/from16 v21, v1

    move-object/from16 v26, v6

    move-object/from16 v19, v10

    move-object/from16 v20, v11

    move-object/from16 v23, v13

    move/from16 v22, v15

    :cond_1b
    :goto_10
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, v12, Le2/l;->e:Le2/c;

    if-eqz v1, :cond_1c

    new-instance v3, Landroid/text/style/TypefaceSpan;

    iget-object v6, v1, Le2/c;->a:Ljava/lang/String;

    invoke-direct {v3, v6}, Landroid/text/style/TypefaceSpan;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v3, "TypefaceSpan"

    invoke-virtual {v4, v3, v6}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1c
    iget-object v3, v12, Le2/l;->c:Le2/d;

    if-eqz v3, :cond_22

    iget v3, v3, Le2/d;->a:I

    const/16 v6, 0x2bc

    invoke-static {v3, v6}, Le2/d;->a(II)Z

    move-result v6

    if-eqz v6, :cond_1d

    const v1, 0x7f15024b

    goto :goto_11

    :cond_1d
    const/16 v6, 0x258

    invoke-static {v3, v6}, Le2/d;->a(II)Z

    move-result v6

    if-eqz v6, :cond_20

    sget-object v3, Le2/c;->d:Le2/c;

    invoke-static {v1, v3}, Ltb/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1e

    const v1, 0x7f150251

    goto :goto_11

    :cond_1e
    sget-object v3, Le2/c;->c:Le2/c;

    invoke-static {v1, v3}, Ltb/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1f

    const v1, 0x7f150250

    goto :goto_11

    :cond_1f
    const v1, 0x7f15024f

    goto :goto_11

    :cond_20
    const/16 v1, 0x1f4

    invoke-static {v3, v1}, Le2/d;->a(II)Z

    move-result v1

    if-eqz v1, :cond_21

    const v1, 0x7f15024d

    goto :goto_11

    :cond_21
    const v1, 0x7f15024e

    :goto_11
    new-instance v3, Landroid/text/style/TextAppearanceSpan;

    invoke-direct {v3, v7, v1}, Landroid/text/style/TextAppearanceSpan;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v3, "TextAppearanceSpan"

    invoke-virtual {v4, v3, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    :cond_22
    sget-object v1, LH1/c;->a:LH1/c;

    const/16 v3, 0x30

    const/4 v6, 0x3

    iget-object v10, v12, Le2/l;->d:Le2/e;

    if-eqz v10, :cond_2b

    sget v11, Landroid/os/Build$VERSION;->SDK_INT:I

    iget v13, v10, Le2/e;->a:I

    const/16 v14, 0x1f

    if-lt v11, v14, :cond_23

    invoke-static {v13}, LG5/Z2;->f(I)I

    move-result v11

    or-int/2addr v11, v3

    invoke-virtual {v1, v8, v5, v11}, LH1/c;->a(Landroid/widget/RemoteViews;II)V

    goto/16 :goto_14

    :cond_23
    new-instance v11, Landroid/text/style/AlignmentSpan$Standard;

    invoke-static {v13, v6}, Le2/e;->a(II)Z

    move-result v14

    if-eqz v14, :cond_24

    sget-object v13, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    move-object/from16 v14, p1

    :goto_12
    move-object v3, v13

    move-object/from16 v13, v26

    goto :goto_13

    :cond_24
    const/4 v14, 0x1

    invoke-static {v13, v14}, Le2/e;->a(II)Z

    move-result v15

    move-object/from16 v14, p1

    iget-boolean v3, v14, Lz1/f1;->c:Z

    if-eqz v15, :cond_26

    if-eqz v3, :cond_25

    sget-object v13, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    goto :goto_12

    :cond_25
    sget-object v13, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    goto :goto_12

    :cond_26
    const/4 v15, 0x2

    invoke-static {v13, v15}, Le2/e;->a(II)Z

    move-result v25

    if-eqz v25, :cond_28

    if-eqz v3, :cond_27

    sget-object v13, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    goto :goto_12

    :cond_27
    sget-object v13, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    goto :goto_12

    :cond_28
    const/4 v3, 0x4

    invoke-static {v13, v3}, Le2/e;->a(II)Z

    move-result v3

    if-eqz v3, :cond_29

    sget-object v13, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    goto :goto_12

    :cond_29
    const/4 v3, 0x5

    invoke-static {v13, v3}, Le2/e;->a(II)Z

    move-result v3

    if-eqz v3, :cond_2a

    sget-object v13, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    goto :goto_12

    :cond_2a
    invoke-static {v13}, Le2/e;->b(I)Ljava/lang/String;

    move-result-object v3

    const-string v13, "Unknown TextAlign: "

    invoke-virtual {v13, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v13, v26

    invoke-static {v3, v13}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v15, Le7/a;->a:Ljava/lang/String;

    invoke-static {v15, v9, v3, v2}, Lw2/j;->h(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v3, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    :goto_13
    invoke-direct {v11, v3}, Landroid/text/style/AlignmentSpan$Standard;-><init>(Landroid/text/Layout$Alignment;)V

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_15

    :cond_2b
    :goto_14
    move-object/from16 v14, p1

    move-object/from16 v13, v26

    :goto_15
    iget-object v3, v12, Le2/l;->k:Le2/m;

    if-eqz v3, :cond_30

    sget v11, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v15, 0x1f

    if-lt v11, v15, :cond_30

    iget v3, v3, Le2/m;->a:I

    const/4 v11, 0x1

    invoke-static {v3, v11}, Le2/m;->a(II)Z

    move-result v15

    if-eqz v15, :cond_2d

    :cond_2c
    const/16 v3, 0x30

    goto :goto_16

    :cond_2d
    const/4 v11, 0x2

    invoke-static {v3, v11}, Le2/m;->a(II)Z

    move-result v11

    if-eqz v11, :cond_2e

    const/16 v3, 0x10

    goto :goto_16

    :cond_2e
    invoke-static {v3, v6}, Le2/m;->a(II)Z

    move-result v3

    if-eqz v3, :cond_2c

    const/16 v3, 0x50

    :goto_16
    if-eqz v10, :cond_2f

    iget v6, v10, Le2/e;->a:I

    invoke-static {v6}, LG5/Z2;->f(I)I

    move-result v6

    or-int/2addr v3, v6

    :cond_2f
    invoke-virtual {v1, v8, v5, v3}, LH1/c;->a(Landroid/widget/RemoteViews;II)V

    :cond_30
    iget v1, v12, Le2/l;->l:I

    if-eqz v1, :cond_32

    if-eqz v22, :cond_31

    move/from16 v3, v22

    const/4 v4, 0x0

    invoke-static {v8, v5, v3, v4}, LG5/Z2;->d(Landroid/widget/RemoteViews;IILandroid/os/Bundle;)V

    goto :goto_17

    :cond_31
    move-object/from16 v6, v20

    invoke-virtual {v8, v5, v6}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    :goto_17
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lfb/v;->a:Lfb/v;

    const-string v3, "hidden_semSetTextAppearance"

    invoke-static {v8, v3, v1, v0}, Lfb/F;->b(Landroid/widget/RemoteViews;Ljava/lang/String;Ljava/util/List;[Ljava/lang/Object;)V

    move-object/from16 p2, v2

    :goto_18
    const/4 v6, 0x0

    goto/16 :goto_1f

    :cond_32
    move-object/from16 v6, v20

    move/from16 v3, v22

    if-eqz v3, :cond_36

    const-string v1, "hidden_semSetTextViewTextResource"

    const-string v10, "isValidMethod: method is null, methodName="

    const-string v11, "GWT:Reflections"

    :try_start_5
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v15
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    move-object/from16 v14, v23

    :try_start_6
    invoke-static {v15, v14}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    move-object/from16 v23, v14

    :try_start_7
    array-length v14, v15
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    move-object/from16 p2, v2

    const/4 v2, 0x0

    :goto_19
    if-ge v2, v14, :cond_34

    :try_start_8
    aget-object v18, v15, v2

    move/from16 v20, v14

    invoke-virtual/range {v18 .. v18}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14, v1}, Ltb/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v14
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_5
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    if-eqz v14, :cond_33

    const/4 v2, 0x1

    goto :goto_1a

    :cond_33
    const/4 v14, 0x1

    add-int/2addr v2, v14

    move/from16 v14, v20

    goto :goto_19

    :catchall_2
    move-exception v0

    goto :goto_1b

    :cond_34
    const/4 v2, 0x0

    :goto_1a
    if-nez v2, :cond_35

    invoke-virtual {v10, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v13}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v10, Le7/a;->a:Ljava/lang/String;

    invoke-static {v10, v9, v1, v11}, Lw2/j;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1d

    :catch_3
    move-object/from16 p2, v2

    goto :goto_1c

    :catch_4
    move-object/from16 p2, v2

    move-object/from16 v23, v14

    goto :goto_1c

    :goto_1b
    invoke-virtual {v10, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v13}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v2, Le7/a;->a:Ljava/lang/String;

    invoke-static {v2, v9, v1, v11}, Lw2/j;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    :catch_5
    :goto_1c
    invoke-virtual {v10, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v13}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v2, Le7/a;->a:Ljava/lang/String;

    invoke-static {v2, v9, v1, v11}, Lw2/j;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    :cond_35
    :goto_1d
    if-eqz v2, :cond_37

    invoke-static {v8, v5, v3, v4}, LG5/Z2;->d(Landroid/widget/RemoteViews;IILandroid/os/Bundle;)V

    goto :goto_18

    :cond_36
    move-object/from16 p2, v2

    :cond_37
    new-instance v1, Landroid/text/SpannableString;

    invoke-direct {v1, v6}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    invoke-virtual {v1}, Landroid/text/SpannableString;->length()I

    move-result v2

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_38

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/text/ParcelableSpan;

    const/16 v4, 0x11

    const/4 v6, 0x0

    invoke-virtual {v1, v3, v6, v2, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    goto :goto_1e

    :cond_38
    const/4 v6, 0x0

    invoke-virtual {v8, v5, v1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    :goto_1f
    iget-object v0, v12, Le2/l;->a:Lf2/a;

    instance-of v1, v0, Lf2/i;

    if-eqz v1, :cond_39

    check-cast v0, Lf2/i;

    iget-wide v0, v0, Lf2/i;->a:J

    invoke-static {v0, v1}, Ls0/e;->e(J)I

    move-result v0

    invoke-virtual {v8, v5, v0}, Landroid/widget/RemoteViews;->setTextColor(II)V

    :goto_20
    move-object/from16 v2, p2

    goto :goto_21

    :cond_39
    instance-of v1, v0, Lf2/j;

    const-string v2, "setTextColor"

    if-eqz v1, :cond_3b

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1f

    if-lt v1, v3, :cond_3a

    check-cast v0, Lf2/j;

    iget v0, v0, Lf2/j;->a:I

    invoke-static {v8, v5, v2, v0}, Landroidx/core/widget/m;->g(Landroid/widget/RemoteViews;ILjava/lang/String;I)V

    goto :goto_20

    :cond_3a
    check-cast v0, Lf2/j;

    invoke-virtual {v0, v7}, Lf2/j;->a(Landroid/content/Context;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ls0/e;->e(J)I

    move-result v0

    invoke-virtual {v8, v5, v0}, Landroid/widget/RemoteViews;->setTextColor(II)V

    goto :goto_20

    :cond_3b
    instance-of v1, v0, LJ1/a;

    if-eqz v1, :cond_3d

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1f

    if-lt v1, v3, :cond_3c

    check-cast v0, LJ1/a;

    iget-wide v3, v0, LJ1/a;->a:J

    invoke-static {v3, v4}, Ls0/e;->e(J)I

    move-result v1

    iget-wide v3, v0, LJ1/a;->b:J

    invoke-static {v3, v4}, Ls0/e;->e(J)I

    move-result v0

    invoke-static {v8, v5, v2, v1, v0}, Landroidx/core/widget/m;->f(Landroid/widget/RemoteViews;ILjava/lang/String;II)V

    goto :goto_20

    :cond_3c
    check-cast v0, LJ1/a;

    invoke-virtual {v0, v7}, LJ1/a;->a(Landroid/content/Context;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ls0/e;->e(J)I

    move-result v0

    invoke-virtual {v8, v5, v0}, Landroid/widget/RemoteViews;->setTextColor(II)V

    goto :goto_20

    :cond_3d
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unexpected text color: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v13}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Le7/a;->a:Ljava/lang/String;

    move-object/from16 v2, p2

    invoke-static {v1, v9, v0, v2}, Lw2/j;->h(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_21
    sget-boolean v0, LI1/a;->a:Z

    if-eqz v0, :cond_40

    iget-boolean v0, v12, Le2/l;->g:Z

    if-eqz v0, :cond_40

    iget-object v0, v12, Le2/l;->h:Le2/k;

    :try_start_9
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v1

    move-object/from16 v3, v23

    invoke-static {v1, v3}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    array-length v3, v1

    move v15, v6

    :goto_22
    if-ge v15, v3, :cond_3f

    aget-object v4, v1, v15

    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "hidden_semSetTextViewShadow"

    invoke-static {v6, v7}, Ltb/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3e

    const/4 v6, 0x1

    invoke-virtual {v4, v6}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    goto :goto_23

    :cond_3e
    const/4 v6, 0x1

    add-int/2addr v15, v6

    goto :goto_22

    :cond_3f
    const/4 v4, 0x0

    :goto_23
    if-eqz v4, :cond_40

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v3, v0, Le2/k;->a:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    iget v5, v0, Le2/k;->b:F

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    iget v6, v0, Le2/k;->c:F

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    iget-wide v9, v0, Le2/k;->d:J

    invoke-static {v9, v10}, Ls0/e;->e(J)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v1, v3, v5, v6, v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v4, v8, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_9
    .catch Ljava/util/NoSuchElementException; {:try_start_9 .. :try_end_9} :catch_6

    goto :goto_24

    :catch_6
    sget-object v0, Le7/a;->a:Ljava/lang/String;

    const-string v1, " hidden_semSetTextViewShadow isn\'t supported."

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_40
    :goto_24
    move-object/from16 v0, v21

    :goto_25
    iget-object v0, v0, Le2/b;->f:Lx1/r;

    move-object/from16 v2, p1

    move-object/from16 v1, v19

    invoke-static {v2, v8, v0, v1}, LG5/L2;->b(Lz1/f1;Landroid/widget/RemoteViews;Lx1/r;Lz1/z0;)V

    goto/16 :goto_34

    :cond_41
    move-object v2, v0

    move-object v13, v6

    const/4 v6, 0x0

    instance-of v0, v1, LB1/b;

    if-eqz v0, :cond_43

    move-object v0, v1

    check-cast v0, LB1/b;

    iget-object v1, v0, Lx1/n;->c:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_42

    iget-object v0, v0, LB1/b;->d:LK1/c;

    sget-object v3, LK1/c;->d:LK1/c;

    invoke-static {v0, v3}, Ltb/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_42

    invoke-static {v1}, Lfb/n;->C(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lx1/l;

    invoke-static {v8, v2, v0}, LG5/X2;->g(Landroid/widget/RemoteViews;Lz1/f1;Lx1/l;)V

    goto/16 :goto_34

    :cond_42
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Lazy list items can only have a single child align at the center start of the view. The normalization of the composition tree failed."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_43
    instance-of v0, v1, LB1/a;

    if-eqz v0, :cond_4d

    move-object v0, v1

    check-cast v0, LB1/a;

    sget-object v1, Lz1/K0;->List:Lz1/K0;

    iget-object v3, v0, LB1/a;->d:Lx1/r;

    invoke-static {v8, v2, v1, v3}, Lz1/H0;->c(Landroid/widget/RemoteViews;Lz1/f1;Lz1/K0;Lx1/r;)Lz1/z0;

    move-result-object v7

    const/16 v19, 0x0

    const/16 v20, 0x1

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const-wide/16 v15, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const v21, 0x17fff

    move-object/from16 v9, p1

    move v3, v6

    invoke-static/range {v9 .. v21}, Lz1/f1;->a(Lz1/f1;IZLjava/util/concurrent/atomic/AtomicInteger;Lz1/z0;Ljava/util/concurrent/atomic/AtomicBoolean;JIZLjava/lang/Integer;ZI)Lz1/f1;

    move-result-object v9

    iget-boolean v1, v9, Lz1/f1;->f:Z

    if-nez v1, :cond_4c

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const v2, 0xb000008

    iget-object v4, v9, Lz1/f1;->a:Landroid/content/Context;

    const/4 v5, 0x0

    invoke-static {v4, v3, v1, v2, v5}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;)Landroid/app/PendingIntent;

    move-result-object v1

    iget v2, v7, Lz1/z0;->a:I

    invoke-virtual {v8, v2, v1}, Landroid/widget/RemoteViews;->setPendingIntentTemplate(ILandroid/app/PendingIntent;)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    const/16 v31, 0x0

    const v34, 0x1fbdf

    const/16 v23, 0x0

    const/16 v24, 0x1

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const-wide/16 v28, 0x0

    const/16 v32, 0x0

    const/16 v33, 0x0

    move-object/from16 v22, v9

    move/from16 v30, v2

    invoke-static/range {v22 .. v34}, Lz1/f1;->a(Lz1/f1;IZLjava/util/concurrent/atomic/AtomicInteger;Lz1/z0;Ljava/util/concurrent/atomic/AtomicBoolean;JIZLjava/lang/Integer;ZI)Lz1/f1;

    move-result-object v2

    iget-object v5, v0, Lx1/n;->c:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v15, v3

    move/from16 v43, v15

    :goto_26
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_48

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    const/4 v10, 0x1

    add-int/lit8 v11, v43, 0x1

    if-ltz v43, :cond_47

    check-cast v6, Lx1/l;

    const-string v10, "null cannot be cast to non-null type androidx.glance.appwidget.lazy.EmittableLazyListItem"

    invoke-static {v6, v10}, Ltb/k;->d(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v10, v6

    check-cast v10, LB1/b;

    iget-wide v12, v10, LB1/b;->f:J

    new-instance v10, Ljava/util/concurrent/atomic/AtomicInteger;

    const/high16 v14, 0x100000

    invoke-direct {v10, v14}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    const/16 v44, 0x0

    const v47, 0x1fbbf

    const/16 v36, 0x0

    const/16 v37, 0x0

    const/16 v39, 0x0

    const/16 v40, 0x0

    const-wide/16 v41, 0x0

    const/16 v45, 0x0

    const/16 v46, 0x0

    move-object/from16 v35, v2

    move-object/from16 v38, v10

    invoke-static/range {v35 .. v47}, Lz1/f1;->a(Lz1/f1;IZLjava/util/concurrent/atomic/AtomicInteger;Lz1/z0;Ljava/util/concurrent/atomic/AtomicBoolean;JIZLjava/lang/Integer;ZI)Lz1/f1;

    move-result-object v10

    invoke-static {v6}, LG5/o3;->d(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v14

    iget-object v3, v9, Lz1/f1;->d:Lz1/E0;

    if-eqz v3, :cond_44

    invoke-virtual {v3, v6}, Lz1/E0;->a(Lx1/l;)I

    move-result v3

    goto :goto_27

    :cond_44
    const/4 v3, -0x1

    :goto_27
    invoke-static {v10, v14, v3}, LG5/X2;->h(Lz1/f1;Ljava/util/List;I)Landroid/widget/RemoteViews;

    move-result-object v3

    const-string v6, "view"

    invoke-static {v3, v6}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-nez v15, :cond_46

    const-wide/high16 v14, -0x4000000000000000L    # -2.0

    cmp-long v3, v12, v14

    if-lez v3, :cond_45

    goto :goto_28

    :cond_45
    const/4 v15, 0x0

    goto :goto_29

    :cond_46
    :goto_28
    const/4 v15, 0x1

    :goto_29
    move/from16 v43, v11

    const/4 v3, 0x0

    goto :goto_26

    :cond_47
    invoke-static {}, Lfb/o;->l()V

    const/4 v1, 0x0

    throw v1

    :cond_48
    sget v2, Lz1/H0;->c:I

    const/4 v3, 0x1

    if-ge v2, v3, :cond_4a

    new-instance v2, Ljava/util/ArrayList;

    const/16 v3, 0xa

    invoke-static {v4, v3}, Lfb/p;->m(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2a
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_49

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/widget/RemoteViews;

    invoke-virtual {v5}, Landroid/widget/RemoteViews;->getLayoutId()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2a

    :cond_49
    invoke-static {v2}, Lfb/n;->y(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v2

    check-cast v2, Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->size()I

    move-result v2

    :cond_4a
    new-instance v6, Lz1/O0;

    invoke-static {v1}, Lfb/n;->h0(Ljava/util/List;)[J

    move-result-object v1

    const/4 v3, 0x0

    new-array v3, v3, [Landroid/widget/RemoteViews;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/widget/RemoteViews;

    const/4 v4, 0x1

    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-direct {v6, v1, v3, v15, v2}, Lz1/O0;-><init>([J[Landroid/widget/RemoteViews;ZI)V

    sget-wide v1, LH0/g;->c:J

    iget-wide v3, v9, Lz1/f1;->j:J

    cmp-long v1, v3, v1

    if-eqz v1, :cond_4b

    invoke-static {v3, v4}, LH0/g;->b(J)F

    move-result v1

    invoke-static {v1}, LH0/e;->c(F)Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v4}, LH0/g;->a(J)F

    move-result v2

    invoke-static {v2}, LH0/e;->c(F)Ljava/lang/String;

    move-result-object v2

    const-string v3, "x"

    invoke-static {v1, v3, v2}, Lt/b;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_2b
    move-object v5, v1

    goto :goto_2c

    :cond_4b
    const-string v1, "Unspecified"

    goto :goto_2b

    :goto_2c
    iget-object v2, v9, Lz1/f1;->a:Landroid/content/Context;

    iget v3, v9, Lz1/f1;->b:I

    iget v4, v7, Lz1/z0;->a:I

    move-object/from16 v1, p0

    invoke-static/range {v1 .. v6}, Lz1/v0;->a(Landroid/widget/RemoteViews;Landroid/content/Context;IILjava/lang/String;Lz1/O0;)V

    iget-object v0, v0, LB1/a;->d:Lx1/r;

    invoke-static {v9, v8, v0, v7}, LG5/L2;->b(Lz1/f1;Landroid/widget/RemoteViews;Lx1/r;Lz1/z0;)V

    goto/16 :goto_34

    :cond_4c
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Glance does not support nested list views."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4d
    instance-of v0, v1, LK1/o;

    if-eqz v0, :cond_4e

    move-object v0, v1

    check-cast v0, LK1/o;

    sget-object v1, Lz1/K0;->Frame:Lz1/K0;

    iget-object v3, v0, LK1/o;->a:Lx1/r;

    invoke-static {v8, v2, v1, v3}, Lz1/H0;->c(Landroid/widget/RemoteViews;Lz1/f1;Lz1/K0;Lx1/r;)Lz1/z0;

    move-result-object v1

    iget-object v0, v0, LK1/o;->a:Lx1/r;

    invoke-static {v2, v8, v0, v1}, LG5/L2;->b(Lz1/f1;Landroid/widget/RemoteViews;Lx1/r;Lz1/z0;)V

    goto/16 :goto_34

    :cond_4e
    instance-of v0, v1, Lx1/m;

    if-eqz v0, :cond_5f

    instance-of v0, v1, Lz1/J;

    sget-object v3, Lf2/g;->a:Lf2/g;

    const-string v4, "setAdjustViewBounds"

    const-string v5, "An unsupported ImageProvider type was used."

    const-string v6, "Unsupported ContentScale user: "

    if-nez v0, :cond_5e

    move-object v0, v1

    check-cast v0, Lx1/m;

    invoke-static {v0}, LG5/z2;->c(Lx1/m;)Z

    move-result v1

    iget v7, v0, Lx1/m;->d:I

    const/4 v10, 0x0

    invoke-static {v7, v10}, LK1/k;->a(II)Z

    move-result v11

    if-eqz v11, :cond_50

    if-eqz v1, :cond_4f

    sget-object v1, Lz1/K0;->ImageCropDecorative:Lz1/K0;

    goto :goto_2d

    :cond_4f
    sget-object v1, Lz1/K0;->ImageCrop:Lz1/K0;

    goto :goto_2d

    :cond_50
    const/4 v10, 0x1

    invoke-static {v7, v10}, LK1/k;->a(II)Z

    move-result v11

    if-eqz v11, :cond_52

    if-eqz v1, :cond_51

    sget-object v1, Lz1/K0;->ImageFitDecorative:Lz1/K0;

    goto :goto_2d

    :cond_51
    sget-object v1, Lz1/K0;->ImageFit:Lz1/K0;

    goto :goto_2d

    :cond_52
    const/4 v10, 0x2

    invoke-static {v7, v10}, LK1/k;->a(II)Z

    move-result v7

    if-eqz v7, :cond_54

    if-eqz v1, :cond_53

    sget-object v1, Lz1/K0;->ImageFillBoundsDecorative:Lz1/K0;

    goto :goto_2d

    :cond_53
    sget-object v1, Lz1/K0;->ImageFillBounds:Lz1/K0;

    goto :goto_2d

    :cond_54
    iget v1, v0, Lx1/m;->d:I

    invoke-static {v1}, LK1/k;->b(I)Ljava/lang/String;

    move-result-object v1

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v13}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v6, Le7/a;->a:Ljava/lang/String;

    const-string v7, "GWT:ImageTranslator"

    invoke-static {v6, v9, v1, v7}, Lw2/j;->h(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lz1/K0;->ImageFit:Lz1/K0;

    :goto_2d
    invoke-virtual {v0}, Lx1/m;->b()Lx1/r;

    move-result-object v6

    invoke-static {v8, v2, v1, v6}, Lz1/H0;->c(Landroid/widget/RemoteViews;Lz1/f1;Lz1/K0;Lx1/r;)Lz1/z0;

    move-result-object v1

    iget-object v6, v0, Lx1/m;->b:Lx1/u;

    instance-of v7, v6, Lx1/a;

    iget v9, v1, Lz1/z0;->a:I

    if-eqz v7, :cond_55

    check-cast v6, Lx1/a;

    iget v5, v6, Lx1/a;->a:I

    invoke-virtual {v8, v9, v5}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    goto :goto_2e

    :cond_55
    instance-of v7, v6, Lx1/f;

    if-eqz v7, :cond_5d

    check-cast v6, Lx1/f;

    iget-object v5, v6, Lx1/f;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v8, v9, v5}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    :goto_2e
    iget-object v5, v0, Lx1/m;->c:Lx1/v;

    if-eqz v5, :cond_58

    const-string v6, "colorFilterParams"

    invoke-static {v5, v6}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v6, v5, Lx1/v;

    if-eqz v6, :cond_57

    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    iget v7, v1, Lz1/z0;->a:I

    iget-object v5, v5, Lx1/v;->a:Lf2/a;

    const/16 v10, 0x1f

    if-lt v6, v10, :cond_56

    sget-object v6, LH1/b;->a:LH1/b;

    invoke-virtual {v6, v2, v8, v5, v7}, LH1/b;->a(Lz1/f1;Landroid/widget/RemoteViews;Lf2/a;I)V

    goto :goto_2f

    :cond_56
    iget-object v6, v2, Lz1/f1;->a:Landroid/content/Context;

    invoke-interface {v5, v6}, Lf2/a;->a(Landroid/content/Context;)J

    move-result-wide v5

    invoke-static {v5, v6}, Ls0/e;->e(J)I

    move-result v5

    const-string v6, "setColorFilter"

    invoke-virtual {v8, v7, v6, v5}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    goto :goto_2f

    :cond_57
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "An unsupported ColorFilter was used."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_58
    :goto_2f
    invoke-virtual {v0}, Lx1/m;->b()Lx1/r;

    move-result-object v5

    invoke-static {v2, v8, v5, v1}, LG5/L2;->b(Lz1/f1;Landroid/widget/RemoteViews;Lx1/r;Lz1/z0;)V

    iget v1, v0, Lx1/m;->d:I

    const/4 v2, 0x1

    invoke-static {v1, v2}, LK1/k;->a(II)Z

    move-result v1

    if-eqz v1, :cond_5c

    invoke-virtual {v0}, Lx1/m;->b()Lx1/r;

    move-result-object v1

    sget-object v2, LH1/a;->d:LH1/a;

    const/4 v5, 0x0

    invoke-interface {v1, v5, v2}, Lx1/r;->a(Ljava/lang/Object;Lsb/n;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LK1/w;

    if-eqz v1, :cond_59

    iget-object v1, v1, LK1/w;->a:Lf2/h;

    goto :goto_30

    :cond_59
    move-object v1, v5

    :goto_30
    invoke-static {v1, v3}, Ltb/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5b

    invoke-virtual {v0}, Lx1/m;->b()Lx1/r;

    move-result-object v0

    sget-object v1, LH1/a;->e:LH1/a;

    invoke-interface {v0, v5, v1}, Lx1/r;->a(Ljava/lang/Object;Lsb/n;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LK1/p;

    if-eqz v0, :cond_5a

    iget-object v0, v0, LK1/p;->a:Lf2/h;

    goto :goto_31

    :cond_5a
    const/4 v0, 0x0

    :goto_31
    invoke-static {v0, v3}, Ltb/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5c

    :cond_5b
    const/4 v3, 0x1

    goto :goto_32

    :cond_5c
    const/4 v3, 0x0

    :goto_32
    invoke-virtual {v8, v9, v4, v3}, Landroid/widget/RemoteViews;->setBoolean(ILjava/lang/String;Z)V

    goto/16 :goto_34

    :cond_5d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5e
    move-object v0, v1

    check-cast v0, Lz1/J;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v3, 0x0

    throw v3

    :cond_5f
    const/4 v3, 0x0

    instance-of v0, v1, Lz1/K;

    if-eqz v0, :cond_61

    move-object v0, v1

    check-cast v0, Lz1/K;

    sget-object v1, Lz1/K0;->LinearProgressIndicatorDeterminate:Lz1/K0;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v8, v2, v1, v3}, Lz1/H0;->c(Landroid/widget/RemoteViews;Lz1/f1;Lz1/K0;Lx1/r;)Lz1/z0;

    move-result-object v0

    const/4 v1, 0x0

    const/16 v3, 0x64

    int-to-float v4, v3

    mul-float/2addr v1, v4

    float-to-int v1, v1

    iget v4, v0, Lz1/z0;->a:I

    const/4 v5, 0x0

    invoke-virtual {v8, v4, v3, v1, v5}, Landroid/widget/RemoteViews;->setProgressBar(IIIZ)V

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1f

    if-lt v1, v3, :cond_60

    const-string v1, "GWT:LinearTranslator"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Unexpected progress indicator color: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v13}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v4, Le7/a;->a:Ljava/lang/String;

    invoke-static {v4, v9, v3, v1}, Lw2/j;->h(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Unexpected progress indicator background color: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v13}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v5, Le7/a;->a:Ljava/lang/String;

    invoke-static {v5, v9, v3, v1}, Lw2/j;->h(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_33

    :cond_60
    const/4 v4, 0x0

    :goto_33
    invoke-static {v2, v8, v4, v0}, LG5/L2;->b(Lz1/f1;Landroid/widget/RemoteViews;Lx1/r;Lz1/z0;)V

    goto :goto_34

    :cond_61
    instance-of v0, v1, Lz1/L;

    if-eqz v0, :cond_64

    move-object v0, v1

    check-cast v0, Lz1/L;

    iget-object v0, v0, Lx1/n;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v3, 0x1

    if-gt v1, v3, :cond_63

    invoke-static {v0}, Lfb/n;->E(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lx1/l;

    if-eqz v0, :cond_62

    invoke-static {v8, v2, v0}, LG5/X2;->g(Landroid/widget/RemoteViews;Lz1/f1;Lx1/l;)V

    :cond_62
    :goto_34
    return-void

    :cond_63
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const-string v1, "Size boxes can only have at most one child "

    const-string v2, ". The normalization of the composition tree failed."

    invoke-static {v0, v1, v2}, Lt/b;->f(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_64
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Unknown element type "

    invoke-static {v2, v1}, Lt/b;->h(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static final h(Lz1/f1;Ljava/util/List;I)Landroid/widget/RemoteViews;
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    const-string v3, "children"

    invoke-static {v1, v3}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v3, v1

    check-cast v3, Ljava/lang/Iterable;

    instance-of v4, v3, Ljava/util/Collection;

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v4, :cond_0

    move-object v4, v3

    check-cast v4, Ljava/util/Collection;

    invoke-interface {v4}, Ljava/util/Collection;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lx1/l;

    instance-of v7, v7, Lz1/L;

    if-nez v7, :cond_1

    invoke-static/range {p1 .. p1}, Lfb/n;->U(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lx1/l;

    invoke-interface {v1}, Lx1/l;->b()Lx1/r;

    move-result-object v3

    invoke-static {v0, v3, v2}, Lz1/H0;->a(Lz1/f1;Lx1/r;I)Lz1/P0;

    move-result-object v2

    iget-object v3, v2, Lz1/P0;->b:Lz1/z0;

    invoke-virtual {v0, v3, v6}, Lz1/f1;->b(Lz1/z0;I)Lz1/f1;

    move-result-object v7

    new-instance v12, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v12, v6}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    new-instance v10, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v10, v5}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    const/16 v16, 0x0

    const v19, 0x1febf

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v11, 0x0

    const-wide/16 v13, 0x0

    const/4 v15, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    invoke-static/range {v7 .. v19}, Lz1/f1;->a(Lz1/f1;IZLjava/util/concurrent/atomic/AtomicInteger;Lz1/z0;Ljava/util/concurrent/atomic/AtomicBoolean;JIZLjava/lang/Integer;ZI)Lz1/f1;

    move-result-object v0

    iget-object v2, v2, Lz1/P0;->a:Landroid/widget/RemoteViews;

    invoke-static {v2, v0, v1}, LG5/X2;->g(Landroid/widget/RemoteViews;Lz1/f1;Lx1/l;)V

    return-object v2

    :cond_2
    :goto_0
    invoke-static/range {p1 .. p1}, Lfb/n;->C(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v1

    const-string v4, "null cannot be cast to non-null type androidx.glance.appwidget.EmittableSizeBox"

    invoke-static {v1, v4}, Ltb/k;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lz1/L;

    iget-object v1, v1, Lz1/L;->e:Lz1/b1;

    new-instance v7, Ljava/util/ArrayList;

    const/16 v8, 0xa

    invoke-static {v3, v8}, Lfb/p;->m(Ljava/lang/Iterable;I)I

    move-result v9

    invoke-direct {v7, v9}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lx1/l;

    invoke-static {v9, v4}, Ltb/k;->d(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v10, v9

    check-cast v10, Lz1/L;

    iget-wide v10, v10, Lz1/L;->d:J

    invoke-interface {v9}, Lx1/l;->b()Lx1/r;

    move-result-object v12

    invoke-static {v0, v12, v2}, Lz1/H0;->a(Lz1/f1;Lx1/r;I)Lz1/P0;

    move-result-object v12

    sput v6, LG5/X2;->a:I

    invoke-virtual {v0, v12, v10, v11}, Lz1/f1;->c(Lz1/P0;J)Lz1/f1;

    move-result-object v13

    iget-object v12, v12, Lz1/P0;->a:Landroid/widget/RemoteViews;

    invoke-static {v12, v13, v9}, LG5/X2;->g(Landroid/widget/RemoteViews;Lz1/f1;Lx1/l;)V

    sget-object v9, Lz1/u;->a:Ljava/util/HashMap;

    new-instance v9, Landroid/util/SizeF;

    invoke-static {v10, v11}, LH0/g;->b(J)F

    move-result v13

    invoke-static {v10, v11}, LH0/g;->a(J)F

    move-result v10

    invoke-direct {v9, v13, v10}, Landroid/util/SizeF;-><init>(FF)V

    new-instance v10, Ldb/j;

    invoke-direct {v10, v9, v12}, Ldb/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    instance-of v0, v1, Lz1/a1;

    if-eqz v0, :cond_4

    invoke-static {v7}, Lfb/n;->U(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldb/j;

    iget-object v0, v0, Ldb/j;->b:Ljava/lang/Object;

    check-cast v0, Landroid/widget/RemoteViews;

    goto/16 :goto_4

    :cond_4
    sget-object v0, Lz1/Z0;->a:Lz1/Z0;

    invoke-static {v1, v0}, Ltb/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1f

    if-lt v0, v1, :cond_5

    sget-object v0, Lz1/c;->a:Lz1/c;

    invoke-static {v7}, Lfb/B;->o(Ljava/lang/Iterable;)Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lz1/c;->a(Ljava/util/Map;)Landroid/widget/RemoteViews;

    move-result-object v0

    goto :goto_4

    :cond_5
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v5, :cond_7

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ne v0, v1, :cond_6

    goto :goto_2

    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "unsupported views size"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    :goto_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-static {v7, v8}, Lfb/p;->m(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ldb/j;

    iget-object v3, v3, Ldb/j;->b:Ljava/lang/Object;

    check-cast v3, Landroid/widget/RemoteViews;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_8
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-eq v2, v5, :cond_a

    if-ne v2, v1, :cond_9

    new-instance v1, Landroid/widget/RemoteViews;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/RemoteViews;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/RemoteViews;

    invoke-direct {v1, v2, v0}, Landroid/widget/RemoteViews;-><init>(Landroid/widget/RemoteViews;Landroid/widget/RemoteViews;)V

    move-object v0, v1

    goto :goto_4

    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "There must be between 1 and 2 views."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/RemoteViews;

    :goto_4
    return-object v0

    :cond_b
    new-instance v0, LI5/b;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method
