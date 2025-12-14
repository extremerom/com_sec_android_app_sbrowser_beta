.class public final LJ6/k;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# static fields
.field public static final synthetic q:I


# instance fields
.field public a:Lcom/google/android/material/tabs/a;

.field public b:Landroid/widget/TextView;

.field public c:Landroid/widget/ImageView;

.field public d:Landroid/view/View;

.field public e:Le6/a;

.field public f:Landroid/view/View;

.field public g:Landroid/widget/TextView;

.field public h:Landroid/widget/ImageView;

.field public i:Landroid/graphics/drawable/Drawable;

.field public j:I

.field public k:Z

.field public l:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public m:Lcom/google/android/material/tabs/SeslTabRoundRectIndicator;

.field public n:Landroid/view/View;

.field public o:Landroid/widget/TextView;

.field public final synthetic p:Lcom/google/android/material/tabs/TabLayout;


# direct methods
.method public constructor <init>(Lcom/google/android/material/tabs/TabLayout;Landroid/content/Context;)V
    .locals 2

    iput-object p1, p0, LJ6/k;->p:Lcom/google/android/material/tabs/TabLayout;

    invoke-direct {p0, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x2

    iput v0, p0, LJ6/k;->j:I

    new-instance v0, LJ6/i;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, p2}, LJ6/k;->e(Landroid/content/Context;)V

    const/16 p2, 0x11

    invoke-virtual {p0, p2}, Landroid/widget/LinearLayout;->setGravity(I)V

    iget-boolean p2, p1, Lcom/google/android/material/tabs/TabLayout;->A:Z

    const/4 v1, 0x1

    xor-int/2addr p2, v1

    invoke-virtual {p0, p2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    invoke-virtual {p0, v1}, Landroid/view/View;->setClickable(Z)V

    invoke-virtual {p0, v0}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    iget p2, p1, Lcom/google/android/material/tabs/TabLayout;->l0:I

    if-ne p2, v1, :cond_0

    sget-object p2, Lf1/W;->a:Ljava/util/WeakHashMap;

    iget p2, p1, Lcom/google/android/material/tabs/TabLayout;->h:I

    iget p1, p1, Lcom/google/android/material/tabs/TabLayout;->i:I

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p2, v0, p1}, Landroid/view/View;->setPaddingRelative(IIII)V

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x7f071268

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    return-void
.end method

.method private getBadge()Le6/a;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object p0, p0, LJ6/k;->e:Le6/a;

    return-object p0
.end method

