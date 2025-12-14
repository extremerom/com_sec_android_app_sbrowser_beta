.class public final Lt/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ls/t;


# instance fields
.field public final a:Landroid/content/Context;

.field public b:Landroid/content/Context;

.field public c:Ls/i;

.field public final d:Landroid/view/LayoutInflater;

.field public e:Ls/s;

.field public final f:I

.field public final g:I

.field public h:Ls/v;

.field public i:Lt/k;

.field public j:Landroid/graphics/drawable/Drawable;

.field public k:Z

.field public l:Z

.field public m:Z

.field public n:I

.field public o:I

.field public p:I

.field public q:Z

.field public final r:Landroid/util/SparseBooleanArray;

.field public s:Lt/h;

.field public t:Lt/h;

.field public u:Lc5/A;

.field public v:Lt/i;

.field public final w:Lt/D;

.field public final x:Z

.field public final y:Ljava/text/NumberFormat;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lt/m;->a:Landroid/content/Context;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lt/m;->d:Landroid/view/LayoutInflater;

    const v0, 0x7f0e0838

    iput v0, p0, Lt/m;->f:I

    const v0, 0x7f0e0837

    iput v0, p0, Lt/m;->g:I

    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lt/m;->r:Landroid/util/SparseBooleanArray;

    new-instance v0, Lt/D;

    const/4 v1, 0x2

    invoke-direct {v0, v1, p0}, Lt/D;-><init>(ILjava/lang/Object;)V

    iput-object v0, p0, Lt/m;->w:Lt/D;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-static {v0}, Ljava/text/NumberFormat;->getInstance(Ljava/util/Locale;)Ljava/text/NumberFormat;

    move-result-object v0

    iput-object v0, p0, Lt/m;->y:Ljava/text/NumberFormat;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f050007

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    iput-boolean p1, p0, Lt/m;->x:Z

    return-void
.end method


# virtual methods
.method public final a(Ls/i;Z)V
    .locals 2

    invoke-virtual {p0}, Lt/m;->i()Z

    iget-object v0, p0, Lt/m;->t:Lt/h;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ls/r;->b()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, v0, Ls/r;->i:Ls/y;

    invoke-virtual {v0}, Ls/y;->dismiss()V

    :cond_0
    iget-object p0, p0, Lt/m;->e:Ls/s;

    if-eqz p0, :cond_1

    invoke-interface {p0, p1, p2}, Ls/s;->a(Ls/i;Z)V

    :cond_1
    return-void
.end method

