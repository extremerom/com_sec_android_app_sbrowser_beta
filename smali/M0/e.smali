.class public final LM0/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field public final synthetic a:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, LM0/e;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 2

    const/4 v0, 0x0

    iget p0, p0, LM0/e;->a:I

    packed-switch p0, :pswitch_data_0

    check-cast p1, Landroid/view/View;

    check-cast p2, Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result p0

    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result p1

    sub-int/2addr p0, p1

    return p0

    :pswitch_0
    check-cast p2, Ldb/j;

    iget-object p0, p2, Ldb/j;->b:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Integer;

    check-cast p1, Ldb/j;

    iget-object p1, p1, Ldb/j;->b:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-static {p0, p1}, LG5/A3;->a(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result p0

    return p0

    :pswitch_1
    check-cast p1, Lo9/f;

    iget p0, p1, Lo9/f;->a:F

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    check-cast p2, Lo9/f;

    iget p1, p2, Lo9/f;->a:F

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-static {p0, p1}, LG5/A3;->a(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result p0

    return p0

    :pswitch_2
    check-cast p1, Li7/z;

    check-cast p2, Li7/z;

    invoke-virtual {p1}, Li7/p;->c()Li7/q;

    move-result-object p0

    invoke-virtual {p2}, Li7/p;->c()Li7/q;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result p0

    return p0

    :pswitch_3
    check-cast p1, [I

    check-cast p2, [I

    aget p0, p1, v0

    aget p1, p2, v0

    sub-int/2addr p0, p1

    return p0

    :pswitch_4
    check-cast p1, [B

    check-cast p2, [B

    array-length p0, p1

    array-length p1, p2

    sub-int/2addr p0, p1

    return p0

    :pswitch_5
    check-cast p1, Lc3/c;

    check-cast p2, Lc3/c;

    iget p0, p1, Lc3/c;->b:I

    iget p1, p2, Lc3/c;->b:I

    sub-int/2addr p0, p1

    return p0

    :pswitch_6
    check-cast p1, Landroid/view/View;

    check-cast p2, Landroid/view/View;

    sget-object p0, Lf1/W;->a:Ljava/util/WeakHashMap;

    invoke-static {p1}, Lf1/O;->h(Landroid/view/View;)F

    move-result p0

    invoke-static {p2}, Lf1/O;->h(Landroid/view/View;)F

    move-result p1

    cmpl-float p2, p0, p1

    if-lez p2, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    :cond_0
    cmpg-float p0, p0, p1

    if-gez p0, :cond_1

    const/4 v0, 0x1

    :cond_1
    :goto_0
    return v0

    :pswitch_7
    check-cast p1, LP2/r;

    iget-object p0, p1, LP2/r;->a:Ljava/lang/String;

    check-cast p2, LP2/r;

    iget-object p1, p2, LP2/r;->a:Ljava/lang/String;

    invoke-static {p0, p1}, LG5/A3;->a(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result p0

    return p0

    :pswitch_8
    check-cast p1, LP2/p;

    iget-object p0, p1, LP2/p;->a:Ljava/lang/String;

    check-cast p2, LP2/p;

    iget-object p1, p2, LP2/p;->a:Ljava/lang/String;

    invoke-static {p0, p1}, LG5/A3;->a(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result p0

    return p0

    :pswitch_9
    check-cast p1, Ljava/util/Map$Entry;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    check-cast p2, Ljava/util/Map$Entry;

    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-static {p0, p1}, LG5/A3;->a(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result p0

    return p0

    :pswitch_a
    check-cast p1, Ljava/util/Map$Entry;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    check-cast p2, Ljava/util/Map$Entry;

    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-static {p0, p1}, LG5/A3;->a(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result p0

    return p0

    :pswitch_b
    check-cast p1, Ldb/p;

    iget-object p0, p1, Ldb/p;->b:Ljava/lang/Object;

    check-cast p0, LM1/c;

    iget p0, p0, LM1/c;->a:I

    sget v0, LM1/b;->b:I

    invoke-static {v0}, LM1/b;->c(I)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    shl-int/2addr p0, v1

    iget-object p1, p1, Ldb/p;->a:Ljava/lang/Object;

    check-cast p1, LM1/b;

    iget p1, p1, LM1/b;->a:I

    or-int/2addr p0, p1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    check-cast p2, Ldb/p;

    iget-object p1, p2, Ldb/p;->b:Ljava/lang/Object;

    check-cast p1, LM1/c;

    iget p1, p1, LM1/c;->a:I

    invoke-static {v0}, LM1/b;->c(I)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    shl-int/2addr p1, v0

    iget-object p2, p2, Ldb/p;->a:Ljava/lang/Object;

    check-cast p2, LM1/b;

    iget p2, p2, LM1/b;->a:I

    or-int/2addr p1, p2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p0, p1}, LG5/A3;->a(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result p0

    return p0

    :pswitch_c
    check-cast p1, LM0/i;

    check-cast p2, LM0/i;

    iget p0, p1, LM0/i;->b:I

    iget p1, p2, LM0/i;->b:I

    sub-int/2addr p0, p1

    return p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_c
        :pswitch_b
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
.end method
