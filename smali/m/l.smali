.class public final Lm/l;
.super Lm/y;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface;


# instance fields
.field public final f:Lm/j;


# direct methods
.method public constructor <init>(Landroid/view/ContextThemeWrapper;I)V
    .locals 1

    invoke-static {p2, p1}, Lm/l;->h(ILandroid/content/Context;)I

    move-result p2

    invoke-direct {p0, p1, p2}, Lm/y;-><init>(Landroid/content/Context;I)V

    new-instance p1, Lm/j;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-direct {p1, p2, p0, v0}, Lm/j;-><init>(Landroid/content/Context;Lm/l;Landroid/view/Window;)V

    iput-object p1, p0, Lm/l;->f:Lm/j;

    return-void
.end method

.method public static h(ILandroid/content/Context;)I
    .locals 2

    ushr-int/lit8 v0, p0, 0x18

    and-int/lit16 v0, v0, 0xff

    const/4 v1, 0x1

    if-lt v0, v1, :cond_0

    return p0

    :cond_0
    new-instance p0, Landroid/util/TypedValue;

    invoke-direct {p0}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p1

    const v0, 0x7f040031

    invoke-virtual {p1, v0, p0, v1}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    iget p0, p0, Landroid/util/TypedValue;->resourceId:I

    return p0
.end method