.method public final b(Ls/k;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final c(Ls/z;)Z
    .locals 9

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    invoke-virtual {p1}, Ls/i;->hasVisibleItems()Z

    move-result v1

    if-nez v1, :cond_1

    return v0

    :cond_1
    move-object v1, p1

    :goto_0
    iget-object v2, v1, Ls/z;->z:Ls/i;

    iget-object v3, p0, Lt/m;->c:Ls/i;

    if-eq v2, v3, :cond_2

    move-object v1, v2

    check-cast v1, Ls/z;

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lt/m;->h:Ls/v;

    check-cast v2, Landroid/view/ViewGroup;

    const/4 v3, 0x0

    if-nez v2, :cond_3

    goto :goto_2

    :cond_3
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    move v5, v0

    :goto_1
    if-ge v5, v4, :cond_5

    invoke-virtual {v2, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    instance-of v7, v6, Ls/u;

    if-eqz v7, :cond_4

    move-object v7, v6

    check-cast v7, Ls/u;

    invoke-interface {v7}, Ls/u;->getItemData()Ls/k;

    move-result-object v7

    iget-object v8, v1, Ls/z;->A:Ls/k;

    if-ne v7, v8, :cond_4

    move-object v3, v6

    goto :goto_2

    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_5
    :goto_2
    if-nez v3, :cond_6

    return v0

    :cond_6
    iget-object v1, p1, Ls/z;->A:Ls/k;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, p1, Ls/i;->f:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    move v2, v0

    :goto_3
    const/4 v4, 0x1

    if-ge v2, v1, :cond_8

    invoke-virtual {p1, v2}, Ls/i;->getItem(I)Landroid/view/MenuItem;

    move-result-object v5

    invoke-interface {v5}, Landroid/view/MenuItem;->isVisible()Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-interface {v5}, Landroid/view/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    if-eqz v5, :cond_7

    move v1, v4

    goto :goto_4

    :cond_7
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_8
    move v1, v0

    :goto_4
    new-instance v2, Lt/h;

    iget-object v5, p0, Lt/m;->b:Landroid/content/Context;

    invoke-direct {v2, p0, v5, p1, v3}, Lt/h;-><init>(Lt/m;Landroid/content/Context;Ls/z;Landroid/view/View;)V

    iput-object v2, p0, Lt/m;->t:Lt/h;

    iput-boolean v1, v2, Ls/r;->g:Z

    iget-object v3, v2, Ls/r;->i:Ls/y;

    if-eqz v3, :cond_9

    iget-object v3, v3, Ls/y;->d:Ls/f;

    iput-boolean v1, v3, Ls/f;->e:Z

    :cond_9
    invoke-virtual {v2}, Ls/r;->b()Z

    move-result v1

    if-eqz v1, :cond_a

    goto :goto_5

    :cond_a
    iget-object v1, v2, Ls/r;->e:Landroid/view/View;

    if-eqz v1, :cond_c

    invoke-virtual {v2, v0, v0, v0, v0}, Ls/r;->d(IIZZ)V

    :goto_5
    iget-object p0, p0, Lt/m;->e:Ls/s;

    if-eqz p0, :cond_b

    invoke-interface {p0, p1}, Ls/s;->K(Ls/i;)Z

    :cond_b
    return v4

    :cond_c
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "MenuPopupHelper cannot be used without an anchor"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final d()V
    .locals 11

    iget-object v0, p0, Lt/m;->h:Ls/v;

    check-cast v0, Landroid/view/ViewGroup;

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-nez v0, :cond_0

    goto/16 :goto_3

    :cond_0
    iget-object v3, p0, Lt/m;->c:Ls/i;

    if-eqz v3, :cond_6

    invoke-virtual {v3}, Ls/i;->i()V

    iget-object v3, p0, Lt/m;->c:Ls/i;

    invoke-virtual {v3}, Ls/i;->l()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    move v5, v2

    move v6, v5

    :goto_0
    if-ge v5, v4, :cond_7

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ls/k;

    invoke-virtual {v7}, Ls/k;->g()Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-virtual {v0, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    instance-of v9, v8, Ls/u;

    if-eqz v9, :cond_1

    move-object v9, v8

    check-cast v9, Ls/u;

    invoke-interface {v9}, Ls/u;->getItemData()Ls/k;

    move-result-object v9

    goto :goto_1

    :cond_1
    move-object v9, v1

    :goto_1
    invoke-virtual {p0, v7, v8, v0}, Lt/m;->h(Ls/k;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v10

    if-eq v7, v9, :cond_2

    invoke-virtual {v10, v2}, Landroid/view/View;->setPressed(Z)V

    invoke-virtual {v10}, Landroid/view/View;->jumpDrawablesToCurrentState()V

    :cond_2
    if-eq v10, v8, :cond_4

    invoke-virtual {v10}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v7

    check-cast v7, Landroid/view/ViewGroup;

    if-eqz v7, :cond_3

    invoke-virtual {v7, v10}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_3
    iget-object v7, p0, Lt/m;->h:Ls/v;

    check-cast v7, Landroid/view/ViewGroup;

    invoke-virtual {v7, v10, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    :cond_4
    add-int/lit8 v6, v6, 0x1

    :cond_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_6
    move v6, v2

    :cond_7
    :goto_2
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-ge v6, v3, :cond_9

    invoke-virtual {v0, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    iget-object v4, p0, Lt/m;->i:Lt/k;

    if-ne v3, v4, :cond_8

    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_8
    invoke-virtual {v0, v6}, Landroid/view/ViewGroup;->removeViewAt(I)V

    goto :goto_2

    :cond_9
    :goto_3
    iget-object v0, p0, Lt/m;->h:Ls/v;

    if-eqz v0, :cond_a

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    :cond_a
    iget-object v0, p0, Lt/m;->c:Ls/i;

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Ls/i;->i()V

    iget-object v0, v0, Ls/i;->i:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    move v4, v2

    :goto_4
    if-ge v4, v3, :cond_b

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ls/k;

    iget-object v5, v5, Ls/k;->A:Ls/l;

    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    :cond_b
    iget-object v0, p0, Lt/m;->c:Ls/i;

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Ls/i;->i()V

    iget-object v1, v0, Ls/i;->j:Ljava/util/ArrayList;

    :cond_c
    iget-boolean v0, p0, Lt/m;->l:Z

    const/4 v3, 0x1

    if-eqz v0, :cond_e

    if-eqz v1, :cond_e

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ne v0, v3, :cond_d

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ls/k;

    iget-boolean v0, v0, Ls/k;->C:Z

    xor-int/2addr v0, v3

    goto :goto_5

    :cond_d
    if-lez v0, :cond_e

    move v0, v3

    goto :goto_5

    :cond_e
    move v0, v2

    :goto_5
    if-eqz v0, :cond_11

    iget-object v0, p0, Lt/m;->i:Lt/k;

    if-nez v0, :cond_f

    new-instance v0, Lt/k;

    iget-object v1, p0, Lt/m;->a:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lt/k;-><init>(Lt/m;Landroid/content/Context;)V

    iput-object v0, p0, Lt/m;->i:Lt/k;

    const v1, 0x7f0b0afe

    invoke-virtual {v0, v1}, Landroid/view/View;->setId(I)V

    :cond_f
    iget-object v0, p0, Lt/m;->i:Lt/k;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lt/m;->h:Ls/v;

    if-eq v0, v1, :cond_13

    if-eqz v0, :cond_10

    iget-object v1, p0, Lt/m;->i:Lt/k;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_10
    iget-object v0, p0, Lt/m;->h:Ls/v;

    check-cast v0, Landroidx/appcompat/widget/ActionMenuView;

    if-eqz v0, :cond_13

    iget-object v1, p0, Lt/m;->i:Lt/k;

    invoke-static {}, Landroidx/appcompat/widget/ActionMenuView;->j()Lt/o;

    move-result-object v4

    iput-boolean v3, v4, Lt/o;->a:Z

    invoke-virtual {v0, v1, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_6

    :cond_11
    iget-object v0, p0, Lt/m;->i:Lt/k;

    if-eqz v0, :cond_13

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    iget-object v1, p0, Lt/m;->h:Ls/v;

    if-ne v0, v1, :cond_13

    if-eqz v1, :cond_12

    check-cast v1, Landroid/view/ViewGroup;

    iget-object v0, p0, Lt/m;->i:Lt/k;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_12
    invoke-virtual {p0}, Lt/m;->j()Z

    move-result v0

    if-eqz v0, :cond_13

    invoke-virtual {p0}, Lt/m;->i()Z

    :cond_13
    :goto_6
    iget-object v0, p0, Lt/m;->i:Lt/k;

    if-eqz v0, :cond_18

    iget-object v0, p0, Lt/m;->h:Ls/v;

    if-eqz v0, :cond_18

    check-cast v0, Landroidx/appcompat/widget/ActionMenuView;

    invoke-virtual {v0}, Landroidx/appcompat/widget/ActionMenuView;->getOverflowBadgeText()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lt/m;->i:Lt/k;

    invoke-virtual {v0}, Landroidx/appcompat/widget/ActionMenuView;->getSumOfDigitsInBadges()I

    move-result v0

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v4, 0x63

    if-le v0, v4, :cond_14

    move v0, v4

    :cond_14
    iget-object v4, v3, Lt/k;->a:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v1, :cond_15

    invoke-virtual {v3}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v6, 0x7f0711b7

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {v3}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    float-to-int v6, v6

    const-string v7, ""

    goto :goto_7

    :cond_15
    iget-object v1, v3, Lt/k;->f:Lt/m;

    iget-object v1, v1, Lt/m;->y:Ljava/text/NumberFormat;

    int-to-long v6, v0

    invoke-virtual {v1, v6, v7}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v6, 0x7f07105c

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v8

    int-to-float v8, v8

    invoke-virtual {v3}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f07105b

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v9

    mul-float/2addr v9, v8

    add-float/2addr v9, v1

    float-to-int v1, v9

    invoke-virtual {v3}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    invoke-virtual {v3}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8, v10}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v8

    add-float/2addr v8, v6

    float-to-int v6, v8

    invoke-virtual {v3}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0711bb

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v8

    float-to-int v8, v8

    iput v8, v5, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    invoke-virtual {v3}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0711ba

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v8

    float-to-int v8, v8

    invoke-virtual {v5, v8}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    :goto_7
    iget-object v8, v3, Lt/k;->b:Landroid/widget/TextView;

    invoke-virtual {v8, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iput v1, v5, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    iput v6, v5, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    invoke-virtual {v4, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    if-lez v0, :cond_16

    goto :goto_8

    :cond_16
    const/16 v2, 0x8

    :goto_8
    invoke-virtual {v4, v2}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v0

    iget-object v1, v3, Lt/k;->c:Landroid/view/View;

    if-nez v0, :cond_17

    instance-of v0, v1, Lt/j;

    if-eqz v0, :cond_18

    iget-object v0, v3, Lt/k;->e:Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_9

    :cond_17
    instance-of v0, v1, Lt/j;

    if-eqz v0, :cond_18

    iget-object v0, v3, Lt/k;->d:Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_18
    :goto_9
    iget-object v0, p0, Lt/m;->i:Lt/k;

    if-eqz v0, :cond_19

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1a

    :cond_19
    invoke-virtual {p0}, Lt/m;->j()Z

    move-result v0

    if-eqz v0, :cond_1a

    invoke-virtual {p0}, Lt/m;->i()Z

    :cond_1a
    iget-object v0, p0, Lt/m;->h:Ls/v;

    if-eqz v0, :cond_1b

    check-cast v0, Landroidx/appcompat/widget/ActionMenuView;

    iget-boolean p0, p0, Lt/m;->l:Z

    invoke-virtual {v0, p0}, Landroidx/appcompat/widget/ActionMenuView;->setOverflowReserved(Z)V

    :cond_1b
    return-void
.end method

.method public final e(Landroid/content/Context;Ls/i;)V
    .locals 4

    iput-object p1, p0, Lt/m;->b:Landroid/content/Context;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    iput-object p2, p0, Lt/m;->c:Ls/i;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    iget-boolean v0, p0, Lt/m;->m:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lt/m;->l:Z

    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v0, v0

    const v1, 0x3f333333    # 0.7f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lt/m;->n:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget v0, p1, Landroid/content/res/Configuration;->screenWidthDp:I

    iget v1, p1, Landroid/content/res/Configuration;->screenHeightDp:I

    iget p1, p1, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    const/16 v2, 0x258

    if-gt p1, v2, :cond_7

    if-gt v0, v2, :cond_7

    const/16 p1, 0x2d0

    const/16 v2, 0x3c0

    if-le v0, v2, :cond_1

    if-gt v1, p1, :cond_7

    :cond_1
    if-le v0, p1, :cond_2

    if-le v1, v2, :cond_2

    goto :goto_1

    :cond_2
    const/16 p1, 0x1f4

    if-ge v0, p1, :cond_6

    const/16 p1, 0x1e0

    const/16 v2, 0x280

    if-le v0, v2, :cond_3

    if-gt v1, p1, :cond_6

    :cond_3
    if-le v0, p1, :cond_4

    if-le v1, v2, :cond_4

    goto :goto_0

    :cond_4
    const/16 p1, 0x168

    if-lt v0, p1, :cond_5

    const/4 p1, 0x3

    goto :goto_2

    :cond_5
    const/4 p1, 0x2

    goto :goto_2

    :cond_6
    :goto_0
    const/4 p1, 0x4

    goto :goto_2

    :cond_7
    :goto_1
    const/4 p1, 0x5

    :goto_2
    iput p1, p0, Lt/m;->p:I

    iget p1, p0, Lt/m;->n:I

    iget-boolean v0, p0, Lt/m;->l:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lt/m;->i:Lt/k;

    if-nez v0, :cond_a

    new-instance v0, Lt/k;

    iget-object v2, p0, Lt/m;->a:Landroid/content/Context;

    invoke-direct {v0, p0, v2}, Lt/k;-><init>(Lt/m;Landroid/content/Context;)V

    iput-object v0, p0, Lt/m;->i:Lt/k;

    const v2, 0x7f0b0afe

    invoke-virtual {v0, v2}, Landroid/view/View;->setId(I)V

    iget-boolean v0, p0, Lt/m;->k:Z

    const/4 v2, 0x0

    if-eqz v0, :cond_9

    iget-boolean v0, p0, Lt/m;->x:Z

    if-eqz v0, :cond_8

    iget-object v0, p0, Lt/m;->i:Lt/k;

    iget-object v0, v0, Lt/k;->c:Landroid/view/View;

    check-cast v0, Landroidx/appcompat/widget/AppCompatImageView;

    iget-object v3, p0, Lt/m;->j:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v3}, Landroidx/appcompat/widget/AppCompatImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_8
    iput-object v1, p0, Lt/m;->j:Landroid/graphics/drawable/Drawable;

    iput-boolean v2, p0, Lt/m;->k:Z

    :cond_9
    invoke-static {v2, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    iget-object v1, p0, Lt/m;->i:Lt/k;

    invoke-virtual {v1, v0, v0}, Landroid/view/View;->measure(II)V

    :cond_a
    iget-object v0, p0, Lt/m;->i:Lt/k;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    sub-int/2addr p1, v0

    goto :goto_3

    :cond_b
    iput-object v1, p0, Lt/m;->i:Lt/k;

    :goto_3
    iput p1, p0, Lt/m;->o:I

    invoke-virtual {p2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    iget p0, p0, Landroid/util/DisplayMetrics;->density:F

    return-void
.end method

.method public final f(Ls/k;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final g()Z
    .locals 16

    move-object/from16 v0, p0

    iget-object v1, v0, Lt/m;->c:Ls/i;

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ls/i;->l()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    goto :goto_0

    :cond_0
    move v4, v3

    const/4 v1, 0x0

    :goto_0
    iget v5, v0, Lt/m;->p:I

    iget v6, v0, Lt/m;->o:I

    invoke-static {v3, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    iget-object v8, v0, Lt/m;->h:Ls/v;

    if-nez v8, :cond_1

    const-string v0, "ActionMenuPresenter"

    const-string v1, "mMenuView is null, maybe Menu has not been initialized."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_1
    check-cast v8, Landroid/view/ViewGroup;

    move v9, v3

    move v10, v9

    move v11, v10

    move v12, v11

    :goto_1
    const/4 v13, 0x2

    const/4 v14, 0x1

    if-ge v9, v4, :cond_5

    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ls/k;

    iget v3, v15, Ls/k;->y:I

    and-int/lit8 v2, v3, 0x2

    if-ne v2, v13, :cond_2

    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    :cond_2
    and-int/lit8 v2, v3, 0x1

    if-ne v2, v14, :cond_3

    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    :cond_3
    move v10, v14

    :goto_2
    iget-boolean v2, v0, Lt/m;->q:Z

    if-eqz v2, :cond_4

    iget-boolean v2, v15, Ls/k;->C:Z

    if-eqz v2, :cond_4

    const/4 v5, 0x0

    :cond_4
    add-int/lit8 v9, v9, 0x1

    const/4 v3, 0x0

    goto :goto_1

    :cond_5
    iget-boolean v2, v0, Lt/m;->l:Z

    if-eqz v2, :cond_7

    if-nez v10, :cond_6

    add-int/2addr v12, v11

    if-le v12, v5, :cond_7

    :cond_6
    add-int/lit8 v5, v5, -0x1

    :cond_7
    sub-int/2addr v5, v11

    iget-object v2, v0, Lt/m;->r:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2}, Landroid/util/SparseBooleanArray;->clear()V

    const/4 v3, 0x0

    const/4 v9, 0x0

    :goto_3
    if-ge v3, v4, :cond_17

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ls/k;

    iget v11, v10, Ls/k;->y:I

    and-int/lit8 v12, v11, 0x2

    if-ne v12, v13, :cond_8

    move v12, v14

    goto :goto_4

    :cond_8
    const/4 v12, 0x0

    :goto_4
    iget v15, v10, Ls/k;->b:I

    if-eqz v12, :cond_b

    const/4 v12, 0x0

    invoke-virtual {v0, v10, v12, v8}, Lt/m;->h(Ls/k;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v11

    invoke-virtual {v11, v7, v7}, Landroid/view/View;->measure(II)V

    invoke-virtual {v11}, Landroid/view/View;->getMeasuredWidth()I

    move-result v11

    sub-int/2addr v6, v11

    if-nez v9, :cond_9

    move v9, v11

    :cond_9
    if-eqz v15, :cond_a

    invoke-virtual {v2, v15, v14}, Landroid/util/SparseBooleanArray;->put(IZ)V

    :cond_a
    invoke-virtual {v10, v14}, Ls/k;->i(Z)V

    :goto_5
    const/4 v11, 0x0

    goto/16 :goto_a

    :cond_b
    and-int/lit8 v11, v11, 0x1

    if-ne v11, v14, :cond_16

    invoke-virtual {v2, v15}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v11

    if-gtz v5, :cond_c

    if-eqz v11, :cond_d

    :cond_c
    if-lez v6, :cond_d

    move v12, v14

    goto :goto_6

    :cond_d
    const/4 v12, 0x0

    :goto_6
    const/4 v13, 0x0

    if-eqz v12, :cond_10

    invoke-virtual {v0, v10, v13, v8}, Lt/m;->h(Ls/k;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v14

    invoke-virtual {v14, v7, v7}, Landroid/view/View;->measure(II)V

    invoke-virtual {v14}, Landroid/view/View;->getMeasuredWidth()I

    move-result v14

    sub-int/2addr v6, v14

    if-nez v9, :cond_e

    move v9, v14

    :cond_e
    if-ltz v6, :cond_f

    const/4 v14, 0x1

    goto :goto_7

    :cond_f
    const/4 v14, 0x0

    :goto_7
    and-int/2addr v12, v14

    :cond_10
    if-eqz v12, :cond_11

    if-eqz v15, :cond_11

    const/4 v14, 0x1

    invoke-virtual {v2, v15, v14}, Landroid/util/SparseBooleanArray;->put(IZ)V

    goto :goto_9

    :cond_11
    if-eqz v11, :cond_14

    const/4 v11, 0x0

    invoke-virtual {v2, v15, v11}, Landroid/util/SparseBooleanArray;->put(IZ)V

    const/4 v11, 0x0

    :goto_8
    if-ge v11, v3, :cond_14

    invoke-virtual {v1, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ls/k;

    iget v13, v14, Ls/k;->b:I

    if-ne v13, v15, :cond_13

    invoke-virtual {v14}, Ls/k;->g()Z

    move-result v13

    if-eqz v13, :cond_12

    add-int/lit8 v5, v5, 0x1

    :cond_12
    const/4 v13, 0x0

    invoke-virtual {v14, v13}, Ls/k;->i(Z)V

    :cond_13
    add-int/lit8 v11, v11, 0x1

    const/4 v13, 0x0

    goto :goto_8

    :cond_14
    :goto_9
    if-eqz v12, :cond_15

    add-int/lit8 v5, v5, -0x1

    :cond_15
    invoke-virtual {v10, v12}, Ls/k;->i(Z)V

    goto :goto_5

    :cond_16
    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Ls/k;->i(Z)V

    :goto_a
    add-int/lit8 v3, v3, 0x1

    const/4 v13, 0x2

    const/4 v14, 0x1

    goto/16 :goto_3

    :cond_17
    move v3, v14

    return v3
.end method

.method public final h(Ls/k;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    invoke-virtual {p1}, Ls/k;->getActionView()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ls/k;->f()Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_0
    instance-of v0, p2, Ls/u;

    if-eqz v0, :cond_1

    check-cast p2, Ls/u;

    goto :goto_0

    :cond_1
    iget p2, p0, Lt/m;->g:I

    iget-object v0, p0, Lt/m;->d:Landroid/view/LayoutInflater;

    invoke-virtual {v0, p2, p3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    check-cast p2, Ls/u;

    :goto_0
    invoke-interface {p2, p1}, Ls/u;->c(Ls/k;)V

    iget-object v0, p0, Lt/m;->h:Ls/v;

    check-cast v0, Landroidx/appcompat/widget/ActionMenuView;

    move-object v2, p2

    check-cast v2, Landroidx/appcompat/view/menu/ActionMenuItemView;

    invoke-virtual {v2, v0}, Landroidx/appcompat/view/menu/ActionMenuItemView;->setItemInvoker(Ls/h;)V

    iget-object v0, p0, Lt/m;->v:Lt/i;

    if-nez v0, :cond_2

    new-instance v0, Lt/i;

    invoke-direct {v0, p0}, Lt/i;-><init>(Lt/m;)V

    iput-object v0, p0, Lt/m;->v:Lt/i;

    :cond_2
    iget-object p0, p0, Lt/m;->v:Lt/i;

    invoke-virtual {v2, p0}, Landroidx/appcompat/view/menu/ActionMenuItemView;->setPopupCallback(Ls/c;)V

    move-object v0, p2

    check-cast v0, Landroid/view/View;

    :cond_3
    iget-boolean p0, p1, Ls/k;->C:Z

    if-eqz p0, :cond_4

    const/16 v1, 0x8

    :cond_4
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    check-cast p3, Landroidx/appcompat/widget/ActionMenuView;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of p1, p0, Lt/o;

    if-nez p1, :cond_5

    invoke-static {p0}, Landroidx/appcompat/widget/ActionMenuView;->k(Landroid/view/ViewGroup$LayoutParams;)Lt/o;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_5
    return-object v0
.end method

.method public final i()Z
    .locals 3

    iget-object v0, p0, Lt/m;->u:Lc5/A;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object v2, p0, Lt/m;->h:Ls/v;

    if-eqz v2, :cond_0

    check-cast v2, Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    const/4 v0, 0x0

    iput-object v0, p0, Lt/m;->u:Lc5/A;

    return v1

    :cond_0
    iget-object p0, p0, Lt/m;->s:Lt/h;

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Ls/r;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Ls/r;->i:Ls/y;

    invoke-virtual {p0}, Ls/y;->dismiss()V

    :cond_1
    return v1

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method public final j()Z
    .locals 0

    iget-object p0, p0, Lt/m;->s:Lt/h;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ls/r;->b()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final k()V
    .locals 5

    iget-object v0, p0, Lt/m;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v2, v1, Landroid/content/res/Configuration;->screenWidthDp:I

    iget v3, v1, Landroid/content/res/Configuration;->screenHeightDp:I

    iget v1, v1, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    const/16 v4, 0x258

    if-gt v1, v4, :cond_6

    if-gt v2, v4, :cond_6

    const/16 v1, 0x2d0

    const/16 v4, 0x3c0

    if-le v2, v4, :cond_0

    if-gt v3, v1, :cond_6

    :cond_0
    if-le v2, v1, :cond_1

    if-le v3, v4, :cond_1

    goto :goto_1

    :cond_1
    const/16 v1, 0x1f4

    if-ge v2, v1, :cond_5

    const/16 v1, 0x1e0

    const/16 v4, 0x280

    if-le v2, v4, :cond_2

    if-gt v3, v1, :cond_5

    :cond_2
    if-le v2, v1, :cond_3

    if-le v3, v4, :cond_3

    goto :goto_0

    :cond_3
    const/16 v1, 0x168

    if-lt v2, v1, :cond_4

    const/4 v1, 0x3

    goto :goto_2

    :cond_4
    const/4 v1, 0x2

    goto :goto_2

    :cond_5
    :goto_0
    const/4 v1, 0x4

    goto :goto_2

    :cond_6
    :goto_1
    const/4 v1, 0x5

    :goto_2
    iput v1, p0, Lt/m;->p:I

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v0, v0

    const v1, 0x3f333333    # 0.7f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lt/m;->n:I

    iget-boolean v1, p0, Lt/m;->l:Z

    if-eqz v1, :cond_7

    iget-object v1, p0, Lt/m;->i:Lt/k;

    if-eqz v1, :cond_7

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p0, Lt/m;->o:I

    goto :goto_3

    :cond_7
    iput v0, p0, Lt/m;->o:I

    :goto_3
    iget-object p0, p0, Lt/m;->c:Ls/i;

    if-eqz p0, :cond_8

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ls/i;->p(Z)V

    :cond_8
    return-void
.end method

.method public final l()Z
    .locals 4

    iget-boolean v0, p0, Lt/m;->l:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lt/m;->j()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lt/m;->c:Ls/i;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lt/m;->h:Ls/v;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lt/m;->u:Lc5/A;

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ls/i;->i()V

    iget-object v0, v0, Ls/i;->j:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lt/h;

    iget-object v1, p0, Lt/m;->b:Landroid/content/Context;

    iget-object v2, p0, Lt/m;->c:Ls/i;

    iget-object v3, p0, Lt/m;->i:Lt/k;

    invoke-direct {v0, p0, v1, v2, v3}, Lt/h;-><init>(Lt/m;Landroid/content/Context;Ls/i;Landroid/view/View;)V

    new-instance v1, Lc5/A;

    const/16 v2, 0xd

    invoke-direct {v1, v2, p0, v0}, Lc5/A;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    iput-object v1, p0, Lt/m;->u:Lc5/A;

    iget-object p0, p0, Lt/m;->h:Ls/v;

    check-cast p0, Landroid/view/View;

    invoke-virtual {p0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
