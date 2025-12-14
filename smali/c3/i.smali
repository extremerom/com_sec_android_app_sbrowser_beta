.class public final Lc3/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Landroid/view/View;

    check-cast p2, Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    check-cast p0, Lc3/d;

    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Lc3/d;

    iget-boolean p2, p0, Lc3/d;->a:Z

    iget-boolean v0, p1, Lc3/d;->a:Z

    if-eq p2, v0, :cond_1

    if-eqz p2, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, -0x1

    goto :goto_0

    :cond_1
    iget p0, p0, Lc3/d;->e:I

    iget p1, p1, Lc3/d;->e:I

    sub-int/2addr p0, p1

    :goto_0
    return p0
.end method