.method private getOrCreateBadge()Le6/a;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, LJ6/k;->e:Le6/a;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Le6/a;

    invoke-direct {v1, v0}, Le6/a;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, LJ6/k;->e:Le6/a;

    :cond_0
    invoke-virtual {p0}, LJ6/k;->b()V

    iget-object p0, p0, LJ6/k;->e:Le6/a;

    if-eqz p0, :cond_1

    return-object p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Unable to create badge"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final a()V
    .locals 4

    iget-object v0, p0, LJ6/k;->e:Le6/a;

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    :cond_0
    iget-object v0, p0, LJ6/k;->d:Landroid/view/View;

    if-eqz v0, :cond_3

    iget-object v1, p0, LJ6/k;->e:Le6/a;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Le6/a;->c()Landroid/widget/FrameLayout;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {v1}, Le6/a;->c()Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setForeground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Landroid/view/View;->getOverlay()Landroid/view/ViewOverlay;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewOverlay;->remove(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    iput-object v2, p0, LJ6/k;->d:Landroid/view/View;

    :cond_3
    return-void
.end method

.method public final b()V
    .locals 3

    iget-object v0, p0, LJ6/k;->e:Le6/a;

    if-eqz v0, :cond_5

    iget-object v0, p0, LJ6/k;->f:Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, LJ6/k;->a()V

    goto :goto_1

    :cond_0
    iget-object v0, p0, LJ6/k;->b:Landroid/widget/TextView;

    if-eqz v0, :cond_4

    iget-object v1, p0, LJ6/k;->a:Lcom/google/android/material/tabs/a;

    if-eqz v1, :cond_4

    iget-object v1, p0, LJ6/k;->d:Landroid/view/View;

    if-eq v1, v0, :cond_3

    invoke-virtual {p0}, LJ6/k;->a()V

    iget-object v0, p0, LJ6/k;->b:Landroid/widget/TextView;

    iget-object v1, p0, LJ6/k;->e:Le6/a;

    if-eqz v1, :cond_5

    if-eqz v0, :cond_5

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    if-eqz v2, :cond_1

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    :cond_1
    iget-object v1, p0, LJ6/k;->e:Le6/a;

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {v0, v2}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Le6/a;->h(Landroid/view/View;Landroid/widget/FrameLayout;)V

    invoke-virtual {v1}, Le6/a;->c()Landroid/widget/FrameLayout;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Le6/a;->c()Landroid/widget/FrameLayout;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/View;->setForeground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Landroid/view/View;->getOverlay()Landroid/view/ViewOverlay;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/ViewOverlay;->add(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    iput-object v0, p0, LJ6/k;->d:Landroid/view/View;

    goto :goto_1

    :cond_3
    invoke-virtual {p0, v0}, LJ6/k;->c(Landroid/view/View;)V

    goto :goto_1

    :cond_4
    invoke-virtual {p0}, LJ6/k;->a()V

    :cond_5
    :goto_1
    return-void
.end method

.method public final c(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, LJ6/k;->e:Le6/a;

    if-eqz v0, :cond_0

    iget-object p0, p0, LJ6/k;->d:Landroid/view/View;

    if-ne p1, p0, :cond_0

    new-instance p0, Landroid/graphics/Rect;

    invoke-direct {p0}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p1, p0}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    invoke-virtual {v0, p0}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    const/4 p0, 0x0

    invoke-virtual {v0, p1, p0}, Le6/a;->h(Landroid/view/View;Landroid/widget/FrameLayout;)V

    :cond_0
    return-void
.end method

.method public final d()V
    .locals 3

    invoke-virtual {p0}, LJ6/k;->f()V

    iget-object v0, p0, LJ6/k;->a:Lcom/google/android/material/tabs/a;

    if-eqz v0, :cond_1

    iget-object v1, v0, Lcom/google/android/material/tabs/a;->d:Lcom/google/android/material/tabs/TabLayout;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/google/android/material/tabs/TabLayout;->getSelectedTabPosition()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    iget v0, v0, Lcom/google/android/material/tabs/a;->b:I

    if-ne v1, v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Tab not attached to a TabLayout"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, LJ6/k;->setSelected(Z)V

    return-void
.end method

.method public final drawableStateChanged()V
    .locals 0

    invoke-super {p0}, Landroid/view/View;->drawableStateChanged()V

    return-void
.end method

.method public final e(Landroid/content/Context;)V
    .locals 3

    iget-object v0, p0, LJ6/k;->p:Lcom/google/android/material/tabs/TabLayout;

    iget v1, v0, Lcom/google/android/material/tabs/TabLayout;->s:I

    if-eqz v1, :cond_1

    iget v0, v0, Lcom/google/android/material/tabs/TabLayout;->l0:I

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    invoke-static {v1, p1}, Ll5/a;->a(ILandroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, LJ6/k;->i:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, LJ6/k;->i:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/view/View;->getDrawableState()[I

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    :cond_0
    iget-object p1, p0, LJ6/k;->i:Landroid/graphics/drawable/Drawable;

    sget-object v0, Lf1/W;->a:Ljava/util/WeakHashMap;

    invoke-virtual {p0, p1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    iput-object p1, p0, LJ6/k;->i:Landroid/graphics/drawable/Drawable;

    :goto_0
    return-void
.end method

.method public final f()V
    .locals 12

    const/4 v0, 0x0

    iget-object v1, p0, LJ6/k;->a:Lcom/google/android/material/tabs/a;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    iget-object v3, v1, Lcom/google/android/material/tabs/a;->c:Landroid/view/View;

    goto :goto_0

    :cond_0
    move-object v3, v2

    :goto_0
    const/16 v4, 0x8

    if-eqz v3, :cond_8

    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    if-eq v5, p0, :cond_3

    if-eqz v5, :cond_1

    check-cast v5, Landroid/view/ViewGroup;

    invoke-virtual {v5, v3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_1
    iget-object v5, p0, LJ6/k;->f:Landroid/view/View;

    if-eqz v5, :cond_2

    invoke-virtual {v5}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    if-eqz v5, :cond_2

    check-cast v5, Landroid/view/ViewGroup;

    iget-object v6, p0, LJ6/k;->f:Landroid/view/View;

    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_2
    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_3
    iput-object v3, p0, LJ6/k;->f:Landroid/view/View;

    iget-object v5, p0, LJ6/k;->b:Landroid/widget/TextView;

    if-eqz v5, :cond_4

    invoke-virtual {v5, v4}, Landroid/view/View;->setVisibility(I)V

    :cond_4
    iget-object v5, p0, LJ6/k;->c:Landroid/widget/ImageView;

    if-eqz v5, :cond_5

    invoke-virtual {v5, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v5, p0, LJ6/k;->c:Landroid/widget/ImageView;

    invoke-virtual {v5, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_5
    iget-object v5, p0, LJ6/k;->o:Landroid/widget/TextView;

    if-eqz v5, :cond_6

    invoke-virtual {v5, v4}, Landroid/view/View;->setVisibility(I)V

    :cond_6
    const v5, 0x1020014

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, LJ6/k;->g:Landroid/widget/TextView;

    if-eqz v5, :cond_7

    invoke-virtual {v5}, Landroid/widget/TextView;->getMaxLines()I

    move-result v5

    iput v5, p0, LJ6/k;->j:I

    :cond_7
    const v5, 0x1020006

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, LJ6/k;->h:Landroid/widget/ImageView;

    goto :goto_1

    :cond_8
    iget-object v3, p0, LJ6/k;->f:Landroid/view/View;

    if-eqz v3, :cond_9

    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    iput-object v2, p0, LJ6/k;->f:Landroid/view/View;

    :cond_9
    iput-object v2, p0, LJ6/k;->g:Landroid/widget/TextView;

    iput-object v2, p0, LJ6/k;->h:Landroid/widget/ImageView;

    :goto_1
    iget-object v3, p0, LJ6/k;->f:Landroid/view/View;

    if-nez v3, :cond_24

    iget-object v3, p0, LJ6/k;->a:Lcom/google/android/material/tabs/a;

    if-eqz v3, :cond_24

    iget-object v3, p0, LJ6/k;->l:Landroidx/constraintlayout/widget/ConstraintLayout;

    const/4 v5, 0x2

    iget-object v6, p0, LJ6/k;->p:Lcom/google/android/material/tabs/TabLayout;

    if-nez v3, :cond_c

    iget v3, v6, Lcom/google/android/material/tabs/TabLayout;->l0:I

    if-ne v3, v5, :cond_a

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    const v7, 0x7f0e087e

    invoke-virtual {v3, v7, p0, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object v3, p0, LJ6/k;->l:Landroidx/constraintlayout/widget/ConstraintLayout;

    goto :goto_3

    :cond_a
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    const v7, 0x7f0e087d

    invoke-virtual {v3, v7, p0, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object v3, p0, LJ6/k;->l:Landroidx/constraintlayout/widget/ConstraintLayout;

    const v7, 0x7f0b06c6

    invoke-virtual {v3, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, LJ6/k;->n:Landroid/view/View;

    if-eqz v3, :cond_c

    iget-object v7, p0, LJ6/k;->a:Lcom/google/android/material/tabs/a;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, LG5/t;->d(Landroid/content/Context;)Z

    move-result v8

    if-eqz v8, :cond_b

    const v8, 0x7f0806bf

    goto :goto_2

    :cond_b
    const v8, 0x7f0806be

    :goto_2
    invoke-virtual {v7, v8}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    sget-object v8, Lf1/W;->a:Ljava/util/WeakHashMap;

    invoke-virtual {v3, v7}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v3, p0, LJ6/k;->n:Landroid/view/View;

    const/4 v7, 0x0

    invoke-virtual {v3, v7}, Landroid/view/View;->setAlpha(F)V

    :cond_c
    :goto_3
    iget-object v3, p0, LJ6/k;->m:Lcom/google/android/material/tabs/SeslTabRoundRectIndicator;

    if-nez v3, :cond_d

    iget-object v3, p0, LJ6/k;->l:Landroidx/constraintlayout/widget/ConstraintLayout;

    const v7, 0x7f0b0610

    invoke-virtual {v3, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/google/android/material/tabs/SeslTabRoundRectIndicator;

    iput-object v3, p0, LJ6/k;->m:Lcom/google/android/material/tabs/SeslTabRoundRectIndicator;

    :cond_d
    iget v3, v6, Lcom/google/android/material/tabs/TabLayout;->l0:I

    const/4 v7, -0x1

    if-ne v3, v5, :cond_e

    iget-object v3, p0, LJ6/k;->m:Lcom/google/android/material/tabs/SeslTabRoundRectIndicator;

    if-eqz v3, :cond_f

    iget v8, v6, Lcom/google/android/material/tabs/TabLayout;->w0:I

    if-eq v8, v7, :cond_f

    invoke-virtual {v3, v8}, Lcom/google/android/material/tabs/SeslTabRoundRectIndicator;->setSelectedIndicatorColor(I)V

    goto :goto_4

    :cond_e
    iget-object v3, p0, LJ6/k;->m:Lcom/google/android/material/tabs/SeslTabRoundRectIndicator;

    if-eqz v3, :cond_f

    iget v8, v6, Lcom/google/android/material/tabs/TabLayout;->v0:I

    invoke-virtual {v3, v8}, Lcom/google/android/material/tabs/SeslTabRoundRectIndicator;->setSelectedIndicatorColor(I)V

    :cond_f
    :goto_4
    iget-object v3, p0, LJ6/k;->b:Landroid/widget/TextView;

    if-nez v3, :cond_10

    iget-object v3, p0, LJ6/k;->l:Landroidx/constraintlayout/widget/ConstraintLayout;

    const v8, 0x7f0b0d66

    invoke-virtual {v3, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, LJ6/k;->b:Landroid/widget/TextView;

    :cond_10
    iget-object v3, p0, LJ6/k;->b:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getMaxLines()I

    move-result v3

    iput v3, p0, LJ6/k;->j:I

    iget-object v3, p0, LJ6/k;->b:Landroid/widget/TextView;

    iget v8, v6, Lcom/google/android/material/tabs/TabLayout;->j:I

    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setTextAppearance(I)V

    invoke-virtual {p0}, Landroid/view/View;->isSelected()Z

    move-result v3

    if-eqz v3, :cond_11

    iget v3, v6, Lcom/google/android/material/tabs/TabLayout;->l:I

    if-eq v3, v7, :cond_11

    iget-object v8, p0, LJ6/k;->b:Landroid/widget/TextView;

    invoke-virtual {v8, v3}, Landroid/widget/TextView;->setTextAppearance(I)V

    goto :goto_5

    :cond_11
    iget-object v3, p0, LJ6/k;->b:Landroid/widget/TextView;

    iget v8, v6, Lcom/google/android/material/tabs/TabLayout;->k:I

    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setTextAppearance(I)V

    :goto_5
    invoke-virtual {p0}, Landroid/view/View;->isSelected()Z

    move-result v3

    if-eqz v3, :cond_12

    iget-object v3, p0, LJ6/k;->b:Landroid/widget/TextView;

    iget-object v8, v6, Lcom/google/android/material/tabs/TabLayout;->m0:Landroid/graphics/Typeface;

    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    goto :goto_6

    :cond_12
    iget-object v3, p0, LJ6/k;->b:Landroid/widget/TextView;

    iget-object v8, v6, Lcom/google/android/material/tabs/TabLayout;->n0:Landroid/graphics/Typeface;

    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    :goto_6
    iget-object v3, p0, LJ6/k;->b:Landroid/widget/TextView;

    iget v8, v6, Lcom/google/android/material/tabs/TabLayout;->q:F

    float-to-int v8, v8

    invoke-static {v6, v3, v8}, Lcom/google/android/material/tabs/TabLayout;->a(Lcom/google/android/material/tabs/TabLayout;Landroid/widget/TextView;I)V

    iget-object v3, p0, LJ6/k;->b:Landroid/widget/TextView;

    iget-object v8, v6, Lcom/google/android/material/tabs/TabLayout;->m:Landroid/content/res/ColorStateList;

    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    iget v3, v6, Lcom/google/android/material/tabs/TabLayout;->l0:I

    if-ne v3, v5, :cond_15

    iget-object v3, p0, LJ6/k;->o:Landroid/widget/TextView;

    if-nez v3, :cond_13

    iget-object v3, p0, LJ6/k;->l:Landroidx/constraintlayout/widget/ConstraintLayout;

    const v8, 0x7f0b0bf8

    invoke-virtual {v3, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, LJ6/k;->o:Landroid/widget/TextView;

    :cond_13
    iget-object v3, p0, LJ6/k;->o:Landroid/widget/TextView;

    if-eqz v3, :cond_14

    iget v8, v6, Lcom/google/android/material/tabs/TabLayout;->z0:I

    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setTextAppearance(I)V

    iget-object v3, p0, LJ6/k;->o:Landroid/widget/TextView;

    iget-object v8, v6, Lcom/google/android/material/tabs/TabLayout;->A0:Landroid/content/res/ColorStateList;

    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    :cond_14
    iget-object v3, p0, LJ6/k;->o:Landroid/widget/TextView;

    if-eqz v3, :cond_15

    iget v8, v6, Lcom/google/android/material/tabs/TabLayout;->B0:I

    invoke-static {v6, v3, v8}, Lcom/google/android/material/tabs/TabLayout;->a(Lcom/google/android/material/tabs/TabLayout;Landroid/widget/TextView;I)V

    :cond_15
    iget-object v3, p0, LJ6/k;->c:Landroid/widget/ImageView;

    if-nez v3, :cond_16

    iget-object v3, p0, LJ6/k;->l:Landroidx/constraintlayout/widget/ConstraintLayout;

    if-eqz v3, :cond_16

    const v8, 0x7f0b05ef

    invoke-virtual {v3, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, LJ6/k;->c:Landroid/widget/ImageView;

    :cond_16
    iget-object v3, p0, LJ6/k;->b:Landroid/widget/TextView;

    iget-object v8, p0, LJ6/k;->o:Landroid/widget/TextView;

    iget-object v9, p0, LJ6/k;->c:Landroid/widget/ImageView;

    const/4 v10, 0x1

    invoke-virtual {p0, v3, v9, v10}, LJ6/k;->g(Landroid/widget/TextView;Landroid/widget/ImageView;Z)V

    if-eqz v8, :cond_1b

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, LP0/h;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_17

    move v11, v7

    goto :goto_7

    :cond_17
    move v11, v0

    :goto_7
    iput v11, v3, LP0/h;->h:I

    if-nez v9, :cond_18

    move v11, v7

    goto :goto_8

    :cond_18
    move v11, v0

    :goto_8
    iput v11, v3, LP0/h;->k:I

    if-nez v9, :cond_19

    const v11, 0x7f0b022e

    goto :goto_9

    :cond_19
    move v11, v7

    :goto_9
    iput v11, v3, LP0/h;->j:I

    invoke-virtual {v8, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-nez v9, :cond_1a

    iget-object v3, p0, LJ6/k;->a:Lcom/google/android/material/tabs/a;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v8, v0}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_a

    :cond_1a
    invoke-virtual {v8, v4}, Landroid/view/View;->setVisibility(I)V

    :cond_1b
    :goto_a
    iget v3, v6, Lcom/google/android/material/tabs/TabLayout;->l0:I

    if-ne v3, v5, :cond_1f

    iget v3, v6, Lcom/google/android/material/tabs/TabLayout;->z:I

    if-nez v3, :cond_1c

    const/4 v7, -0x2

    :cond_1c
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1d

    iget v3, v6, Lcom/google/android/material/tabs/TabLayout;->y0:I

    goto :goto_b

    :cond_1d
    iget v3, v6, Lcom/google/android/material/tabs/TabLayout;->x0:I

    :goto_b
    iget-object v4, p0, LJ6/k;->l:Landroidx/constraintlayout/widget/ConstraintLayout;

    if-eqz v4, :cond_1e

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v4

    if-eq v4, v3, :cond_1e

    goto :goto_c

    :cond_1e
    move v10, v0

    goto :goto_c

    :cond_1f
    iget-object v3, p0, LJ6/k;->a:Lcom/google/android/material/tabs/a;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move v10, v0

    move v3, v7

    :goto_c
    iget-object v4, p0, LJ6/k;->l:Landroidx/constraintlayout/widget/ConstraintLayout;

    if-eqz v4, :cond_20

    invoke-virtual {v4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    if-nez v4, :cond_20

    iget-object v4, p0, LJ6/k;->l:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {p0, v4, v7, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    goto :goto_d

    :cond_20
    if-eqz v10, :cond_21

    iget-object v4, p0, LJ6/k;->l:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {p0, v4}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    iget-object v4, p0, LJ6/k;->l:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {p0, v4, v7, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    :cond_21
    :goto_d
    invoke-virtual {p0}, LJ6/k;->b()V

    iget-object v3, p0, LJ6/k;->c:Landroid/widget/ImageView;

    if-nez v3, :cond_22

    goto :goto_e

    :cond_22
    new-instance v4, LJ6/j;

    invoke-direct {v4, p0, v3, v0}, LJ6/j;-><init>(Ljava/lang/Object;Landroid/view/View;I)V

    invoke-virtual {v3, v4}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    :goto_e
    iget-object v3, p0, LJ6/k;->b:Landroid/widget/TextView;

    if-nez v3, :cond_23

    goto :goto_f

    :cond_23
    new-instance v4, LJ6/j;

    invoke-direct {v4, p0, v3, v0}, LJ6/j;-><init>(Ljava/lang/Object;Landroid/view/View;I)V

    invoke-virtual {v3, v4}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    goto :goto_f

    :cond_24
    iget-object v3, p0, LJ6/k;->g:Landroid/widget/TextView;

    if-nez v3, :cond_25

    iget-object v4, p0, LJ6/k;->h:Landroid/widget/ImageView;

    if-eqz v4, :cond_26

    :cond_25
    iget-object v4, p0, LJ6/k;->h:Landroid/widget/ImageView;

    invoke-virtual {p0, v3, v4, v0}, LJ6/k;->g(Landroid/widget/TextView;Landroid/widget/ImageView;Z)V

    :cond_26
    :goto_f
    if-eqz v1, :cond_27

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_27

    invoke-virtual {p0, v2}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_27
    return-void
.end method

.method public final g(Landroid/widget/TextView;Landroid/widget/ImageView;Z)V
    .locals 6

    iget-object v0, p0, LJ6/k;->a:Lcom/google/android/material/tabs/a;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/google/android/material/tabs/a;->a:Ljava/lang/CharSequence;

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    const/16 v2, 0x8

    if-eqz p2, :cond_1

    invoke-virtual {p2, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-virtual {p2, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    const/4 v4, 0x0

    if-eqz p1, :cond_6

    if-nez v3, :cond_2

    iget-object v5, p0, LJ6/k;->a:Lcom/google/android/material/tabs/a;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v5, 0x1

    goto :goto_1

    :cond_2
    move v5, v4

    :goto_1
    if-nez v3, :cond_3

    goto :goto_2

    :cond_3
    move-object v0, v1

    :goto_2
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-eqz v5, :cond_4

    move v0, v4

    goto :goto_3

    :cond_4
    move v0, v2

    :goto_3
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    if-nez v3, :cond_5

    invoke-virtual {p0, v4}, Landroid/view/View;->setVisibility(I)V

    :cond_5
    move v4, v5

    :cond_6
    if-eqz p3, :cond_8

    if-eqz p2, :cond_8

    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v4, :cond_8

    invoke-virtual {p2}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_8

    iget-object p1, p0, LJ6/k;->p:Lcom/google/android/material/tabs/TabLayout;

    iget p1, p1, Lcom/google/android/material/tabs/TabLayout;->q0:I

    const/4 p2, -0x1

    if-eq p1, p2, :cond_7

    goto :goto_4

    :cond_7
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {v2, p1}, Ls6/l;->d(ILandroid/content/Context;)F

    :cond_8
    :goto_4
    invoke-virtual {p0, v1}, Landroid/view/View;->setTooltipText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public getContentHeight()I
    .locals 8

    iget-object v0, p0, LJ6/k;->b:Landroid/widget/TextView;

    iget-object v1, p0, LJ6/k;->c:Landroid/widget/ImageView;

    iget-object p0, p0, LJ6/k;->f:Landroid/view/View;

    const/4 v2, 0x3

    new-array v3, v2, [Landroid/view/View;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const/4 v0, 0x1

    aput-object v1, v3, v0

    const/4 v1, 0x2

    aput-object p0, v3, v1

    move p0, v4

    move v1, p0

    move v5, v1

    :goto_0
    if-ge v4, v2, :cond_3

    aget-object v6, v3, v4

    if-eqz v6, :cond_2

    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v7

    if-nez v7, :cond_2

    if-eqz v5, :cond_0

    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v7

    invoke-static {v1, v7}, Ljava/lang/Math;->min(II)I

    move-result v1

    goto :goto_1

    :cond_0
    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v1

    :goto_1
    if-eqz v5, :cond_1

    invoke-virtual {v6}, Landroid/view/View;->getBottom()I

    move-result v5

    invoke-static {p0, v5}, Ljava/lang/Math;->max(II)I

    move-result p0

    goto :goto_2

    :cond_1
    invoke-virtual {v6}, Landroid/view/View;->getBottom()I

    move-result p0

    :goto_2
    move v5, v0

    :cond_2
    add-int/2addr v4, v0

    goto :goto_0

    :cond_3
    sub-int/2addr p0, v1

    return p0
.end method

.method public getContentWidth()I
    .locals 8

    iget-object v0, p0, LJ6/k;->b:Landroid/widget/TextView;

    iget-object v1, p0, LJ6/k;->c:Landroid/widget/ImageView;

    iget-object p0, p0, LJ6/k;->f:Landroid/view/View;

    const/4 v2, 0x3

    new-array v3, v2, [Landroid/view/View;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const/4 v0, 0x1

    aput-object v1, v3, v0

    const/4 v1, 0x2

    aput-object p0, v3, v1

    move p0, v4

    move v1, p0

    move v5, v1

    :goto_0
    if-ge v4, v2, :cond_3

    aget-object v6, v3, v4

    if-eqz v6, :cond_2

    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v7

    if-nez v7, :cond_2

    if-eqz v5, :cond_0

    invoke-virtual {v6}, Landroid/view/View;->getLeft()I

    move-result v7

    invoke-static {v1, v7}, Ljava/lang/Math;->min(II)I

    move-result v1

    goto :goto_1

    :cond_0
    invoke-virtual {v6}, Landroid/view/View;->getLeft()I

    move-result v1

    :goto_1
    if-eqz v5, :cond_1

    invoke-virtual {v6}, Landroid/view/View;->getRight()I

    move-result v5

    invoke-static {p0, v5}, Ljava/lang/Math;->max(II)I

    move-result p0

    goto :goto_2

    :cond_1
    invoke-virtual {v6}, Landroid/view/View;->getRight()I

    move-result p0

    :goto_2
    move v5, v0

    :cond_2
    add-int/2addr v4, v0

    goto :goto_0

    :cond_3
    sub-int/2addr p0, v1

    return p0
.end method

.method public getTab()Lcom/google/android/material/tabs/a;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object p0, p0, LJ6/k;->a:Lcom/google/android/material/tabs/a;

    return-object p0
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/view/View;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x7f071268

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    return-void
.end method

.method public final onDraw(Landroid/graphics/Canvas;)V
    .locals 6

    iget-object v0, p0, LJ6/k;->i:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    iget-object v1, p0, LJ6/k;->n:Landroid/view/View;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingStart()I

    move-result v2

    add-int/2addr v2, v1

    iget-object v1, p0, LJ6/k;->n:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v3

    add-int/2addr v3, v1

    iget-object v1, p0, LJ6/k;->n:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingStart()I

    move-result v4

    add-int/2addr v4, v1

    iget-object v1, p0, LJ6/k;->n:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v5

    add-int/2addr v5, v1

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getTop()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/View;->getRight()I

    move-result v3

    invoke-virtual {p0}, Landroid/view/View;->getBottom()I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :cond_1
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public final onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 8

    invoke-super {p0, p1}, Landroid/view/View;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    new-instance v0, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;

    invoke-direct {v0, p1}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;-><init>(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    iget-object v1, p0, LJ6/k;->e:Le6/a;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_9

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->isVisible()Z

    move-result v1

    if-eqz v1, :cond_9

    iget-object v1, p0, LJ6/k;->e:Le6/a;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->isVisible()Z

    move-result v4

    const/4 v5, 0x0

    if-nez v4, :cond_0

    goto/16 :goto_2

    :cond_0
    iget-object v4, v1, Le6/a;->e:Le6/b;

    iget-object v4, v4, Le6/b;->b:Lcom/google/android/material/badge/BadgeState$State;

    iget-object v6, v4, Lcom/google/android/material/badge/BadgeState$State;->j:Ljava/lang/String;

    if-eqz v6, :cond_1

    move v7, v3

    goto :goto_0

    :cond_1
    move v7, v2

    :goto_0
    if-eqz v7, :cond_3

    iget-object v1, v4, Lcom/google/android/material/badge/BadgeState$State;->o:Ljava/lang/String;

    if-eqz v1, :cond_2

    move-object v5, v1

    goto :goto_2

    :cond_2
    move-object v5, v6

    goto :goto_2

    :cond_3
    invoke-virtual {v1}, Le6/a;->f()Z

    move-result v6

    if-eqz v6, :cond_7

    iget v6, v4, Lcom/google/android/material/badge/BadgeState$State;->q:I

    if-eqz v6, :cond_8

    iget-object v6, v1, Le6/a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v6}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/Context;

    if-nez v6, :cond_4

    goto :goto_2

    :cond_4
    iget v5, v1, Le6/a;->h:I

    const/4 v7, -0x2

    if-eq v5, v7, :cond_6

    invoke-virtual {v1}, Le6/a;->d()I

    move-result v5

    iget v7, v1, Le6/a;->h:I

    if-gt v5, v7, :cond_5

    goto :goto_1

    :cond_5
    iget v1, v4, Lcom/google/android/material/badge/BadgeState$State;->r:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v6, v1, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    goto :goto_2

    :cond_6
    :goto_1
    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    iget v4, v4, Lcom/google/android/material/badge/BadgeState$State;->q:I

    invoke-virtual {v1}, Le6/a;->d()I

    move-result v6

    invoke-virtual {v1}, Le6/a;->d()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v5, v4, v6, v1}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    goto :goto_2

    :cond_7
    iget-object v5, v4, Lcom/google/android/material/badge/BadgeState$State;->p:Ljava/lang/CharSequence;

    :cond_8
    :goto_2
    invoke-virtual {v0, v5}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->r(Ljava/lang/CharSequence;)V

    :cond_9
    iget-object v1, p0, LJ6/k;->a:Lcom/google/android/material/tabs/a;

    iget v1, v1, Lcom/google/android/material/tabs/a;->b:I

    invoke-virtual {p0}, Landroid/view/View;->isSelected()Z

    move-result v4

    invoke-static {v2, v3, v1, v3, v4}, Lg1/f;->a(IIIIZ)Lg1/f;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->q(Lg1/f;)V

    invoke-virtual {p0}, Landroid/view/View;->isSelected()Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-virtual {v0, v2}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->o(Z)V

    sget-object v1, Lg1/d;->g:Lg1/d;

    invoke-virtual {v0, v1}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->k(Lg1/d;)V

    :cond_a
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f140652

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "AccessibilityNodeInfo.roleDescription"

    invoke-virtual {p1, v0, p0}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final onLayout(ZIIII)V
    .locals 0

    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    iget-object p1, p0, LJ6/k;->n:Landroid/view/View;

    if-eqz p1, :cond_1

    const/4 p3, 0x0

    invoke-virtual {p1, p3}, Landroid/view/View;->setLeft(I)V

    iget-object p1, p0, LJ6/k;->n:Landroid/view/View;

    iget-object p3, p0, LJ6/k;->l:Landroidx/constraintlayout/widget/ConstraintLayout;

    if-eqz p3, :cond_0

    invoke-virtual {p3}, Landroid/view/View;->getWidth()I

    move-result p2

    goto :goto_0

    :cond_0
    sub-int p2, p4, p2

    :goto_0
    invoke-virtual {p1, p2}, Landroid/view/View;->setRight(I)V

    iget-object p1, p0, LJ6/k;->n:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, LJ6/k;->n:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/animation/Animation;->hasEnded()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, LJ6/k;->n:Landroid/view/View;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/view/View;->setAlpha(F)V

    :cond_1
    iget-object p1, p0, LJ6/k;->c:Landroid/widget/ImageView;

    if-eqz p1, :cond_2

    iget-object p0, p0, LJ6/k;->a:Lcom/google/android/material/tabs/a;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_2
    return-void
.end method

.method public final onMeasure(II)V
    .locals 11

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    iget-object v2, p0, LJ6/k;->p:Lcom/google/android/material/tabs/TabLayout;

    invoke-virtual {v2}, Lcom/google/android/material/tabs/TabLayout;->getTabMaxWidth()I

    move-result v3

    iget v4, v2, Lcom/google/android/material/tabs/TabLayout;->z:I

    const/16 v5, 0xb

    const/high16 v6, -0x80000000

    const/high16 v7, 0x40000000    # 2.0f

    const/4 v8, 0x0

    if-eq v4, v5, :cond_3

    const/16 v5, 0xc

    if-ne v4, v5, :cond_0

    goto :goto_0

    :cond_0
    iget v4, v2, Lcom/google/android/material/tabs/TabLayout;->r0:I

    const/4 v5, -0x1

    if-eq v4, v5, :cond_1

    invoke-static {v4, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    goto :goto_1

    :cond_1
    if-lez v3, :cond_5

    if-eqz v1, :cond_2

    if-le v0, v3, :cond_5

    :cond_2
    iget p1, v2, Lcom/google/android/material/tabs/TabLayout;->t:I

    invoke-static {p1, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    goto :goto_1

    :cond_3
    :goto_0
    if-nez v1, :cond_4

    iget p1, v2, Lcom/google/android/material/tabs/TabLayout;->t:I

    invoke-static {p1, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    goto :goto_1

    :cond_4
    if-ne v1, v7, :cond_5

    invoke-static {v0, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    :cond_5
    :goto_1
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    iget-object v0, p0, LJ6/k;->b:Landroid/widget/TextView;

    const/4 v1, 0x2

    if-eqz v0, :cond_c

    iget-object v4, p0, LJ6/k;->f:Landroid/view/View;

    if-nez v4, :cond_c

    iget v4, v2, Lcom/google/android/material/tabs/TabLayout;->q:F

    float-to-int v5, v4

    invoke-static {v2, v0, v5}, Lcom/google/android/material/tabs/TabLayout;->a(Lcom/google/android/material/tabs/TabLayout;Landroid/widget/TextView;I)V

    iget v0, v2, Lcom/google/android/material/tabs/TabLayout;->l0:I

    if-ne v0, v1, :cond_6

    iget-object v0, p0, LJ6/k;->o:Landroid/widget/TextView;

    if-eqz v0, :cond_6

    iget v5, v2, Lcom/google/android/material/tabs/TabLayout;->B0:I

    invoke-static {v2, v0, v5}, Lcom/google/android/material/tabs/TabLayout;->a(Lcom/google/android/material/tabs/TabLayout;Landroid/widget/TextView;I)V

    :cond_6
    iget v0, p0, LJ6/k;->j:I

    iget-object v5, p0, LJ6/k;->c:Landroid/widget/ImageView;

    const/4 v7, 0x1

    if-eqz v5, :cond_7

    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v5

    if-nez v5, :cond_7

    iget v0, v2, Lcom/google/android/material/tabs/TabLayout;->B0:I

    int-to-float v4, v0

    move v0, v7

    goto :goto_2

    :cond_7
    iget-object v5, p0, LJ6/k;->b:Landroid/widget/TextView;

    if-eqz v5, :cond_8

    invoke-virtual {v5}, Landroid/widget/TextView;->getLineCount()I

    move-result v5

    if-le v5, v7, :cond_8

    iget v4, v2, Lcom/google/android/material/tabs/TabLayout;->r:F

    :cond_8
    :goto_2
    iget-object v5, p0, LJ6/k;->b:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getTextSize()F

    move-result v5

    iget-object v9, p0, LJ6/k;->b:Landroid/widget/TextView;

    invoke-virtual {v9}, Landroid/widget/TextView;->getLineCount()I

    move-result v9

    iget-object v10, p0, LJ6/k;->b:Landroid/widget/TextView;

    invoke-virtual {v10}, Landroid/widget/TextView;->getMaxLines()I

    move-result v10

    cmpl-float v5, v4, v5

    if-nez v5, :cond_9

    if-ltz v10, :cond_c

    if-eq v0, v10, :cond_c

    :cond_9
    iget v10, v2, Lcom/google/android/material/tabs/TabLayout;->z:I

    if-ne v10, v7, :cond_a

    if-lez v5, :cond_a

    if-ne v9, v7, :cond_a

    iget-object v5, p0, LJ6/k;->b:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v5

    if-eqz v5, :cond_c

    invoke-virtual {v5, v8}, Landroid/text/Layout;->getLineWidth(I)F

    move-result v7

    invoke-virtual {v5}, Landroid/text/Layout;->getPaint()Landroid/text/TextPaint;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/Paint;->getTextSize()F

    move-result v5

    div-float v5, v4, v5

    mul-float/2addr v5, v7

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v9

    sub-int/2addr v7, v9

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v9

    sub-int/2addr v7, v9

    int-to-float v7, v7

    cmpl-float v5, v5, v7

    if-lez v5, :cond_a

    goto :goto_3

    :cond_a
    iget-object v5, p0, LJ6/k;->b:Landroid/widget/TextView;

    invoke-virtual {v5, v8, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v5, p0, LJ6/k;->b:Landroid/widget/TextView;

    float-to-int v4, v4

    invoke-static {v2, v5, v4}, Lcom/google/android/material/tabs/TabLayout;->a(Lcom/google/android/material/tabs/TabLayout;Landroid/widget/TextView;I)V

    iget v4, v2, Lcom/google/android/material/tabs/TabLayout;->l0:I

    if-ne v4, v1, :cond_b

    iget-object v4, p0, LJ6/k;->o:Landroid/widget/TextView;

    if-eqz v4, :cond_b

    iget v5, v2, Lcom/google/android/material/tabs/TabLayout;->B0:I

    invoke-static {v2, v4, v5}, Lcom/google/android/material/tabs/TabLayout;->a(Lcom/google/android/material/tabs/TabLayout;Landroid/widget/TextView;I)V

    :cond_b
    iget-object v4, p0, LJ6/k;->b:Landroid/widget/TextView;

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setMaxLines(I)V

    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    :cond_c
    :goto_3
    iget-object p1, p0, LJ6/k;->g:Landroid/widget/TextView;

    if-nez p1, :cond_e

    iget-object p1, p0, LJ6/k;->l:Landroidx/constraintlayout/widget/ConstraintLayout;

    if-eqz p1, :cond_e

    iget-object p1, p0, LJ6/k;->b:Landroid/widget/TextView;

    if-eqz p1, :cond_e

    iget-object v0, p0, LJ6/k;->a:Lcom/google/android/material/tabs/a;

    if-eqz v0, :cond_e

    iget v0, v2, Lcom/google/android/material/tabs/TabLayout;->z:I

    if-nez v0, :cond_e

    iget v0, v2, Lcom/google/android/material/tabs/TabLayout;->l0:I

    if-ne v0, v1, :cond_e

    if-lez v3, :cond_d

    invoke-virtual {p1, v3, v8}, Landroid/view/View;->measure(II)V

    goto :goto_4

    :cond_d
    invoke-virtual {p1, v8, v8}, Landroid/view/View;->measure(II)V

    :goto_4
    iget-object p1, p0, LJ6/k;->b:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    iget-object v0, p0, LJ6/k;->l:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f071277

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    mul-int/2addr v2, v1

    add-int/2addr v2, p1

    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-object p1, p0, LJ6/k;->l:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget p1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-static {p1, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    :cond_e
    return-void
.end method

.method public final onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6

    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_e

    sget-object v0, Lcom/google/android/material/tabs/TabLayout;->E0:Le1/d;

    iget-object v0, p0, LJ6/k;->p:Lcom/google/android/material/tabs/TabLayout;

    invoke-virtual {v0}, Lcom/google/android/material/tabs/TabLayout;->n()Z

    move-result v1

    if-nez v1, :cond_e

    iget-object v1, p0, LJ6/k;->a:Lcom/google/android/material/tabs/a;

    iget-object v1, v1, Lcom/google/android/material/tabs/a;->c:Landroid/view/View;

    if-eqz v1, :cond_0

    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0

    :cond_0
    const/4 v2, 0x0

    if-eqz p1, :cond_d

    if-nez v1, :cond_d

    iget-object v1, p0, LJ6/k;->b:Landroid/widget/TextView;

    if-eqz v1, :cond_d

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    and-int/lit16 v1, v1, 0xff

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v4

    const/4 v5, 0x1

    if-eqz v1, :cond_6

    if-eq v1, v5, :cond_3

    const/4 v2, 0x2

    if-eq v1, v2, :cond_2

    const/4 v2, 0x3

    if-eq v1, v2, :cond_1

    goto/16 :goto_0

    :cond_1
    iget-object v1, p0, LJ6/k;->b:Landroid/widget/TextView;

    iget-object v2, p0, LJ6/k;->c:Landroid/widget/ImageView;

    iget-object v3, p0, LJ6/k;->m:Lcom/google/android/material/tabs/SeslTabRoundRectIndicator;

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/material/tabs/TabLayout;->d(Lcom/google/android/material/tabs/TabLayout;Landroid/widget/TextView;Landroid/widget/ImageView;Lcom/google/android/material/tabs/SeslTabRoundRectIndicator;)V

    goto/16 :goto_0

    :cond_2
    float-to-int v1, v3

    float-to-int v2, v4

    invoke-static {v0, p0, v1, v2}, Lcom/google/android/material/tabs/TabLayout;->c(Lcom/google/android/material/tabs/TabLayout;LJ6/k;II)Z

    move-result v1

    if-nez v1, :cond_c

    iget-object v1, p0, LJ6/k;->b:Landroid/widget/TextView;

    iget-object v2, p0, LJ6/k;->c:Landroid/widget/ImageView;

    iget-object v3, p0, LJ6/k;->m:Lcom/google/android/material/tabs/SeslTabRoundRectIndicator;

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/material/tabs/TabLayout;->d(Lcom/google/android/material/tabs/TabLayout;Landroid/widget/TextView;Landroid/widget/ImageView;Lcom/google/android/material/tabs/SeslTabRoundRectIndicator;)V

    goto/16 :goto_0

    :cond_3
    float-to-int v1, v3

    float-to-int v2, v4

    invoke-static {v0, p0, v1, v2}, Lcom/google/android/material/tabs/TabLayout;->c(Lcom/google/android/material/tabs/TabLayout;LJ6/k;II)Z

    move-result v0

    if-nez v0, :cond_4

    goto/16 :goto_0

    :cond_4
    iget-object v0, p0, LJ6/k;->m:Lcom/google/android/material/tabs/SeslTabRoundRectIndicator;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/google/android/material/tabs/SeslTabRoundRectIndicator;->c()V

    iget-object v0, p0, LJ6/k;->m:Lcom/google/android/material/tabs/SeslTabRoundRectIndicator;

    invoke-virtual {v0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    :cond_5
    invoke-virtual {p0}, LJ6/k;->performClick()Z

    iput-boolean v5, p0, LJ6/k;->k:Z

    goto/16 :goto_0

    :cond_6
    iput-boolean v2, p0, LJ6/k;->k:Z

    iget-object v1, p0, LJ6/k;->a:Lcom/google/android/material/tabs/a;

    iget v1, v1, Lcom/google/android/material/tabs/a;->b:I

    invoke-virtual {v0}, Lcom/google/android/material/tabs/TabLayout;->getSelectedTabPosition()I

    move-result v3

    if-eq v1, v3, :cond_b

    iget-object v1, p0, LJ6/k;->b:Landroid/widget/TextView;

    if-eqz v1, :cond_b

    iget-object v3, v0, Lcom/google/android/material/tabs/TabLayout;->m0:Landroid/graphics/Typeface;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object v1, p0, LJ6/k;->b:Landroid/widget/TextView;

    invoke-static {v0}, Lcom/google/android/material/tabs/TabLayout;->b(Lcom/google/android/material/tabs/TabLayout;)I

    move-result v3

    invoke-virtual {v0, v1, v3}, Lcom/google/android/material/tabs/TabLayout;->w(Landroid/widget/TextView;I)V

    iget-object v1, p0, LJ6/k;->c:Landroid/widget/ImageView;

    if-eqz v1, :cond_7

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setSelected(Z)V

    :cond_7
    iget-object v1, p0, LJ6/k;->m:Lcom/google/android/material/tabs/SeslTabRoundRectIndicator;

    if-eqz v1, :cond_8

    invoke-virtual {v1}, Lcom/google/android/material/tabs/SeslTabRoundRectIndicator;->b()V

    :cond_8
    invoke-virtual {v0}, Lcom/google/android/material/tabs/TabLayout;->getSelectedTabPosition()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/tabs/TabLayout;->m(I)Lcom/google/android/material/tabs/a;

    move-result-object v1

    if-eqz v1, :cond_c

    iget-object v3, v1, Lcom/google/android/material/tabs/a;->e:LJ6/k;

    iget-object v3, v3, LJ6/k;->b:Landroid/widget/TextView;

    if-eqz v3, :cond_9

    iget-object v4, v0, Lcom/google/android/material/tabs/TabLayout;->n0:Landroid/graphics/Typeface;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object v3, v1, Lcom/google/android/material/tabs/a;->e:LJ6/k;

    iget-object v3, v3, LJ6/k;->b:Landroid/widget/TextView;

    iget-object v4, v0, Lcom/google/android/material/tabs/TabLayout;->m:Landroid/content/res/ColorStateList;

    invoke-virtual {v4}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v4

    invoke-virtual {v0, v3, v4}, Lcom/google/android/material/tabs/TabLayout;->w(Landroid/widget/TextView;I)V

    :cond_9
    iget-object v0, v1, Lcom/google/android/material/tabs/a;->e:LJ6/k;

    iget-object v0, v0, LJ6/k;->c:Landroid/widget/ImageView;

    if-eqz v0, :cond_a

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setSelected(Z)V

    :cond_a
    iget-object v0, v1, Lcom/google/android/material/tabs/a;->e:LJ6/k;

    iget-object v0, v0, LJ6/k;->m:Lcom/google/android/material/tabs/SeslTabRoundRectIndicator;

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Lcom/google/android/material/tabs/SeslTabRoundRectIndicator;->a()V

    goto :goto_0

    :cond_b
    iget-object v1, p0, LJ6/k;->a:Lcom/google/android/material/tabs/a;

    iget v1, v1, Lcom/google/android/material/tabs/a;->b:I

    invoke-virtual {v0}, Lcom/google/android/material/tabs/TabLayout;->getSelectedTabPosition()I

    move-result v0

    if-ne v1, v0, :cond_c

    iget-object v0, p0, LJ6/k;->m:Lcom/google/android/material/tabs/SeslTabRoundRectIndicator;

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Lcom/google/android/material/tabs/SeslTabRoundRectIndicator;->b()V

    :cond_c
    :goto_0
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    :cond_d
    return v2

    :cond_e
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public final performClick()Z
    .locals 4

    iget-boolean v0, p0, LJ6/k;->k:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    iput-boolean v2, p0, LJ6/k;->k:Z

    return v1

    :cond_0
    invoke-super {p0}, Landroid/view/View;->performClick()Z

    move-result v0

    iget-object v3, p0, LJ6/k;->a:Lcom/google/android/material/tabs/a;

    if-eqz v3, :cond_3

    if-nez v0, :cond_1

    invoke-virtual {p0, v2}, Landroid/view/View;->playSoundEffect(I)V

    :cond_1
    iget-object p0, p0, LJ6/k;->a:Lcom/google/android/material/tabs/a;

    iget-object v0, p0, Lcom/google/android/material/tabs/a;->d:Lcom/google/android/material/tabs/TabLayout;

    if-eqz v0, :cond_2

    invoke-virtual {v0, p0, v1}, Lcom/google/android/material/tabs/TabLayout;->r(Lcom/google/android/material/tabs/a;Z)V

    return v1

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Tab not attached to a TabLayout"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    return v0
.end method

.method public setEnabled(Z)V
    .locals 0

    invoke-super {p0, p1}, Landroid/view/View;->setEnabled(Z)V

    iget-object p0, p0, LJ6/k;->n:Landroid/view/View;

    if-eqz p0, :cond_1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method public setSelected(Z)V
    .locals 3

    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->isSelected()Z

    invoke-super {p0, p1}, Landroid/view/View;->setSelected(Z)V

    iget-object v0, p0, LJ6/k;->b:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setSelected(Z)V

    :cond_1
    iget-object v0, p0, LJ6/k;->c:Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setSelected(Z)V

    :cond_2
    iget-object v0, p0, LJ6/k;->f:Landroid/view/View;

    if-eqz v0, :cond_3

    invoke-virtual {v0, p1}, Landroid/view/View;->setSelected(Z)V

    :cond_3
    iget-object v0, p0, LJ6/k;->m:Lcom/google/android/material/tabs/SeslTabRoundRectIndicator;

    if-eqz v0, :cond_5

    invoke-virtual {v0, p1}, Landroid/view/View;->setSelected(Z)V

    const/4 v0, 0x0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, LJ6/k;->m:Lcom/google/android/material/tabs/SeslTabRoundRectIndicator;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, LG5/t;->d(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_4

    const v2, 0x7f0806c5

    goto :goto_0

    :cond_4
    const v2, 0x7f0806c4

    :goto_0
    invoke-virtual {v1, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    sget-object v2, Lf1/W;->a:Ljava/util/WeakHashMap;

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_5
    iget-object p0, p0, LJ6/k;->o:Landroid/widget/TextView;

    if-eqz p0, :cond_6

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setSelected(Z)V

    :cond_6
    return-void
.end method

.method public setTab(Lcom/google/android/material/tabs/a;)V
    .locals 1
    .param p1    # Lcom/google/android/material/tabs/a;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, LJ6/k;->a:Lcom/google/android/material/tabs/a;

    if-eq p1, v0, :cond_0

    iput-object p1, p0, LJ6/k;->a:Lcom/google/android/material/tabs/a;

    invoke-virtual {p0}, LJ6/k;->d()V

    :cond_0
    return-void
.end method
