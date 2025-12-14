.class public final LH6/o;
.super LH6/m;
.source "SourceFile"


# static fields
.field public static final F:[I

.field public static G:Z


# instance fields
.field public final C:Landroid/view/accessibility/AccessibilityManager;

.field public D:Z

.field public E:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const v0, 0x7f0404c1

    const v1, 0x7f0404c3

    filled-new-array {v0, v1}, [I

    move-result-object v0

    sput-object v0, LH6/o;->F:[I

    const/4 v0, 0x0

    sput-boolean v0, LH6/o;->G:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/google/android/material/snackbar/SnackbarContentLayout;Lcom/google/android/material/snackbar/SnackbarContentLayout;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, LH6/m;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/google/android/material/snackbar/SnackbarContentLayout;Lcom/google/android/material/snackbar/SnackbarContentLayout;)V

    const/4 p1, -0x1

    iput p1, p0, LH6/o;->E:I

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string p2, "accessibility"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/accessibility/AccessibilityManager;

    iput-object p1, p0, LH6/o;->C:Landroid/view/accessibility/AccessibilityManager;

    return-void
.end method

.method public static h(IILandroid/view/View;)LH6/o;
    .locals 1

    invoke-virtual {p2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object p0

    const/4 v0, -0x1

    invoke-static {p2, p0, p1, v0}, LH6/o;->i(Landroid/view/View;Ljava/lang/CharSequence;II)LH6/o;

    move-result-object p0

    return-object p0
.end method

.method public static i(Landroid/view/View;Ljava/lang/CharSequence;II)LH6/o;
    .locals 7

    const/4 v0, 0x0

    sput-boolean v0, LH6/o;->G:Z

    const/4 v1, 0x0

    move-object v2, v1

    :cond_0
    instance-of v3, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    const/4 v4, 0x1

    if-eqz v3, :cond_1

    sput-boolean v4, LH6/o;->G:Z

    check-cast p0, Landroid/view/ViewGroup;

    goto :goto_1

    :cond_1
    instance-of v3, p0, Landroid/widget/FrameLayout;

    if-eqz v3, :cond_3

    invoke-virtual {p0}, Landroid/view/View;->getId()I

    move-result v2

    const v3, 0x1020002

    if-ne v2, v3, :cond_2

    check-cast p0, Landroid/view/ViewGroup;

    goto :goto_1

    :cond_2
    move-object v2, p0

    check-cast v2, Landroid/view/ViewGroup;

    :cond_3
    if-eqz p0, :cond_5

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    instance-of v3, p0, Landroid/view/View;

    if-eqz v3, :cond_4

    check-cast p0, Landroid/view/View;

    goto :goto_0

    :cond_4
    move-object p0, v1

    :cond_5
    :goto_0
    if-nez p0, :cond_0

    move-object p0, v2

    :goto_1
    if-eqz p0, :cond_a

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    if-nez p3, :cond_6

    const v3, 0x7f0e0851

    goto :goto_2

    :cond_6
    sget-object v3, LH6/o;->F:[I

    invoke-virtual {v1, v3}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v3

    const/4 v5, -0x1

    invoke-virtual {v3, v0, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v6

    invoke-virtual {v3, v4, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    if-eq v6, v5, :cond_7

    if-eq v4, v5, :cond_7

    const v3, 0x7f0e04f1

    goto :goto_2

    :cond_7
    const v3, 0x7f0e01de

    :goto_2
    invoke-virtual {v2, v3, p0, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/google/android/material/snackbar/SnackbarContentLayout;

    sget-boolean v3, LH6/o;->G:Z

    invoke-virtual {v2, v3}, Lcom/google/android/material/snackbar/SnackbarContentLayout;->setIsCoordinatorLayoutParent(Z)V

    new-instance v3, LH6/o;

    invoke-direct {v3, v1, p0, v2, v2}, LH6/o;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/google/android/material/snackbar/SnackbarContentLayout;Lcom/google/android/material/snackbar/SnackbarContentLayout;)V

    iput p3, v3, LH6/o;->E:I

    iget-object p0, v3, LH6/m;->i:LH6/l;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/google/android/material/snackbar/SnackbarContentLayout;

    invoke-virtual {v1}, Lcom/google/android/material/snackbar/SnackbarContentLayout;->getMessageView()Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget p1, v3, LH6/o;->E:I

    if-nez p1, :cond_8

    const p1, 0x7f071098

    goto :goto_3

    :cond_8
    const p1, 0x7f070434

    :goto_3
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/snackbar/SnackbarContentLayout;

    invoke-virtual {v0}, Lcom/google/android/material/snackbar/SnackbarContentLayout;->getMessageView()Landroid/widget/TextView;

    move-result-object v0

    sget-object v1, LO6/a;->LARGE:LO6/a;

    invoke-static {v0, p1, v1}, Ln5/e;->a(Landroid/widget/TextView;ILO6/a;)V

    iput p2, v3, LH6/m;->k:I

    if-nez p3, :cond_9

    const/4 p1, 0x2

    invoke-virtual {p0, p1}, LH6/l;->setAnimationMode(I)V

    :cond_9
    return-object v3

    :cond_a
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "No suitable parent found from the given view. Please provide a valid view."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final j(ILandroid/view/View$OnClickListener;)V
    .locals 1

    iget-object v0, p0, LH6/m;->h:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, LH6/o;->k(Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public final k(Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)V
    .locals 6

    iget-object v0, p0, LH6/m;->i:LH6/l;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/google/android/material/snackbar/SnackbarContentLayout;

    invoke-virtual {v2}, Lcom/google/android/material/snackbar/SnackbarContentLayout;->getActionView()Landroid/widget/Button;

    move-result-object v2

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/google/android/material/snackbar/SnackbarContentLayout;

    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    iget v5, p0, LH6/o;->E:I

    if-nez v5, :cond_0

    const v5, 0x7f080684

    goto :goto_0

    :cond_0
    const v5, 0x7f080578

    :goto_0
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_5

    if-nez p2, :cond_1

    goto :goto_2

    :cond_1
    const/4 v3, 0x1

    iput-boolean v3, p0, LH6/o;->D:Z

    iget v4, p0, LH6/o;->E:I

    if-eqz v4, :cond_2

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance p1, LFa/b;

    const/4 v4, 0x1

    invoke-direct {p1, v4, p0, p2}, LFa/b;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v2, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget p1, p0, LH6/o;->E:I

    if-nez p1, :cond_3

    const p1, 0x7f071095

    goto :goto_1

    :cond_3
    const p1, 0x7f071091

    :goto_1
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/google/android/material/snackbar/SnackbarContentLayout;

    invoke-virtual {p2}, Lcom/google/android/material/snackbar/SnackbarContentLayout;->getMessageView()Landroid/widget/TextView;

    move-result-object p2

    sget-object v0, LO6/a;->LARGE:LO6/a;

    invoke-static {p2, p1, v0}, Ln5/e;->a(Landroid/widget/TextView;ILO6/a;)V

    iget-object p0, p0, LH6/m;->h:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    if-eqz p0, :cond_4

    const-string p1, "show_button_background"

    invoke-static {p0, p1, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-ne p0, v3, :cond_4

    move v1, v3

    :cond_4
    invoke-static {v2, v1}, LG5/r3;->c(Landroid/widget/TextView;Z)V

    goto :goto_3

    :cond_5
    :goto_2
    const/16 p1, 0x8

    invoke-virtual {v2, p1}, Landroid/view/View;->setVisibility(I)V

    const/4 p1, 0x0

    invoke-virtual {v2, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iput-boolean v1, p0, LH6/o;->D:Z

    :goto_3
    return-void
.end method

.method public final l()V
    .locals 6

    invoke-static {}, Lo3/n;->u()Lo3/n;

    move-result-object v0

    iget v1, p0, LH6/m;->k:I

    const/4 v2, 0x0

    const/4 v3, 0x4

    const/4 v4, -0x2

    if-ne v1, v4, :cond_0

    goto :goto_1

    :cond_0
    iget-boolean v4, p0, LH6/o;->D:Z

    if-eqz v4, :cond_1

    move v4, v3

    goto :goto_0

    :cond_1
    move v4, v2

    :goto_0
    or-int/lit8 v4, v4, 0x3

    iget-object v5, p0, LH6/o;->C:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v5, v1, v4}, Landroid/view/accessibility/AccessibilityManager;->getRecommendedTimeoutMillis(II)I

    move-result v4

    :goto_1
    iget-object p0, p0, LH6/m;->u:LH6/j;

    iget-object v1, v0, Lo3/n;->a:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-virtual {v0, p0}, Lo3/n;->v(LH6/j;)Z

    move-result v5

    if-eqz v5, :cond_2

    iget-object p0, v0, Lo3/n;->c:Ljava/lang/Object;

    check-cast p0, LH6/s;

    iput v4, p0, LH6/s;->b:I

    iget-object v2, v0, Lo3/n;->b:Ljava/lang/Object;

    check-cast v2, Landroid/os/Handler;

    invoke-virtual {v2, p0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object p0, v0, Lo3/n;->c:Ljava/lang/Object;

    check-cast p0, LH6/s;

    invoke-virtual {v0, p0}, Lo3/n;->B(LH6/s;)V

    monitor-exit v1

    goto :goto_3

    :catchall_0
    move-exception p0

    goto :goto_4

    :cond_2
    iget-object v5, v0, Lo3/n;->d:Ljava/lang/Object;

    check-cast v5, LH6/s;

    if-eqz v5, :cond_3

    iget-object v5, v5, LH6/s;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v5}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v5

    if-ne v5, p0, :cond_3

    const/4 v2, 0x1

    :cond_3
    if-eqz v2, :cond_4

    iget-object p0, v0, Lo3/n;->d:Ljava/lang/Object;

    check-cast p0, LH6/s;

    iput v4, p0, LH6/s;->b:I

    goto :goto_2

    :cond_4
    new-instance v2, LH6/s;

    invoke-direct {v2, v4, p0}, LH6/s;-><init>(ILH6/j;)V

    iput-object v2, v0, Lo3/n;->d:Ljava/lang/Object;

    :goto_2
    iget-object p0, v0, Lo3/n;->c:Ljava/lang/Object;

    check-cast p0, LH6/s;

    if-eqz p0, :cond_5

    invoke-virtual {v0, p0, v3}, Lo3/n;->p(LH6/s;I)Z

    move-result p0

    if-eqz p0, :cond_5

    monitor-exit v1

    goto :goto_3

    :cond_5
    const/4 p0, 0x0

    iput-object p0, v0, Lo3/n;->c:Ljava/lang/Object;

    invoke-virtual {v0}, Lo3/n;->C()V

    monitor-exit v1

    :goto_3
    return-void

    :goto_4
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
