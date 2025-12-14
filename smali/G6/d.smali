.class public final LG6/d;
.super LG5/Z3;
.source "SourceFile"


# instance fields
.field public final synthetic a:I

.field public final synthetic b:LR0/c;


# direct methods
.method public synthetic constructor <init>(LR0/c;I)V
    .locals 0

    iput p2, p0, LG6/d;->a:I

    iput-object p1, p0, LG6/d;->b:LR0/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final b(ILandroid/view/View;)I
    .locals 1

    iget v0, p0, LG6/d;->a:I

    packed-switch v0, :pswitch_data_0

    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result p0

    return p0

    :pswitch_0
    iget-object p0, p0, LG6/d;->b:LR0/c;

    check-cast p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;

    iget-object p2, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->a:LG6/a;

    iget v0, p2, LG6/a;->a:I

    packed-switch v0, :pswitch_data_1

    invoke-virtual {p2}, LG6/a;->g()I

    move-result p2

    goto :goto_0

    :pswitch_1
    iget-object p2, p2, LG6/a;->b:Lcom/google/android/material/sidesheet/SideSheetBehavior;

    iget p2, p2, Lcom/google/android/material/sidesheet/SideSheetBehavior;->l:I

    neg-int p2, p2

    :goto_0
    iget-object p0, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->a:LG6/a;

    iget v0, p0, LG6/a;->a:I

    packed-switch v0, :pswitch_data_2

    iget-object p0, p0, LG6/a;->b:Lcom/google/android/material/sidesheet/SideSheetBehavior;

    iget p0, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->m:I

    goto :goto_1

    :pswitch_2
    iget-object p0, p0, LG6/a;->b:Lcom/google/android/material/sidesheet/SideSheetBehavior;

    iget p0, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->o:I

    :goto_1
    invoke-static {p1, p2, p0}, LG5/L3;->e(III)I

    move-result p0

    return p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_2
    .end packed-switch
.end method

