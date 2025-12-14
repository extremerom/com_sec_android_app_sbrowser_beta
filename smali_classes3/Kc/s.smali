.class public final synthetic LKc/s;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lsb/n;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Z

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Z)V
    .locals 0

    iput p1, p0, LKc/s;->a:I

    iput-object p2, p0, LKc/s;->c:Ljava/lang/Object;

    iput-boolean p3, p0, LKc/s;->b:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12

    iget v0, p0, LKc/s;->a:I

    check-cast p1, Ljava/lang/CharSequence;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    packed-switch v0, :pswitch_data_0

    const-string v0, "$this$DelimitedRangesSequence"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, LKc/s;->c:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    check-cast v0, Ljava/util/Collection;

    const/4 v1, 0x0

    iget-boolean p0, p0, LKc/s;->b:Z

    const/4 v8, 0x0

    const/4 v2, 0x1

    if-nez p0, :cond_1

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v3

    if-ne v3, v2, :cond_1

    check-cast v0, Ljava/lang/Iterable;

    invoke-static {v0}, Lfb/n;->T(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    const/4 v0, 0x4

    invoke-static {p1, p0, p2, v1, v0}, LKc/k;->v(Ljava/lang/CharSequence;Ljava/lang/String;IZI)I

    move-result p1

    if-gez p1, :cond_0

    goto/16 :goto_4

    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    new-instance p2, Ldb/j;

    invoke-direct {p2, p1, p0}, Ldb/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_5

    :cond_1
    new-instance v3, Lzb/d;

    if-gez p2, :cond_2

    move p2, v1

    :cond_2
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-direct {v3, p2, v1, v2}, Lzb/b;-><init>(III)V

    instance-of v1, p1, Ljava/lang/String;

    iget v9, v3, Lzb/b;->c:I

    iget v10, v3, Lzb/b;->b:I

    if-eqz v1, :cond_8

    if-lez v9, :cond_3

    if-le p2, v10, :cond_4

    :cond_3
    if-gez v9, :cond_e

    if-gt v10, p2, :cond_e

    :cond_4
    :goto_0
    move-object v1, v0

    check-cast v1, Ljava/lang/Iterable;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    move-object v6, v11

    check-cast v6, Ljava/lang/String;

    move-object v7, p1

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v2, 0x0

    move v3, p2

    move v4, p0

    invoke-static/range {v2 .. v7}, LKc/r;->j(IIZILjava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    goto :goto_1

    :cond_6
    move-object v11, v8

    :goto_1
    check-cast v11, Ljava/lang/String;

    if-eqz v11, :cond_7

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    new-instance p2, Ldb/j;

    invoke-direct {p2, p0, v11}, Ldb/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_5

    :cond_7
    if-eq p2, v10, :cond_e

    add-int/2addr p2, v9

    goto :goto_0

    :cond_8
    if-lez v9, :cond_9

    if-le p2, v10, :cond_a

    :cond_9
    if-gez v9, :cond_e

    if-gt v10, p2, :cond_e

    :cond_a
    :goto_2
    move-object v1, v0

    check-cast v1, Ljava/lang/Iterable;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_b
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_c

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    move-object v1, v11

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v6

    const/4 v3, 0x0

    move v2, p0

    move-object v4, p1

    move v5, p2

    invoke-static/range {v1 .. v6}, LKc/k;->C(Ljava/lang/CharSequence;ZILjava/lang/CharSequence;II)Z

    move-result v1

    if-eqz v1, :cond_b

    goto :goto_3

    :cond_c
    move-object v11, v8

    :goto_3
    check-cast v11, Ljava/lang/String;

    if-eqz v11, :cond_d

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    new-instance p2, Ldb/j;

    invoke-direct {p2, p0, v11}, Ldb/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_5

    :cond_d
    if-eq p2, v10, :cond_e

    add-int/2addr p2, v9

    goto :goto_2

    :cond_e
    :goto_4
    move-object p2, v8

    :goto_5
    if-eqz p2, :cond_f

    iget-object p0, p2, Ldb/j;->b:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    new-instance v8, Ldb/j;

    iget-object p1, p2, Ldb/j;->a:Ljava/lang/Object;

    invoke-direct {v8, p1, p0}, Ldb/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_f
    return-object v8

    :pswitch_0
    const-string v0, "$this$DelimitedRangesSequence"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, LKc/s;->c:Ljava/lang/Object;

    check-cast v0, [C

    iget-boolean p0, p0, LKc/s;->b:Z

    invoke-static {p1, v0, p2, p0}, LKc/k;->w(Ljava/lang/CharSequence;[CIZ)I

    move-result p0

    if-gez p0, :cond_10

    const/4 p0, 0x0

    goto :goto_6

    :cond_10
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 p1, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    new-instance p2, Ldb/j;

    invoke-direct {p2, p0, p1}, Ldb/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object p0, p2

    :goto_6
    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
