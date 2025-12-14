.class public final LB4/a;
.super Ltb/m;
.source "SourceFile"

# interfaces
.implements Lsb/k;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/io/Serializable;


# direct methods
.method public synthetic constructor <init>(ILjava/io/Serializable;)V
    .locals 0

    iput p1, p0, LB4/a;->a:I

    iput-object p2, p0, LB4/a;->b:Ljava/io/Serializable;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Ltb/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    const/4 v0, 0x0

    sget-object v1, Ldb/r;->a:Ldb/r;

    const-string v2, "androidAppfunctionsReturnValue"

    iget-object v3, p0, LB4/a;->b:Ljava/io/Serializable;

    const-string v4, "$this$appFunctionDocument"

    iget p0, p0, LB4/a;->a:I

    packed-switch p0, :pswitch_data_0

    check-cast p1, Lz4/b;

    invoke-static {p1, v4}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "null cannot be cast to non-null type kotlin.Array<com.google.android.appfunctions.AppFunctionDocument>"

    invoke-static {v3, p0}, Ltb/k;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, [Lz4/c;

    new-instance p0, Ljava/util/ArrayList;

    array-length v4, v3

    invoke-direct {p0, v4}, Ljava/util/ArrayList;-><init>(I)V

    array-length v4, v3

    move v5, v0

    :goto_0
    if-ge v5, v4, :cond_0

    aget-object v6, v3, v5

    iget-object v6, v6, Lz4/c;->a:Lv/u;

    invoke-virtual {p0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_0
    new-array v4, v0, [Lv/u;

    invoke-virtual {p0, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lv/u;

    array-length v4, p0

    invoke-static {p0, v4}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lv/u;

    iget-object v4, p1, Lz4/b;->a:Lcom/samsung/android/motionphoto/utils/ex/e;

    invoke-virtual {v4, v2, p0}, Lcom/samsung/android/motionphoto/utils/ex/e;->r(Ljava/lang/String;[Lv/u;)Lcom/samsung/android/motionphoto/utils/ex/e;

    array-length p0, v3

    move v4, v0

    :goto_1
    if-ge v0, p0, :cond_2

    aget-object v5, v3, v0

    add-int/lit8 v6, v4, 0x1

    iget-object v7, v5, Lz4/c;->b:Landroid/os/Bundle;

    invoke-virtual {v7}, Landroid/os/BaseBundle;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_1

    sget-object v7, Lz4/c;->c:Lz4/c;

    invoke-static {v4, v2}, Lz7/d;->e(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v7, p1, Lz4/b;->b:Landroid/os/Bundle;

    iget-object v5, v5, Lz4/c;->b:Landroid/os/Bundle;

    invoke-virtual {v7, v4, v5}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    move v4, v6

    goto :goto_1

    :cond_2
    return-object v1

    :pswitch_0
    check-cast p1, Lz4/b;

    invoke-static {p1, v4}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "null cannot be cast to non-null type kotlin.Array<kotlin.String>"

    invoke-static {v3, p0}, Ltb/k;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, [Ljava/lang/String;

    array-length p0, v3

    invoke-static {v3, p0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    iget-object p1, p1, Lz4/b;->a:Lcom/samsung/android/motionphoto/utils/ex/e;

    invoke-virtual {p1, v2, p0}, Lcom/samsung/android/motionphoto/utils/ex/e;->u(Ljava/lang/String;[Ljava/lang/String;)Lcom/samsung/android/motionphoto/utils/ex/e;

    return-object v1

    :pswitch_1
    check-cast p1, Lz4/b;

    invoke-static {p1, v4}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "null cannot be cast to non-null type kotlin.FloatArray"

    invoke-static {v3, p0}, Ltb/k;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, [F

    new-instance p0, Ljava/util/ArrayList;

    array-length v4, v3

    invoke-direct {p0, v4}, Ljava/util/ArrayList;-><init>(I)V

    array-length v4, v3

    :goto_2
    if-ge v0, v4, :cond_3

    aget v5, v3, v0

    float-to-double v5, v5

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    invoke-virtual {p0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    invoke-static {p0}, Lfb/n;->d0(Ljava/util/List;)[D

    move-result-object p0

    array-length v0, p0

    invoke-static {p0, v0}, Ljava/util/Arrays;->copyOf([DI)[D

    move-result-object p0

    iget-object p1, p1, Lz4/b;->a:Lcom/samsung/android/motionphoto/utils/ex/e;

    invoke-virtual {p1, v2, p0}, Lcom/samsung/android/motionphoto/utils/ex/e;->s(Ljava/lang/String;[D)Lcom/samsung/android/motionphoto/utils/ex/e;

    return-object v1

    :pswitch_2
    check-cast p1, Lz4/b;

    invoke-static {p1, v4}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "null cannot be cast to non-null type kotlin.DoubleArray"

    invoke-static {v3, p0}, Ltb/k;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, [D

    array-length p0, v3

    invoke-static {v3, p0}, Ljava/util/Arrays;->copyOf([DI)[D

    move-result-object p0

    iget-object p1, p1, Lz4/b;->a:Lcom/samsung/android/motionphoto/utils/ex/e;

    invoke-virtual {p1, v2, p0}, Lcom/samsung/android/motionphoto/utils/ex/e;->s(Ljava/lang/String;[D)Lcom/samsung/android/motionphoto/utils/ex/e;

    return-object v1

    :pswitch_3
    check-cast p1, Lz4/b;

    invoke-static {p1, v4}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "null cannot be cast to non-null type kotlin.IntArray"

    invoke-static {v3, p0}, Ltb/k;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, [I

    new-instance p0, Ljava/util/ArrayList;

    array-length v4, v3

    invoke-direct {p0, v4}, Ljava/util/ArrayList;-><init>(I)V

    array-length v4, v3

    :goto_3
    if-ge v0, v4, :cond_4

    aget v5, v3, v0

    int-to-long v5, v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {p0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_4
    invoke-static {p0}, Lfb/n;->h0(Ljava/util/List;)[J

    move-result-object p0

    array-length v0, p0

    invoke-static {p0, v0}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object p0

    iget-object p1, p1, Lz4/b;->a:Lcom/samsung/android/motionphoto/utils/ex/e;

    invoke-virtual {p1, v2, p0}, Lcom/samsung/android/motionphoto/utils/ex/e;->t(Ljava/lang/String;[J)Lcom/samsung/android/motionphoto/utils/ex/e;

    return-object v1

    :pswitch_4
    check-cast p1, Lz4/b;

    invoke-static {p1, v4}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "null cannot be cast to non-null type kotlin.LongArray"

    invoke-static {v3, p0}, Ltb/k;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, [J

    array-length p0, v3

    invoke-static {v3, p0}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object p0

    iget-object p1, p1, Lz4/b;->a:Lcom/samsung/android/motionphoto/utils/ex/e;

    invoke-virtual {p1, v2, p0}, Lcom/samsung/android/motionphoto/utils/ex/e;->t(Ljava/lang/String;[J)Lcom/samsung/android/motionphoto/utils/ex/e;

    return-object v1

    :pswitch_5
    check-cast p1, Lz4/b;

    invoke-static {p1, v4}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "null cannot be cast to non-null type kotlin.Array<kotlin.ByteArray>"

    invoke-static {v3, p0}, Ltb/k;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, [[B

    array-length p0, v3

    invoke-static {v3, p0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [[B

    iget-object p1, p1, Lz4/b;->a:Lcom/samsung/android/motionphoto/utils/ex/e;

    invoke-virtual {p1, v2, p0}, Lcom/samsung/android/motionphoto/utils/ex/e;->q(Ljava/lang/String;[[B)Lcom/samsung/android/motionphoto/utils/ex/e;

    return-object v1

    :pswitch_6
    check-cast p1, Lz4/b;

    invoke-static {p1, v4}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "null cannot be cast to non-null type kotlin.BooleanArray"

    invoke-static {v3, p0}, Ltb/k;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, [Z

    array-length p0, v3

    invoke-static {v3, p0}, Ljava/util/Arrays;->copyOf([ZI)[Z

    move-result-object p0

    iget-object p1, p1, Lz4/b;->a:Lcom/samsung/android/motionphoto/utils/ex/e;

    invoke-virtual {p1, v2, p0}, Lcom/samsung/android/motionphoto/utils/ex/e;->p(Ljava/lang/String;[Z)Lcom/samsung/android/motionphoto/utils/ex/e;

    return-object v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