# virtual methods
.method public final g(I)Landroid/widget/Button;
    .locals 1

    const/4 v0, -0x3

    iget-object p0, p0, Lm/l;->f:Lm/j;

    if-eq p1, v0, :cond_2

    const/4 v0, -0x2

    if-eq p1, v0, :cond_1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lm/j;->k:Landroid/widget/Button;

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lm/j;->n:Landroid/widget/Button;

    goto :goto_0

    :cond_2
    iget-object p0, p0, Lm/j;->q:Landroid/widget/Button;

    :goto_0
    return-object p0
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 19

    const/4 v2, 0x1

    invoke-super/range {p0 .. p1}, Lm/y;->onCreate(Landroid/os/Bundle;)V

    move-object/from16 v3, p0

    iget-object v3, v3, Lm/l;->f:Lm/j;

    iget-object v4, v3, Lm/j;->b:Lm/l;

    iget v5, v3, Lm/j;->B:I

    invoke-virtual {v4, v5}, Lm/y;->setContentView(I)V

    iget-object v4, v3, Lm/j;->c:Landroid/view/Window;

    const v5, 0x7f0b0883

    invoke-virtual {v4, v5}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v5

    const v6, 0x7f0b076a

    invoke-virtual {v4, v6}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v6

    new-instance v7, LJ6/j;

    invoke-direct {v7, v3, v5, v2}, LJ6/j;-><init>(Ljava/lang/Object;Landroid/view/View;I)V

    invoke-virtual {v5, v7}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    const v7, 0x7f0b0dab

    invoke-virtual {v5, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    const v9, 0x7f0b02f0

    invoke-virtual {v5, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    const v11, 0x7f0b01ec

    invoke-virtual {v5, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    const v13, 0x7f0b038c

    invoke-virtual {v5, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/view/ViewGroup;

    iget-object v14, v3, Lm/j;->g:Landroid/view/View;

    const/4 v15, 0x0

    iget-object v0, v3, Lm/j;->a:Landroid/content/Context;

    if-eqz v14, :cond_0

    goto :goto_0

    :cond_0
    iget v14, v3, Lm/j;->h:I

    if-eqz v14, :cond_1

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v14

    iget v1, v3, Lm/j;->h:I

    invoke-virtual {v14, v1, v13, v15}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v14

    goto :goto_0

    :cond_1
    const/4 v14, 0x0

    :goto_0
    if-eqz v14, :cond_2

    move v1, v2

    goto :goto_1

    :cond_2
    move v1, v15

    :goto_1
    if-eqz v1, :cond_3

    invoke-static {v14}, Lm/j;->a(Landroid/view/View;)Z

    move-result v16

    if-nez v16, :cond_4

    :cond_3
    const/high16 v2, 0x20000

    invoke-virtual {v4, v2, v2}, Landroid/view/Window;->setFlags(II)V

    :cond_4
    const/4 v2, -0x1

    const/16 v11, 0x8

    if-eqz v1, :cond_7

    const v1, 0x7f0b038b

    invoke-virtual {v4, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    new-instance v9, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v9, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v14, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-boolean v9, v3, Lm/j;->j:Z

    if-eqz v9, :cond_5

    invoke-virtual {v1, v15, v15, v15, v15}, Landroid/view/View;->setPadding(IIII)V

    :cond_5
    iget-object v1, v3, Lm/j;->f:Landroidx/appcompat/app/AlertController$RecycleListView;

    if-eqz v1, :cond_8

    invoke-virtual {v13}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    instance-of v1, v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v9, 0x0

    if-eqz v1, :cond_6

    invoke-virtual {v13}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    iput v9, v1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    goto :goto_2

    :cond_6
    invoke-virtual {v13}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Lt/k0;

    iput v9, v1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    goto :goto_2

    :cond_7
    invoke-virtual {v13, v11}, Landroid/view/View;->setVisibility(I)V

    :cond_8
    :goto_2
    invoke-virtual {v13, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const v7, 0x7f0b02f0

    invoke-virtual {v13, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    const v9, 0x7f0b01ec

    invoke-virtual {v13, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    invoke-static {v1, v8}, Lm/j;->c(Landroid/view/View;Landroid/view/View;)Landroid/view/ViewGroup;

    move-result-object v1

    invoke-static {v7, v10}, Lm/j;->c(Landroid/view/View;Landroid/view/View;)Landroid/view/ViewGroup;

    move-result-object v7

    invoke-static {v9, v12}, Lm/j;->c(Landroid/view/View;Landroid/view/View;)Landroid/view/ViewGroup;

    move-result-object v9

    if-ne v9, v12, :cond_9

    new-instance v12, Lf1/y;

    const/4 v14, 0x1

    invoke-direct {v12, v14, v3}, Lf1/y;-><init>(ILjava/lang/Object;)V

    goto :goto_3

    :cond_9
    const/4 v12, 0x0

    :goto_3
    iput-object v12, v3, Lm/j;->H:Lf1/y;

    const v12, 0x7f0b0a72

    invoke-virtual {v4, v12}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroidx/core/widget/NestedScrollView;

    iput-object v12, v3, Lm/j;->t:Landroidx/core/widget/NestedScrollView;

    invoke-virtual {v12, v15}, Landroid/view/View;->setFocusable(Z)V

    iget-object v12, v3, Lm/j;->t:Landroidx/core/widget/NestedScrollView;

    invoke-virtual {v12, v15}, Landroidx/core/widget/NestedScrollView;->setNestedScrollingEnabled(Z)V

    const v12, 0x102000b

    invoke-virtual {v7, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    iput-object v12, v3, Lm/j;->x:Landroid/widget/TextView;

    if-nez v12, :cond_a

    goto :goto_4

    :cond_a
    iget-object v14, v3, Lm/j;->e:Ljava/lang/CharSequence;

    if-eqz v14, :cond_b

    invoke-virtual {v12, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v12, v3, Lm/j;->x:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x7f0710aa

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v14

    invoke-virtual {v3, v12, v14}, Lm/j;->b(Landroid/widget/TextView;I)V

    goto :goto_4

    :cond_b
    invoke-virtual {v12, v11}, Landroid/view/View;->setVisibility(I)V

    iget-object v12, v3, Lm/j;->t:Landroidx/core/widget/NestedScrollView;

    iget-object v14, v3, Lm/j;->x:Landroid/widget/TextView;

    invoke-virtual {v12, v14}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    iget-object v12, v3, Lm/j;->f:Landroidx/appcompat/app/AlertController$RecycleListView;

    if-eqz v12, :cond_c

    iget-object v12, v3, Lm/j;->t:Landroidx/core/widget/NestedScrollView;

    invoke-virtual {v12}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v12

    check-cast v12, Landroid/view/ViewGroup;

    iget-object v14, v3, Lm/j;->t:Landroidx/core/widget/NestedScrollView;

    invoke-virtual {v12, v14}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v14

    invoke-virtual {v12, v14}, Landroid/view/ViewGroup;->removeViewAt(I)V

    iget-object v15, v3, Lm/j;->f:Landroidx/appcompat/app/AlertController$RecycleListView;

    new-instance v11, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v11, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v12, v15, v14, v11}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    goto :goto_4

    :cond_c
    invoke-virtual {v7, v11}, Landroid/view/View;->setVisibility(I)V

    :goto_4
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    if-eqz v11, :cond_d

    const-string v12, "show_button_background"

    const/4 v14, 0x0

    invoke-static {v11, v12, v14}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v11

    const/4 v12, 0x1

    if-ne v11, v12, :cond_e

    move v11, v12

    goto :goto_5

    :cond_d
    const/4 v12, 0x1

    :cond_e
    const/4 v11, 0x0

    :goto_5
    new-instance v14, Landroid/util/TypedValue;

    invoke-direct {v14}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v15

    const v2, 0x1010031

    invoke-virtual {v15, v2, v14, v12}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    iget v2, v14, Landroid/util/TypedValue;->resourceId:I

    if-lez v2, :cond_f

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget v12, v14, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v2, v12}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    goto :goto_6

    :cond_f
    const/4 v2, -0x1

    :goto_6
    const v12, 0x1020019

    invoke-virtual {v9, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/Button;

    iput-object v12, v3, Lm/j;->k:Landroid/widget/Button;

    iget-object v15, v3, Lm/j;->K:Lm/d;

    invoke-virtual {v12, v15}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget v12, v14, Landroid/util/TypedValue;->resourceId:I

    if-lez v12, :cond_10

    iget-object v12, v3, Lm/j;->k:Landroid/widget/Button;

    invoke-static {v12, v11, v2}, LG5/r3;->d(Landroid/widget/TextView;ZI)V

    goto :goto_7

    :cond_10
    iget-object v12, v3, Lm/j;->k:Landroid/widget/Button;

    invoke-static {v12, v11}, LG5/r3;->c(Landroid/widget/TextView;Z)V

    :goto_7
    iget-object v12, v3, Lm/j;->l:Ljava/lang/CharSequence;

    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_11

    iget-object v12, v3, Lm/j;->k:Landroid/widget/Button;

    move-object/from16 v17, v7

    const/16 v7, 0x8

    invoke-virtual {v12, v7}, Landroid/view/View;->setVisibility(I)V

    const/4 v7, 0x0

    goto :goto_8

    :cond_11
    move-object/from16 v17, v7

    iget-object v7, v3, Lm/j;->k:Landroid/widget/Button;

    iget-object v12, v3, Lm/j;->l:Ljava/lang/CharSequence;

    invoke-virtual {v7, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v7, v3, Lm/j;->k:Landroid/widget/Button;

    const/4 v12, 0x0

    invoke-virtual {v7, v12}, Landroid/view/View;->setVisibility(I)V

    const/4 v7, 0x1

    :goto_8
    const v12, 0x102001a

    invoke-virtual {v9, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/Button;

    iput-object v12, v3, Lm/j;->n:Landroid/widget/Button;

    invoke-virtual {v12, v15}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget v12, v14, Landroid/util/TypedValue;->resourceId:I

    if-lez v12, :cond_12

    iget-object v12, v3, Lm/j;->n:Landroid/widget/Button;

    invoke-static {v12, v11, v2}, LG5/r3;->d(Landroid/widget/TextView;ZI)V

    goto :goto_9

    :cond_12
    iget-object v12, v3, Lm/j;->n:Landroid/widget/Button;

    invoke-static {v12, v11}, LG5/r3;->c(Landroid/widget/TextView;Z)V

    :goto_9
    iget-object v12, v3, Lm/j;->o:Ljava/lang/CharSequence;

    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_13

    iget-object v12, v3, Lm/j;->n:Landroid/widget/Button;

    move-object/from16 v18, v5

    const/16 v5, 0x8

    invoke-virtual {v12, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_a

    :cond_13
    move-object/from16 v18, v5

    iget-object v5, v3, Lm/j;->n:Landroid/widget/Button;

    iget-object v12, v3, Lm/j;->o:Ljava/lang/CharSequence;

    invoke-virtual {v5, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v5, v3, Lm/j;->n:Landroid/widget/Button;

    const/4 v12, 0x0

    invoke-virtual {v5, v12}, Landroid/view/View;->setVisibility(I)V

    const/4 v5, 0x2

    or-int/2addr v7, v5

    :goto_a
    const v5, 0x102001b

    invoke-virtual {v9, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    iput-object v5, v3, Lm/j;->q:Landroid/widget/Button;

    invoke-virtual {v5, v15}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget v5, v14, Landroid/util/TypedValue;->resourceId:I

    if-lez v5, :cond_14

    iget-object v5, v3, Lm/j;->q:Landroid/widget/Button;

    invoke-static {v5, v11, v2}, LG5/r3;->d(Landroid/widget/TextView;ZI)V

    goto :goto_b

    :cond_14
    iget-object v2, v3, Lm/j;->q:Landroid/widget/Button;

    invoke-static {v2, v11}, LG5/r3;->c(Landroid/widget/TextView;Z)V

    :goto_b
    iget-object v2, v3, Lm/j;->r:Ljava/lang/CharSequence;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_15

    iget-object v2, v3, Lm/j;->q:Landroid/widget/Button;

    const/16 v5, 0x8

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_c

    :cond_15
    iget-object v2, v3, Lm/j;->q:Landroid/widget/Button;

    iget-object v5, v3, Lm/j;->r:Ljava/lang/CharSequence;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, v3, Lm/j;->q:Landroid/widget/Button;

    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    const/4 v2, 0x4

    or-int/2addr v7, v2

    :goto_c
    new-instance v2, Landroid/util/TypedValue;

    invoke-direct {v2}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v5

    const v11, 0x7f04002f

    const/4 v12, 0x1

    invoke-virtual {v5, v11, v2, v12}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    iget v2, v2, Landroid/util/TypedValue;->data:I

    if-eqz v2, :cond_16

    const/high16 v2, 0x3f000000    # 0.5f

    if-ne v7, v12, :cond_17

    iget-object v5, v3, Lm/j;->k:Landroid/widget/Button;

    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v11

    check-cast v11, Landroid/widget/LinearLayout$LayoutParams;

    iput v12, v11, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    iput v2, v11, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    invoke-virtual {v5, v11}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_16
    const/4 v5, 0x2

    goto :goto_d

    :cond_17
    const/4 v5, 0x2

    if-ne v7, v5, :cond_18

    iget-object v11, v3, Lm/j;->n:Landroid/widget/Button;

    invoke-virtual {v11}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v14

    check-cast v14, Landroid/widget/LinearLayout$LayoutParams;

    iput v12, v14, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    iput v2, v14, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    invoke-virtual {v11, v14}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_d

    :cond_18
    const/4 v11, 0x4

    if-ne v7, v11, :cond_19

    iget-object v11, v3, Lm/j;->q:Landroid/widget/Button;

    invoke-virtual {v11}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v14

    check-cast v14, Landroid/widget/LinearLayout$LayoutParams;

    iput v12, v14, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    iput v2, v14, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    invoke-virtual {v11, v14}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_19
    :goto_d
    if-eqz v7, :cond_1a

    goto :goto_e

    :cond_1a
    const/16 v2, 0x8

    invoke-virtual {v9, v2}, Landroid/view/View;->setVisibility(I)V

    :goto_e
    iget-object v2, v3, Lm/j;->q:Landroid/widget/Button;

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_1b

    const/4 v2, 0x1

    goto :goto_f

    :cond_1b
    const/4 v2, 0x0

    :goto_f
    iget-object v7, v3, Lm/j;->k:Landroid/widget/Button;

    invoke-virtual {v7}, Landroid/view/View;->getVisibility()I

    move-result v7

    if-nez v7, :cond_1c

    const/4 v7, 0x1

    goto :goto_10

    :cond_1c
    const/4 v7, 0x0

    :goto_10
    iget-object v11, v3, Lm/j;->n:Landroid/widget/Button;

    invoke-virtual {v11}, Landroid/view/View;->getVisibility()I

    move-result v11

    if-nez v11, :cond_1d

    const/4 v11, 0x1

    goto :goto_11

    :cond_1d
    const/4 v11, 0x0

    :goto_11
    const v12, 0x7f0b0afd

    invoke-virtual {v4, v12}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v12

    if-eqz v12, :cond_20

    if-eqz v2, :cond_1f

    if-nez v7, :cond_1e

    goto :goto_13

    :cond_1e
    :goto_12
    const/4 v2, 0x0

    goto :goto_14

    :cond_1f
    :goto_13
    if-eqz v2, :cond_20

    if-eqz v11, :cond_20

    goto :goto_12

    :goto_14
    invoke-virtual {v12, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_15

    :cond_20
    const/4 v2, 0x0

    :goto_15
    const v12, 0x7f0b0afc

    invoke-virtual {v4, v12}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v12

    if-eqz v12, :cond_21

    if-eqz v7, :cond_21

    if-eqz v11, :cond_21

    invoke-virtual {v12, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_21
    iget-object v2, v3, Lm/j;->H:Lf1/y;

    if-eqz v2, :cond_22

    const v2, 0x7f0b01eb

    invoke-virtual {v9, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    if-eqz v2, :cond_22

    iget-object v7, v3, Lm/j;->H:Lf1/y;

    invoke-virtual {v7, v2}, Lf1/y;->accept(Ljava/lang/Object;)V

    :cond_22
    iget-object v2, v3, Lm/j;->y:Landroid/view/View;

    const v7, 0x7f0b0d71

    if-eqz v2, :cond_23

    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    const/4 v11, -0x2

    const/4 v12, -0x1

    invoke-direct {v2, v12, v11}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    iget-object v11, v3, Lm/j;->y:Landroid/view/View;

    const/4 v12, 0x0

    invoke-virtual {v1, v11, v12, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v4, v7}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/16 v11, 0x8

    invoke-virtual {v2, v11}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_16

    :cond_23
    const v2, 0x1020006

    invoke-virtual {v4, v2}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v3, Lm/j;->v:Landroid/widget/ImageView;

    iget-object v2, v3, Lm/j;->d:Ljava/lang/CharSequence;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_25

    iget-boolean v2, v3, Lm/j;->I:Z

    if-eqz v2, :cond_25

    const v2, 0x7f0b00cb

    invoke-virtual {v4, v2}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v3, Lm/j;->w:Landroid/widget/TextView;

    iget-object v11, v3, Lm/j;->d:Ljava/lang/CharSequence;

    invoke-virtual {v2, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, v3, Lm/j;->w:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f0710c9

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v11

    invoke-virtual {v3, v2, v11}, Lm/j;->b(Landroid/widget/TextView;I)V

    iget-object v2, v3, Lm/j;->u:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_24

    iget-object v11, v3, Lm/j;->v:Landroid/widget/ImageView;

    invoke-virtual {v11, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    const/16 v11, 0x8

    goto :goto_16

    :cond_24
    iget-object v2, v3, Lm/j;->w:Landroid/widget/TextView;

    iget-object v11, v3, Lm/j;->v:Landroid/widget/ImageView;

    invoke-virtual {v11}, Landroid/view/View;->getPaddingLeft()I

    move-result v11

    iget-object v12, v3, Lm/j;->v:Landroid/widget/ImageView;

    invoke-virtual {v12}, Landroid/view/View;->getPaddingTop()I

    move-result v12

    iget-object v14, v3, Lm/j;->v:Landroid/widget/ImageView;

    invoke-virtual {v14}, Landroid/view/View;->getPaddingRight()I

    move-result v14

    iget-object v15, v3, Lm/j;->v:Landroid/widget/ImageView;

    invoke-virtual {v15}, Landroid/view/View;->getPaddingBottom()I

    move-result v15

    invoke-virtual {v2, v11, v12, v14, v15}, Landroid/widget/TextView;->setPadding(IIII)V

    iget-object v2, v3, Lm/j;->v:Landroid/widget/ImageView;

    const/16 v11, 0x8

    invoke-virtual {v2, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_16

    :cond_25
    const/16 v11, 0x8

    invoke-virtual {v4, v7}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v11}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, v3, Lm/j;->v:Landroid/widget/ImageView;

    invoke-virtual {v2, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-virtual {v1, v11}, Landroid/view/View;->setVisibility(I)V

    :goto_16
    invoke-virtual {v13}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-eq v2, v11, :cond_26

    const/4 v14, 0x1

    goto :goto_17

    :cond_26
    const/4 v14, 0x0

    :goto_17
    if-eqz v1, :cond_27

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-eq v1, v11, :cond_27

    const/4 v1, 0x1

    goto :goto_18

    :cond_27
    const/4 v1, 0x0

    :goto_18
    invoke-virtual {v9}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-eq v2, v11, :cond_28

    const/4 v2, 0x1

    goto :goto_19

    :cond_28
    const/4 v2, 0x0

    :goto_19
    if-eqz v8, :cond_29

    invoke-virtual {v8}, Landroid/view/View;->getVisibility()I

    move-result v8

    if-eq v8, v11, :cond_29

    const/4 v8, 0x1

    goto :goto_1a

    :cond_29
    const/4 v8, 0x0

    :goto_1a
    if-eqz v10, :cond_2a

    invoke-virtual {v10}, Landroid/view/View;->getVisibility()I

    move-result v9

    if-eq v9, v11, :cond_2a

    const/4 v9, 0x1

    goto :goto_1b

    :cond_2a
    const/4 v9, 0x0

    :goto_1b
    iget-object v10, v3, Lm/j;->y:Landroid/view/View;

    if-eqz v10, :cond_2b

    invoke-virtual {v10}, Landroid/view/View;->getVisibility()I

    move-result v10

    if-eq v10, v11, :cond_2b

    const/4 v10, 0x1

    goto :goto_1c

    :cond_2b
    const/4 v10, 0x0

    :goto_1c
    if-eqz v14, :cond_2d

    if-nez v8, :cond_2d

    if-eqz v9, :cond_2c

    goto :goto_1e

    :cond_2c
    :goto_1d
    const/4 v10, 0x0

    goto :goto_1f

    :cond_2d
    :goto_1e
    if-eqz v10, :cond_2e

    goto :goto_1d

    :goto_1f
    invoke-virtual {v6, v10, v10, v10, v10}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_20

    :cond_2e
    const/4 v10, 0x0

    :goto_20
    if-eqz v14, :cond_2f

    if-eqz v8, :cond_2f

    if-nez v9, :cond_2f

    move-object/from16 v8, v18

    invoke-virtual {v8, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v11, 0x7f0710c4

    invoke-virtual {v9, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    invoke-virtual {v7, v9, v10, v9, v10}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_21

    :cond_2f
    move-object/from16 v8, v18

    :goto_21
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v9, 0x7f0710b9

    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    iget-object v9, v3, Lm/j;->k:Landroid/widget/Button;

    invoke-virtual {v9}, Landroid/view/View;->getVisibility()I

    move-result v9

    const/16 v10, 0x8

    if-eq v9, v10, :cond_30

    iget-object v9, v3, Lm/j;->k:Landroid/widget/Button;

    int-to-float v11, v7

    const/4 v12, 0x0

    invoke-virtual {v9, v12, v11}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v9, v3, Lm/j;->k:Landroid/widget/Button;

    invoke-virtual {v3, v9, v7}, Lm/j;->b(Landroid/widget/TextView;I)V

    goto :goto_22

    :cond_30
    const/4 v12, 0x0

    :goto_22
    iget-object v9, v3, Lm/j;->n:Landroid/widget/Button;

    invoke-virtual {v9}, Landroid/view/View;->getVisibility()I

    move-result v9

    if-eq v9, v10, :cond_31

    iget-object v9, v3, Lm/j;->n:Landroid/widget/Button;

    int-to-float v11, v7

    invoke-virtual {v9, v12, v11}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v9, v3, Lm/j;->n:Landroid/widget/Button;

    invoke-virtual {v3, v9, v7}, Lm/j;->b(Landroid/widget/TextView;I)V

    :cond_31
    iget-object v9, v3, Lm/j;->q:Landroid/widget/Button;

    invoke-virtual {v9}, Landroid/view/View;->getVisibility()I

    move-result v9

    if-eq v9, v10, :cond_32

    iget-object v9, v3, Lm/j;->q:Landroid/widget/Button;

    int-to-float v10, v7

    invoke-virtual {v9, v12, v10}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v9, v3, Lm/j;->q:Landroid/widget/Button;

    invoke-virtual {v3, v9, v7}, Lm/j;->b(Landroid/widget/TextView;I)V

    :cond_32
    invoke-virtual {v8}, Landroid/view/View;->isInTouchMode()Z

    move-result v7

    if-nez v7, :cond_38

    if-eqz v14, :cond_33

    goto :goto_23

    :cond_33
    move-object/from16 v13, v17

    :goto_23
    invoke-virtual {v13}, Landroid/view/View;->requestFocus()Z

    move-result v7

    if-eqz v7, :cond_34

    goto :goto_24

    :cond_34
    iget-object v7, v3, Lm/j;->f:Landroidx/appcompat/app/AlertController$RecycleListView;

    if-eqz v7, :cond_35

    const/4 v9, 0x0

    invoke-virtual {v7, v9}, Landroid/widget/ListView;->setSelection(I)V

    goto :goto_24

    :cond_35
    iget-object v7, v3, Lm/j;->k:Landroid/widget/Button;

    invoke-virtual {v7}, Landroid/view/View;->getVisibility()I

    move-result v7

    if-nez v7, :cond_36

    iget-object v7, v3, Lm/j;->k:Landroid/widget/Button;

    invoke-virtual {v7}, Landroid/view/View;->requestFocus()Z

    goto :goto_24

    :cond_36
    iget-object v7, v3, Lm/j;->n:Landroid/widget/Button;

    invoke-virtual {v7}, Landroid/view/View;->getVisibility()I

    move-result v7

    if-nez v7, :cond_37

    iget-object v7, v3, Lm/j;->n:Landroid/widget/Button;

    invoke-virtual {v7}, Landroid/view/View;->requestFocus()Z

    goto :goto_24

    :cond_37
    iget-object v7, v3, Lm/j;->q:Landroid/widget/Button;

    invoke-virtual {v7}, Landroid/view/View;->getVisibility()I

    move-result v7

    if-nez v7, :cond_38

    iget-object v7, v3, Lm/j;->q:Landroid/widget/Button;

    invoke-virtual {v7}, Landroid/view/View;->requestFocus()Z

    :cond_38
    :goto_24
    if-eqz v1, :cond_39

    iget-object v7, v3, Lm/j;->t:Landroidx/core/widget/NestedScrollView;

    if-eqz v7, :cond_39

    const/4 v9, 0x1

    invoke-virtual {v7, v9}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    :cond_39
    iget-object v7, v3, Lm/j;->f:Landroidx/appcompat/app/AlertController$RecycleListView;

    if-eqz v7, :cond_3d

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz v2, :cond_3a

    if-nez v1, :cond_3d

    :cond_3a
    invoke-virtual {v7}, Landroid/view/View;->getPaddingLeft()I

    move-result v9

    if-eqz v1, :cond_3b

    invoke-virtual {v7}, Landroid/view/View;->getPaddingTop()I

    move-result v10

    goto :goto_25

    :cond_3b
    iget v10, v7, Landroidx/appcompat/app/AlertController$RecycleListView;->a:I

    :goto_25
    invoke-virtual {v7}, Landroid/view/View;->getPaddingRight()I

    move-result v11

    if-eqz v2, :cond_3c

    invoke-virtual {v7}, Landroid/view/View;->getPaddingBottom()I

    move-result v12

    goto :goto_26

    :cond_3c
    iget v12, v7, Landroidx/appcompat/app/AlertController$RecycleListView;->b:I

    :goto_26
    invoke-virtual {v7, v9, v10, v11, v12}, Landroid/view/View;->setPadding(IIII)V

    :cond_3d
    if-nez v14, :cond_41

    iget-object v7, v3, Lm/j;->f:Landroidx/appcompat/app/AlertController$RecycleListView;

    if-eqz v7, :cond_3e

    goto :goto_27

    :cond_3e
    iget-object v7, v3, Lm/j;->t:Landroidx/core/widget/NestedScrollView;

    :goto_27
    if-eqz v7, :cond_41

    if-eqz v2, :cond_3f

    goto :goto_28

    :cond_3f
    const/4 v5, 0x0

    :goto_28
    or-int/2addr v1, v5

    const v2, 0x7f0b0a71

    invoke-virtual {v4, v2}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const v5, 0x7f0b0a70

    invoke-virtual {v4, v5}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v5

    sget-object v9, Lf1/W;->a:Ljava/util/WeakHashMap;

    const/4 v9, 0x3

    invoke-static {v7, v1, v9}, Lf1/P;->b(Landroid/view/View;II)V

    move-object/from16 v1, v17

    if-eqz v2, :cond_40

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_40
    if-eqz v5, :cond_41

    invoke-virtual {v1, v5}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_41
    iget-object v1, v3, Lm/j;->f:Landroidx/appcompat/app/AlertController$RecycleListView;

    if-eqz v1, :cond_43

    iget-object v2, v3, Lm/j;->z:Landroid/widget/ListAdapter;

    if-eqz v2, :cond_43

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    filled-new-array {v2}, [Ljava/lang/Class;

    move-result-object v2

    const-class v5, Landroid/widget/AdapterView;

    const-string v7, "hidden_semSetBottomColor"

    invoke-static {v5, v7, v2}, LG5/k2;->e(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    if-eqz v2, :cond_42

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    filled-new-array {v7}, [Ljava/lang/Object;

    move-result-object v5

    invoke-static {v1, v2, v5}, LG5/k2;->j(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_42
    iget v2, v3, Lm/j;->A:I

    const/4 v5, -0x1

    if-le v2, v5, :cond_43

    const/4 v5, 0x1

    invoke-virtual {v1, v2, v5}, Landroid/widget/AbsListView;->setItemChecked(IZ)V

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v9, 0x7f071241

    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    invoke-virtual {v1, v2, v7}, Landroid/widget/AbsListView;->setSelectionFromTop(II)V

    goto :goto_29

    :cond_43
    const/4 v5, 0x1

    :goto_29
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x24

    if-lt v1, v2, :cond_4b

    const-class v1, Ljava/lang/String;

    filled-new-array {v1, v1}, [Ljava/lang/Class;

    move-result-object v1

    const-string v2, "com.samsung.sesl.feature.SemFloatingFeature"

    const-string v7, "hidden_getString"

    invoke-static {v2, v7, v1}, LG5/k2;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    const-string v2, "FALSE"

    if-eqz v1, :cond_44

    const-string v7, "SEC_FLOATING_FEATURE_GRAPHICS_SUPPORT_3D_SURFACE_TRANSITION_FLAG"

    filled-new-array {v7, v2}, [Ljava/lang/Object;

    move-result-object v7

    const/4 v9, 0x0

    invoke-static {v9, v1, v7}, LG5/k2;->j(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_2a

    :cond_44
    const/4 v9, 0x0

    move-object v1, v9

    :goto_2a
    instance-of v7, v1, Ljava/lang/String;

    if-eqz v7, :cond_45

    check-cast v1, Ljava/lang/String;

    goto :goto_2b

    :cond_45
    move-object v1, v2

    :goto_2b
    invoke-static {v0}, LG5/t;->d(Landroid/content/Context;)Z

    move-result v7

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "current_sec_active_themepackage"

    invoke-static {v9, v10}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_46

    move v9, v5

    goto :goto_2c

    :cond_46
    const/4 v9, 0x0

    :goto_2c
    if-eqz v14, :cond_47

    iget-boolean v14, v3, Lm/j;->i:Z

    goto :goto_2d

    :cond_47
    move v14, v5

    :goto_2d
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v10, 0x7f0805c8

    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v11

    invoke-virtual {v3, v10, v11}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v4}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_48

    invoke-virtual {v4}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v10

    if-eqz v10, :cond_48

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v10

    if-eqz v10, :cond_48

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v3

    invoke-virtual {v4}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_48

    const/4 v5, 0x0

    :cond_48
    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4b

    if-eqz v14, :cond_4b

    if-nez v9, :cond_4b

    if-eqz v5, :cond_4b

    if-eqz v6, :cond_49

    invoke-virtual {v6}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-nez v1, :cond_49

    if-nez v7, :cond_49

    const v1, 0x7f0805c9

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v6, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_49
    if-eqz v7, :cond_4a

    const/16 v1, 0x73

    goto :goto_2e

    :cond_4a
    const/16 v1, 0x82

    :goto_2e
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f07109e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    const v3, 0x7f060a36

    invoke-virtual {v0, v3}, Landroid/content/Context;->getColor(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    int-to-float v2, v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v8, v3, v1, v0, v2}, LG5/V2;->g(Landroid/view/View;IILjava/lang/Integer;Ljava/lang/Float;)Z

    :cond_4b
    return-void
.end method

.method public final onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3

    iget-object v0, p0, Lm/l;->f:Lm/j;

    iget-object v0, v0, Lm/j;->t:Landroidx/core/widget/NestedScrollView;

    if-eqz v0, :cond_0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1d

    if-le v1, v2, :cond_0

    invoke-virtual {v0, p2}, Landroidx/core/widget/NestedScrollView;->executeKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Dialog;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public final onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 3

    iget-object v0, p0, Lm/l;->f:Lm/j;

    iget-object v0, v0, Lm/j;->t:Landroidx/core/widget/NestedScrollView;

    if-eqz v0, :cond_0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1d

    if-le v1, v2, :cond_0

    invoke-virtual {v0, p2}, Landroidx/core/widget/NestedScrollView;->executeKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Dialog;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public final setTitle(Ljava/lang/CharSequence;)V
    .locals 1

    invoke-super {p0, p1}, Lm/y;->setTitle(Ljava/lang/CharSequence;)V

    iget-object p0, p0, Lm/l;->f:Lm/j;

    iput-object p1, p0, Lm/j;->d:Ljava/lang/CharSequence;

    iget-object v0, p0, Lm/j;->w:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    iget-object p0, p0, Lm/j;->c:Landroid/view/Window;

    invoke-virtual {p0, p1}, Landroid/view/Window;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method
