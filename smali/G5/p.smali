.class public abstract LG5/p;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:Lo3/i;


# direct methods
.method public static final a(Ljava/lang/StringBuilder;I)V
    .locals 6

    if-gtz p1, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p1, :cond_1

    const-string v2, "?"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string v1, ","

    const/4 v2, 0x0

    const/16 v5, 0x3e

    invoke-static/range {v0 .. v5}, Lfb/n;->I(Ljava/lang/Iterable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lsb/k;I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method public static b(ILandroid/view/View;)Landroid/view/View;
    .locals 4

    instance-of v0, p1, Landroid/view/ViewGroup;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    check-cast p1, Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_2

    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, p0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_1

    return-object v3

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-object v1
.end method

.method public static final c(ILjava/util/List;)Lz4/c;
    .locals 10

    const/4 v0, 0x4

    const/4 v1, 0x3

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez p1, :cond_0

    sget-object p0, Lz4/c;->c:Lz4/c;

    return-object p0

    :cond_0
    const-string v4, "Unsupported AppFunctionDataType: "

    packed-switch p0, :pswitch_data_0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-static {p0, v4}, Lcom/sec/android/app/sbrowser/autofill/password/k;->i(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_0
    check-cast p1, Ljava/util/Collection;

    new-array v5, v3, [Landroid/widget/RemoteViews;

    invoke-interface {p1, v5}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    goto/16 :goto_2

    :pswitch_1
    check-cast p1, Ljava/util/Collection;

    new-array v5, v3, [Landroid/app/PendingIntent;

    invoke-interface {p1, v5}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    goto/16 :goto_2

    :pswitch_2
    check-cast p1, Ljava/util/Collection;

    new-array v5, v3, [Ljava/lang/String;

    invoke-interface {p1, v5}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    goto/16 :goto_2

    :pswitch_3
    check-cast p1, Ljava/util/Collection;

    check-cast p1, Ljava/util/List;

    invoke-static {p1}, Lfb/n;->f0(Ljava/util/List;)[I

    move-result-object p1

    goto/16 :goto_2

    :pswitch_4
    check-cast p1, Ljava/util/Collection;

    check-cast p1, Ljava/util/List;

    invoke-static {p1}, Lfb/n;->h0(Ljava/util/List;)[J

    move-result-object p1

    goto/16 :goto_2

    :pswitch_5
    check-cast p1, Ljava/util/Collection;

    check-cast p1, Ljava/util/List;

    invoke-static {p1}, Lfb/n;->e0(Ljava/util/List;)[F

    move-result-object p1

    goto/16 :goto_2

    :pswitch_6
    check-cast p1, Ljava/util/Collection;

    check-cast p1, Ljava/util/List;

    invoke-static {p1}, Lfb/n;->d0(Ljava/util/List;)[D

    move-result-object p1

    goto/16 :goto_2

    :pswitch_7
    invoke-static {}, LG5/o3;->b()Lgb/c;

    move-result-object v5

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    sget-object v7, Lz4/c;->c:Lz4/c;

    invoke-static {v6}, Ltb/k;->c(Ljava/lang/Object;)V

    new-instance v7, Lz4/c;

    invoke-static {v6}, Lv/u;->b(Ljava/lang/Object;)Lv/u;

    move-result-object v6

    const-string v8, "fromDocumentClass(...)"

    invoke-static {v6, v8}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v8, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    const-string v9, "EMPTY"

    invoke-static {v8, v9}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v7, v6, v8}, Lz4/c;-><init>(Lv/u;Landroid/os/Bundle;)V

    invoke-virtual {v5, v7}, Lgb/c;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-static {v5}, LG5/o3;->a(Lgb/c;)Lgb/c;

    move-result-object p1

    new-array v5, v3, [Lz4/c;

    invoke-virtual {p1, v5}, Lgb/c;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    goto :goto_2

    :pswitch_8
    check-cast p1, Ljava/util/Collection;

    new-array v5, v3, [[B

    invoke-interface {p1, v5}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    goto :goto_2

    :pswitch_9
    check-cast p1, Ljava/util/Collection;

    check-cast p1, Ljava/util/List;

    const-string v5, "<this>"

    invoke-static {p1, v5}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v5

    new-array v5, v5, [Z

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    move v6, v3

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    add-int/lit8 v8, v6, 0x1

    aput-boolean v7, v5, v6

    move v6, v8

    goto :goto_1

    :cond_2
    move-object p1, v5

    goto :goto_2

    :pswitch_a
    sget-object p1, Lfb/v;->a:Lfb/v;

    :goto_2
    const/4 v5, 0x0

    const-string v6, " were provided."

    packed-switch p0, :pswitch_data_1

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-static {p0, v4}, Lcom/sec/android/app/sbrowser/autofill/password/k;->i(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_b
    const-string p0, "null cannot be cast to non-null type kotlin.Array<android.widget.RemoteViews>"

    invoke-static {p1, p0}, Ltb/k;->d(Ljava/lang/Object;Ljava/lang/String;)V

    move-object p0, p1

    check-cast p0, [Landroid/widget/RemoteViews;

    array-length v0, p0

    if-ne v0, v2, :cond_3

    aget-object v5, p0, v3

    :cond_3
    if-eqz v5, :cond_4

    new-instance p0, LB0/a;

    invoke-direct {p0, v1, v5}, LB0/a;-><init>(ILjava/lang/Object;)V

    invoke-static {p0}, LG5/c3;->b(Lsb/k;)Lz4/c;

    move-result-object p0

    goto/16 :goto_3

    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    check-cast p1, [Ljava/lang/Object;

    array-length p1, p1

    const-string v0, "Only one remote view can be returned. But "

    invoke-static {p1, v0, v6}, Lt/b;->f(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_c
    const-string p0, "null cannot be cast to non-null type kotlin.Array<android.app.PendingIntent>"

    invoke-static {p1, p0}, Ltb/k;->d(Ljava/lang/Object;Ljava/lang/String;)V

    move-object p0, p1

    check-cast p0, [Landroid/app/PendingIntent;

    array-length v1, p0

    if-ne v1, v2, :cond_5

    aget-object v5, p0, v3

    :cond_5
    if-eqz v5, :cond_6

    new-instance p0, LB0/a;

    invoke-direct {p0, v0, v5}, LB0/a;-><init>(ILjava/lang/Object;)V

    invoke-static {p0}, LG5/c3;->b(Lsb/k;)Lz4/c;

    move-result-object p0

    goto :goto_3

    :cond_6
    new-instance p0, Ljava/lang/IllegalArgumentException;

    check-cast p1, [Ljava/lang/Object;

    array-length p1, p1

    const-string v0, "Only one pending intent can be returned. But "

    invoke-static {p1, v0, v6}, Lt/b;->f(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_d
    new-instance p0, LB4/a;

    const/4 v0, 0x6

    invoke-direct {p0, v0, p1}, LB4/a;-><init>(ILjava/io/Serializable;)V

    invoke-static {p0}, LG5/c3;->b(Lsb/k;)Lz4/c;

    move-result-object p0

    goto :goto_3

    :pswitch_e
    new-instance p0, LB4/a;

    invoke-direct {p0, v1, p1}, LB4/a;-><init>(ILjava/io/Serializable;)V

    invoke-static {p0}, LG5/c3;->b(Lsb/k;)Lz4/c;

    move-result-object p0

    goto :goto_3

    :pswitch_f
    new-instance p0, LB4/a;

    const/4 v0, 0x2

    invoke-direct {p0, v0, p1}, LB4/a;-><init>(ILjava/io/Serializable;)V

    invoke-static {p0}, LG5/c3;->b(Lsb/k;)Lz4/c;

    move-result-object p0

    goto :goto_3

    :pswitch_10
    new-instance p0, LB4/a;

    const/4 v0, 0x5

    invoke-direct {p0, v0, p1}, LB4/a;-><init>(ILjava/io/Serializable;)V

    invoke-static {p0}, LG5/c3;->b(Lsb/k;)Lz4/c;

    move-result-object p0

    goto :goto_3

    :pswitch_11
    new-instance p0, LB4/a;

    invoke-direct {p0, v0, p1}, LB4/a;-><init>(ILjava/io/Serializable;)V

    invoke-static {p0}, LG5/c3;->b(Lsb/k;)Lz4/c;

    move-result-object p0

    goto :goto_3

    :pswitch_12
    new-instance p0, LB4/a;

    const/4 v0, 0x7

    invoke-direct {p0, v0, p1}, LB4/a;-><init>(ILjava/io/Serializable;)V

    invoke-static {p0}, LG5/c3;->b(Lsb/k;)Lz4/c;

    move-result-object p0

    goto :goto_3

    :pswitch_13
    new-instance p0, LB4/a;

    invoke-direct {p0, v2, p1}, LB4/a;-><init>(ILjava/io/Serializable;)V

    invoke-static {p0}, LG5/c3;->b(Lsb/k;)Lz4/c;

    move-result-object p0

    goto :goto_3

    :pswitch_14
    new-instance p0, LB4/a;

    invoke-direct {p0, v3, p1}, LB4/a;-><init>(ILjava/io/Serializable;)V

    invoke-static {p0}, LG5/c3;->b(Lsb/k;)Lz4/c;

    move-result-object p0

    goto :goto_3

    :pswitch_15
    sget-object p0, Lz4/c;->c:Lz4/c;

    :goto_3
    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
    .end packed-switch
.end method

.method public static final d(Lz4/c;Ljava/lang/String;ILjava/lang/Class;)Ljava/util/List;
    .locals 10

    const-string v0, "path"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-class v0, [D

    const-class v1, [J

    const/4 v2, 0x0

    const/4 v3, 0x0

    packed-switch p2, :pswitch_data_0

    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Unsupported data type "

    invoke-static {p2, p1}, Lcom/sec/android/app/sbrowser/autofill/password/k;->i(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_0
    const-class p2, [Ljava/lang/String;

    invoke-virtual {p0, p2, p1}, Lz4/c;->c(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    if-eqz p0, :cond_0

    invoke-static {p0}, Lfb/l;->F([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    goto/16 :goto_7

    :cond_0
    move-object p0, v3

    goto/16 :goto_7

    :pswitch_1
    invoke-virtual {p0, v1, p1}, Lz4/c;->c(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [J

    if-eqz p0, :cond_2

    new-instance p1, Ljava/util/ArrayList;

    array-length p2, p0

    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(I)V

    array-length p2, p0

    :goto_0
    if-ge v2, p2, :cond_1

    aget-wide v0, p0, v2

    long-to-int p3, v0

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    invoke-static {p1}, Lfb/n;->f0(Ljava/util/List;)[I

    move-result-object p0

    goto :goto_1

    :cond_2
    move-object p0, v3

    :goto_1
    if-eqz p0, :cond_0

    invoke-static {p0}, Lfb/l;->D([I)Ljava/util/List;

    move-result-object p0

    goto/16 :goto_7

    :pswitch_2
    invoke-virtual {p0, v1, p1}, Lz4/c;->c(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [J

    if-eqz p0, :cond_0

    invoke-static {p0}, Lfb/l;->E([J)Ljava/util/List;

    move-result-object p0

    goto/16 :goto_7

    :pswitch_3
    invoke-virtual {p0, v0, p1}, Lz4/c;->c(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [D

    if-eqz p0, :cond_4

    new-instance p1, Ljava/util/ArrayList;

    array-length p2, p0

    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(I)V

    array-length p2, p0

    :goto_2
    if-ge v2, p2, :cond_3

    aget-wide v0, p0, v2

    double-to-float p3, v0

    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_3
    invoke-static {p1}, Lfb/n;->e0(Ljava/util/List;)[F

    move-result-object p0

    goto :goto_3

    :cond_4
    move-object p0, v3

    :goto_3
    if-eqz p0, :cond_0

    invoke-static {p0}, Lfb/l;->C([F)Ljava/util/List;

    move-result-object p0

    goto/16 :goto_7

    :pswitch_4
    invoke-virtual {p0, v0, p1}, Lz4/c;->c(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [D

    if-eqz p0, :cond_0

    invoke-static {p0}, Lfb/l;->B([D)Ljava/util/List;

    move-result-object p0

    goto/16 :goto_7

    :pswitch_5
    const-class p2, [Lv/u;

    invoke-virtual {p0, p2, p1}, Lz4/c;->c(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Lv/u;

    if-eqz p2, :cond_7

    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    array-length v1, p2

    move v4, v2

    move v5, v4

    :goto_4
    if-ge v4, v1, :cond_6

    aget-object v6, p2, v4

    add-int/lit8 v7, v5, 0x1

    new-instance v8, Lz4/c;

    invoke-static {v5, p1}, Lz7/d;->e(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iget-object v9, p0, Lz4/c;->b:Landroid/os/Bundle;

    invoke-virtual {v9, v5}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v5

    if-nez v5, :cond_5

    sget-object v5, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    :cond_5
    invoke-static {v5}, Ltb/k;->c(Ljava/lang/Object;)V

    invoke-direct {v8, v6, v5}, Lz4/c;-><init>(Lv/u;Landroid/os/Bundle;)V

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    move v5, v7

    goto :goto_4

    :cond_6
    new-array p0, v2, [Lz4/c;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lz4/c;

    goto :goto_5

    :cond_7
    move-object p0, v3

    :goto_5
    if-eqz p0, :cond_0

    new-instance p1, Ljava/util/ArrayList;

    array-length p2, p0

    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(I)V

    array-length p2, p0

    :goto_6
    if-ge v2, p2, :cond_9

    aget-object v0, p0, v2

    if-eqz p3, :cond_8

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, v0, Lz4/c;->a:Lv/u;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Lv/s;->c:Lv/s;

    invoke-virtual {v0, p3, v1}, Lv/u;->p(Ljava/lang/Class;Lv/s;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_8
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Require document class when getting document property"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_9
    move-object p0, p1

    goto :goto_7

    :pswitch_6
    const-class p2, [[B

    invoke-virtual {p0, p2, p1}, Lz4/c;->c(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [[B

    if-eqz p0, :cond_0

    invoke-static {p0}, Lfb/l;->F([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    goto :goto_7

    :pswitch_7
    const-class p2, [Z

    invoke-virtual {p0, p2, p1}, Lz4/c;->c(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Z

    if-eqz p0, :cond_0

    invoke-static {p0}, Lfb/l;->G([Z)Ljava/util/List;

    move-result-object p0

    :goto_7
    if-nez p0, :cond_a

    return-object v3

    :cond_a
    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