.method public final c(ILandroid/view/View;)I
    .locals 1

    iget v0, p0, LG6/d;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object p2, p0, LG6/d;->b:LR0/c;

    check-cast p2, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    invoke-virtual {p2}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->z()I

    move-result p2

    invoke-virtual {p0}, LG6/d;->f()I

    move-result p0

    invoke-static {p1, p2, p0}, LG5/L3;->e(III)I

    move-result p0

    return p0

    :pswitch_0
    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result p0

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public e(Landroid/view/View;)I
    .locals 1

    iget v0, p0, LG6/d;->a:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0, p1}, LG5/Z3;->e(Landroid/view/View;)I

    move-result p0

    return p0

    :pswitch_0
    iget-object p0, p0, LG6/d;->b:LR0/c;

    check-cast p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;

    iget p1, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->l:I

    iget p0, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->o:I

    add-int/2addr p1, p0

    return p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public f()I
    .locals 1

    iget v0, p0, LG6/d;->a:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0}, LG5/Z3;->f()I

    move-result p0

    return p0

    :pswitch_0
    iget-object p0, p0, LG6/d;->b:LR0/c;

    check-cast p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    iget-boolean v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->I:Z

    if-eqz v0, :cond_0

    iget p0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->T:I

    goto :goto_0

    :cond_0
    iget p0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->G:I

    :goto_0
    return p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public final h(I)V
    .locals 1

    iget v0, p0, LG6/d;->a:I

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    iget-object p0, p0, LG6/d;->b:LR0/c;

    check-cast p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    iget-boolean p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->K:Z

    if-eqz p1, :cond_0

    invoke-virtual {p0, v0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->E(I)V

    :cond_0
    return-void

    :pswitch_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    iget-object p0, p0, LG6/d;->b:LR0/c;

    check-cast p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;

    iget-boolean p1, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->g:Z

    if-eqz p1, :cond_1

    invoke-virtual {p0, v0}, Lcom/google/android/material/sidesheet/SideSheetBehavior;->t(I)V

    :cond_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final i(IILandroid/view/View;)V
    .locals 3

    iget p1, p0, LG6/d;->a:I

    packed-switch p1, :pswitch_data_0

    iget-object p0, p0, LG6/d;->b:LR0/c;

    check-cast p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    invoke-virtual {p0, p2}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->w(I)V

    return-void

    :pswitch_0
    iget-object p0, p0, LG6/d;->b:LR0/c;

    check-cast p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;

    iget-object p1, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->q:Ljava/lang/ref/WeakReference;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    check-cast p2, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz p2, :cond_2

    iget-object v0, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->a:LG6/a;

    invoke-virtual {p3}, Landroid/view/View;->getLeft()I

    move-result v1

    invoke-virtual {p3}, Landroid/view/View;->getRight()I

    move-result p3

    iget v2, v0, LG6/a;->a:I

    packed-switch v2, :pswitch_data_1

    iget-object p3, v0, LG6/a;->b:Lcom/google/android/material/sidesheet/SideSheetBehavior;

    iget p3, p3, Lcom/google/android/material/sidesheet/SideSheetBehavior;->m:I

    if-gt v1, p3, :cond_1

    sub-int/2addr p3, v1

    iput p3, p2, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    goto :goto_1

    :pswitch_1
    iget-object v0, v0, LG6/a;->b:Lcom/google/android/material/sidesheet/SideSheetBehavior;

    iget v0, v0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->m:I

    if-gt v1, v0, :cond_1

    iput p3, p2, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    :cond_1
    :goto_1
    invoke-virtual {p1, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_2
    iget-object p1, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->u:Ljava/util/LinkedHashSet;

    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_4

    iget-object p0, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->a:LG6/a;

    iget p2, p0, LG6/a;->a:I

    packed-switch p2, :pswitch_data_2

    iget-object p2, p0, LG6/a;->b:Lcom/google/android/material/sidesheet/SideSheetBehavior;

    iget p2, p2, Lcom/google/android/material/sidesheet/SideSheetBehavior;->m:I

    invoke-virtual {p0}, LG6/a;->g()I

    goto :goto_2

    :pswitch_2
    invoke-virtual {p0}, LG6/a;->h()I

    invoke-virtual {p0}, LG6/a;->g()I

    :goto_2
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_3

    :cond_3
    invoke-static {p0}, LV0/c;->f(Ljava/util/Iterator;)Ljava/lang/ClassCastException;

    move-result-object p0

    throw p0

    :cond_4
    :goto_3
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_2
    .end packed-switch
.end method

.method public final j(Landroid/view/View;FF)V
    .locals 4

    iget v0, p0, LG6/d;->a:I

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x0

    cmpg-float v1, p3, v0

    const/4 v2, 0x6

    const/4 v3, 0x3

    iget-object p0, p0, LG6/d;->b:LR0/c;

    check-cast p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    if-gez v1, :cond_2

    iget-boolean p2, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->b:Z

    if-eqz p2, :cond_1

    :cond_0
    :goto_0
    move v2, v3

    goto/16 :goto_2

    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result p2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget p3, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->E:I

    if-le p2, p3, :cond_0

    goto/16 :goto_2

    :cond_2
    iget-boolean v1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->I:Z

    if-eqz v1, :cond_7

    invoke-virtual {p0, p1, p3}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->F(Landroid/view/View;F)Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p2

    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpg-float p2, p2, v0

    if-gez p2, :cond_3

    iget p2, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->d:I

    int-to-float p2, p2

    cmpl-float p2, p3, p2

    if-gtz p2, :cond_4

    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result p2

    iget p3, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->T:I

    invoke-virtual {p0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->z()I

    move-result v0

    add-int/2addr v0, p3

    div-int/lit8 v0, v0, 0x2

    if-le p2, v0, :cond_5

    :cond_4
    const/4 v2, 0x5

    goto/16 :goto_2

    :cond_5
    iget-boolean p2, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->b:Z

    if-eqz p2, :cond_6

    goto :goto_0

    :cond_6
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result p2

    invoke-virtual {p0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->z()I

    move-result p3

    sub-int/2addr p2, p3

    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p2

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result p3

    iget v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->E:I

    sub-int/2addr p3, v0

    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    move-result p3

    if-ge p2, p3, :cond_f

    goto :goto_0

    :cond_7
    cmpl-float v0, p3, v0

    const/4 v1, 0x4

    if-eqz v0, :cond_b

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p2

    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result p3

    cmpl-float p2, p2, p3

    if-lez p2, :cond_8

    goto :goto_1

    :cond_8
    iget-boolean p2, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->b:Z

    if-eqz p2, :cond_a

    :cond_9
    move v2, v1

    goto :goto_2

    :cond_a
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result p2

    iget p3, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->E:I

    sub-int p3, p2, p3

    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    move-result p3

    iget v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->G:I

    sub-int/2addr p2, v0

    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p2

    if-ge p3, p2, :cond_9

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_2

    :cond_b
    :goto_1
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result p2

    iget-boolean p3, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->b:Z

    if-eqz p3, :cond_c

    iget p3, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->D:I

    sub-int p3, p2, p3

    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    move-result p3

    iget v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->G:I

    sub-int/2addr p2, v0

    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p2

    if-ge p3, p2, :cond_9

    goto/16 :goto_0

    :cond_c
    iget p3, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->E:I

    if-ge p2, p3, :cond_e

    iget p3, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->G:I

    sub-int p3, p2, p3

    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    move-result p3

    if-ge p2, p3, :cond_d

    goto/16 :goto_0

    :cond_d
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_2

    :cond_e
    sub-int p3, p2, p3

    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    move-result p3

    iget v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->G:I

    sub-int/2addr p2, v0

    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p2

    if-ge p3, p2, :cond_9

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_f
    :goto_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p2, 0x1

    invoke-virtual {p0, p1, v2, p2}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->G(Landroid/view/View;IZ)V

    return-void

    :pswitch_0
    iget-object p0, p0, LG6/d;->b:LR0/c;

    check-cast p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;

    iget-object v0, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->a:LG6/a;

    iget v0, v0, LG6/a;->a:I

    packed-switch v0, :pswitch_data_1

    const/4 v0, 0x0

    cmpg-float v0, p2, v0

    if-gez v0, :cond_10

    :goto_3
    const/4 v0, 0x1

    goto :goto_4

    :cond_10
    const/4 v0, 0x0

    goto :goto_4

    :pswitch_1
    const/4 v0, 0x0

    cmpl-float v0, p2, v0

    if-lez v0, :cond_10

    goto :goto_3

    :goto_4
    const/4 v1, 0x3

    if-eqz v0, :cond_11

    goto/16 :goto_c

    :cond_11
    iget-object v0, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->a:LG6/a;

    iget v2, v0, LG6/a;->a:I

    packed-switch v2, :pswitch_data_2

    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v2

    int-to-float v2, v2

    iget-object v0, v0, LG6/a;->b:Lcom/google/android/material/sidesheet/SideSheetBehavior;

    iget v3, v0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->k:F

    mul-float/2addr v3, p2

    add-float/2addr v3, v2

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v2

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/high16 v0, 0x3f000000    # 0.5f

    cmpl-float v0, v2, v0

    if-lez v0, :cond_12

    :goto_5
    const/4 v0, 0x1

    goto :goto_6

    :cond_12
    const/4 v0, 0x0

    goto :goto_6

    :pswitch_2
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v2

    int-to-float v2, v2

    iget-object v0, v0, LG6/a;->b:Lcom/google/android/material/sidesheet/SideSheetBehavior;

    iget v3, v0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->k:F

    mul-float/2addr v3, p2

    add-float/2addr v3, v2

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v2

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/high16 v0, 0x3f000000    # 0.5f

    cmpl-float v0, v2, v0

    if-lez v0, :cond_12

    goto :goto_5

    :goto_6
    const/4 v2, 0x5

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->a:LG6/a;

    iget v3, v0, LG6/a;->a:I

    packed-switch v3, :pswitch_data_3

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v3

    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result p3

    cmpl-float p3, v3, p3

    if-lez p3, :cond_13

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p2

    iget-object p3, v0, LG6/a;->b:Lcom/google/android/material/sidesheet/SideSheetBehavior;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 p3, 0x1f4

    int-to-float p3, p3

    cmpl-float p2, p2, p3

    if-lez p2, :cond_13

    :goto_7
    const/4 p2, 0x1

    goto :goto_8

    :cond_13
    const/4 p2, 0x0

    goto :goto_8

    :pswitch_3
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v3

    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result p3

    cmpl-float p3, v3, p3

    if-lez p3, :cond_13

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p2

    iget-object p3, v0, LG6/a;->b:Lcom/google/android/material/sidesheet/SideSheetBehavior;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 p3, 0x1f4

    int-to-float p3, p3

    cmpl-float p2, p2, p3

    if-lez p2, :cond_13

    goto :goto_7

    :goto_8
    if-nez p2, :cond_15

    iget-object p2, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->a:LG6/a;

    iget p3, p2, LG6/a;->a:I

    packed-switch p3, :pswitch_data_4

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result p3

    iget-object v0, p2, LG6/a;->b:Lcom/google/android/material/sidesheet/SideSheetBehavior;

    iget v0, v0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->m:I

    invoke-virtual {p2}, LG6/a;->g()I

    move-result p2

    add-int/2addr p2, v0

    div-int/lit8 p2, p2, 0x2

    if-le p3, p2, :cond_14

    :goto_9
    const/4 p2, 0x1

    goto :goto_a

    :cond_14
    const/4 p2, 0x0

    goto :goto_a

    :pswitch_4
    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result p3

    invoke-virtual {p2}, LG6/a;->g()I

    move-result v0

    invoke-virtual {p2}, LG6/a;->h()I

    move-result p2

    sub-int/2addr v0, p2

    div-int/lit8 v0, v0, 0x2

    if-ge p3, v0, :cond_14

    goto :goto_9

    :goto_a
    if-eqz p2, :cond_18

    :cond_15
    :goto_b
    move v1, v2

    goto :goto_c

    :cond_16
    const/4 v0, 0x0

    cmpl-float v0, p2, v0

    if-eqz v0, :cond_17

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p2

    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result p3

    cmpl-float p2, p2, p3

    if-lez p2, :cond_17

    goto :goto_b

    :cond_17
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result p2

    iget-object p3, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->a:LG6/a;

    invoke-virtual {p3}, LG6/a;->g()I

    move-result p3

    sub-int p3, p2, p3

    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    move-result p3

    iget-object v0, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->a:LG6/a;

    invoke-virtual {v0}, LG6/a;->h()I

    move-result v0

    sub-int/2addr p2, v0

    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p2

    if-ge p3, p2, :cond_15

    :cond_18
    :goto_c
    const/4 p2, 0x1

    invoke-virtual {p0, p1, v1, p2}, Lcom/google/android/material/sidesheet/SideSheetBehavior;->v(Landroid/view/View;IZ)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_2
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x0
        :pswitch_3
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x0
        :pswitch_4
    .end packed-switch
.end method

.method public final k(ILandroid/view/View;)Z
    .locals 4

    iget v0, p0, LG6/d;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, LG6/d;->b:LR0/c;

    check-cast p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    iget v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->L:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    goto :goto_1

    :cond_0
    iget-boolean v3, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->a0:Z

    if-eqz v3, :cond_1

    goto :goto_1

    :cond_1
    const/4 v3, 0x3

    if-ne v0, v3, :cond_3

    iget v0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->Y:I

    if-ne v0, p1, :cond_3

    iget-object p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->V:Ljava/lang/ref/WeakReference;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_3

    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Landroid/view/View;->canScrollVertically(I)Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_1

    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    iget-object p0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->U:Ljava/lang/ref/WeakReference;

    if-eqz p0, :cond_4

    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    if-ne p0, p2, :cond_4

    move v1, v2

    :cond_4
    :goto_1
    return v1

    :pswitch_0
    iget-object p0, p0, LG6/d;->b:LR0/c;

    check-cast p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;

    iget p1, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->h:I

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p1, v1, :cond_5

    goto :goto_2

    :cond_5
    iget-object p0, p0, Lcom/google/android/material/sidesheet/SideSheetBehavior;->p:Ljava/lang/ref/WeakReference;

    if-eqz p0, :cond_6

    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    if-ne p0, p2, :cond_6

    move v0, v1

    :cond_6
    :goto_2
    return v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
