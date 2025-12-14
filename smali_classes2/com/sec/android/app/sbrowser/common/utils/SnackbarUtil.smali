.class public Lcom/sec/android/app/sbrowser/common/utils/SnackbarUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static synthetic a(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/common/utils/SnackbarUtil;->lambda$showWithDelay$0(Landroid/app/Activity;Ljava/lang/String;)V

    return-void
.end method

.method private static getView(Landroid/app/Activity;)Landroid/view/View;
    .locals 1

    instance-of v0, p0, Lcom/sec/android/app/sbrowser/common/utils/SnackbarDelegate;

    if-eqz v0, :cond_0

    check-cast p0, Lcom/sec/android/app/sbrowser/common/utils/SnackbarDelegate;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/common/utils/SnackbarDelegate;->getViewForSnackbar()Landroid/view/View;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p0

    const v0, 0x1020002

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$showWithDelay$0(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/common/utils/SnackbarUtil;->show(Landroid/app/Activity;Ljava/lang/String;)V

    return-void
.end method

.method public static make(Landroid/app/Activity;Ljava/lang/CharSequence;)LH6/o;
    .locals 2

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/utils/SnackbarUtil;->getView(Landroid/app/Activity;)Landroid/view/View;

    move-result-object v0

    const/4 v1, -0x1

    invoke-static {v0, p1, v1, v1}, LH6/o;->i(Landroid/view/View;Ljava/lang/CharSequence;II)LH6/o;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/common/utils/SnackbarUtil;->makeInternal(Landroid/content/Context;LH6/o;)V

    return-object p1
.end method

.method public static make(Landroid/content/Context;Landroid/view/View;I)LH6/o;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p2, v0, p1}, LH6/o;->h(IILandroid/view/View;)LH6/o;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/common/utils/SnackbarUtil;->makeInternal(Landroid/content/Context;LH6/o;)V

    return-object p1
.end method

.method public static make(Landroid/content/Context;Landroid/view/View;Ljava/lang/String;)LH6/o;
    .locals 2

    const/4 v0, -0x1

    const/4 v1, 0x0

    invoke-static {p1, p2, v1, v0}, LH6/o;->i(Landroid/view/View;Ljava/lang/CharSequence;II)LH6/o;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/common/utils/SnackbarUtil;->makeInternal(Landroid/content/Context;LH6/o;)V

    return-object p1
.end method

.method private static makeInternal(Landroid/content/Context;LH6/o;)V
    .locals 5

    iget-object p1, p1, LH6/m;->i:LH6/l;

    check-cast p1, Lcom/google/android/material/snackbar/Snackbar$SnackbarLayout;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setFocusable(Z)V

    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/sec/android/app/sbrowser/common/utils/SnackbarUtil$1;

    invoke-direct {v1, p1}, Lcom/sec/android/app/sbrowser/common/utils/SnackbarUtil$1;-><init>(Lcom/google/android/material/snackbar/Snackbar$SnackbarLayout;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    instance-of v0, p0, Lcom/sec/android/app/sbrowser/common/model/main_activity/IMainActivity;

    if-eqz v0, :cond_1

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->isFocusLayoutType(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->isLandscapeOrTabletStyle(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getPaddingStart()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getPaddingEnd()I

    move-result v2

    invoke-virtual {p1}, Landroid/view/View;->getPaddingBottom()I

    move-result v3

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v4, 0x7f0715d5

    invoke-virtual {p0, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    add-int/2addr p0, v3

    invoke-virtual {p1, v0, v1, v2, p0}, Landroid/view/View;->setPadding(IIII)V

    nop

    :cond_1
    :goto_0
    return-void
.end method

.method public static show(Landroid/app/Activity;II)V
    .locals 1

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/utils/SnackbarUtil;->getView(Landroid/app/Activity;)Landroid/view/View;

    move-result-object v0

    invoke-static {p1, p2, v0}, LH6/o;->h(IILandroid/view/View;)LH6/o;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/common/utils/SnackbarUtil;->makeInternal(Landroid/content/Context;LH6/o;)V

    invoke-virtual {p1}, LH6/o;->l()V

    return-void
.end method

.method public static show(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 2

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/utils/SnackbarUtil;->getView(Landroid/app/Activity;)Landroid/view/View;

    move-result-object v0

    const/4 v1, -0x1

    invoke-static {v0, p1, v1, v1}, LH6/o;->i(Landroid/view/View;Ljava/lang/CharSequence;II)LH6/o;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/common/utils/SnackbarUtil;->makeInternal(Landroid/content/Context;LH6/o;)V

    invoke-virtual {p1}, LH6/o;->l()V

    return-void
.end method

.method public static show(Landroid/content/Context;Landroid/view/View;I)V
    .locals 1

    const/4 v0, -0x1

    invoke-static {p2, v0, p1}, LH6/o;->h(IILandroid/view/View;)LH6/o;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/common/utils/SnackbarUtil;->makeInternal(Landroid/content/Context;LH6/o;)V

    invoke-virtual {p1}, LH6/o;->l()V

    return-void
.end method

.method public static show(Landroid/content/Context;Landroid/view/View;II)V
    .locals 0

    invoke-static {p2, p3, p1}, LH6/o;->h(IILandroid/view/View;)LH6/o;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/common/utils/SnackbarUtil;->makeInternal(Landroid/content/Context;LH6/o;)V

    invoke-virtual {p1}, LH6/o;->l()V

    return-void
.end method

.method public static show(Landroid/content/Context;Landroid/view/View;Ljava/lang/String;)V
    .locals 1

    const/4 v0, -0x1

    invoke-static {p1, p2, v0, v0}, LH6/o;->i(Landroid/view/View;Ljava/lang/CharSequence;II)LH6/o;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/common/utils/SnackbarUtil;->makeInternal(Landroid/content/Context;LH6/o;)V

    invoke-virtual {p1}, LH6/o;->l()V

    return-void
.end method

.method public static show(Landroid/content/Context;Landroid/view/View;Ljava/lang/String;I)V
    .locals 1

    const/4 v0, -0x1

    invoke-static {p1, p2, p3, v0}, LH6/o;->i(Landroid/view/View;Ljava/lang/CharSequence;II)LH6/o;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/common/utils/SnackbarUtil;->makeInternal(Landroid/content/Context;LH6/o;)V

    invoke-virtual {p1}, LH6/o;->l()V

    return-void
.end method

.method public static showWithDelay(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 3
    .param p0    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/sec/android/app/sbrowser/common/utils/a;

    const/4 v2, 0x3

    invoke-direct {v1, v2, p0, p1}, Lcom/sec/android/app/sbrowser/common/utils/a;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    const-wide/16 p0, 0xc8

    invoke-virtual {v0, v1, p0, p1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
