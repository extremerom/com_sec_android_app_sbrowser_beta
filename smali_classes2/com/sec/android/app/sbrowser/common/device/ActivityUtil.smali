.class public Lcom/sec/android/app/sbrowser/common/device/ActivityUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static getActivity(Landroid/content/Context;)Landroid/app/Activity;
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    instance-of v1, p0, Landroid/app/Activity;

    if-eqz v1, :cond_1

    check-cast p0, Landroid/app/Activity;

    return-object p0

    :cond_1
    instance-of v1, p0, Landroid/content/ContextWrapper;

    if-eqz v1, :cond_2

    check-cast p0, Landroid/content/ContextWrapper;

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/device/ActivityUtil;->getActivity(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object p0

    return-object p0

    :cond_2
    return-object v0
.end method

.method public static getContentView(Landroid/app/Activity;)Landroid/view/View;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p0

    const v0, 0x1020002

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static getTaskId(Landroid/app/Activity;)I
    .locals 0

    invoke-static {p0}, Lcom/sec/terrace/TerraceApplicationStatus;->getTaskIdForActivity(Landroid/app/Activity;)I

    move-result p0

    return p0
.end method

.method public static isContentViewVisible(Landroid/app/Activity;)Z
    .locals 0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/device/ActivityUtil;->getContentView(Landroid/app/Activity;)Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isCurrentActivityVisible(Landroid/app/Activity;)Z
    .locals 1

    invoke-static {p0}, Lcom/sec/terrace/TerraceApplicationStatus;->getStateForActivity(Landroid/app/Activity;)I

    move-result p0

    const/4 v0, 0x4

    if-gt p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isResumedOrResuming(Landroid/app/Activity;)Z
    .locals 1

    invoke-static {p0}, Lcom/sec/terrace/TerraceApplicationStatus;->getStateForActivity(Landroid/app/Activity;)I

    move-result p0

    const/4 v0, 0x3

    if-gt p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isTopInstanceInMultiWindowMode(Landroid/app/Activity;)Z
    .locals 5

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/device/DeviceSettings;->isInMultiWindowMode(Landroid/app/Activity;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->getStatusBarHeight()I

    move-result v2

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/device/WindowUtils;->getDeviceWidth(Landroid/app/Activity;)I

    move-result p0

    iget v3, v0, Landroid/graphics/Rect;->right:I

    iget v4, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v3, v4

    if-ne v3, p0, :cond_1

    iget p0, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr p0, v2

    const/4 v0, 0x1

    if-gt p0, v0, :cond_1

    move v1, v0

    :cond_1
    return v1
.end method

.method public static isValid(Landroid/app/Activity;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_1

    return v0

    :cond_1
    invoke-virtual {p0}, Landroid/app/Activity;->isDestroyed()Z

    move-result p0

    if-eqz p0, :cond_2

    return v0

    :cond_2
    const/4 p0, 0x1

    return p0
.end method

.method public static isVisible(Landroid/app/Activity;)Z
    .locals 1

    invoke-static {p0}, Lcom/sec/terrace/TerraceApplicationStatus;->getStateForActivity(Landroid/app/Activity;)I

    move-result p0

    const/4 v0, 0x4

    if-gt p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static setContentViewVisible(Landroid/app/Activity;Z)V
    .locals 0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/device/ActivityUtil;->getContentView(Landroid/app/Activity;)Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/4 p1, 0x4

    :goto_0
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method public static setWindowInsetsAnimation(Landroid/app/Activity;Landroid/view/View;)V
    .locals 3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_1

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-static {v0}, LT6/a;->p(Landroid/view/Window;)V

    new-instance v0, Lr/e;

    invoke-static {}, Lf1/y0;->a()I

    move-result v1

    invoke-static {}, Lf1/E;->D()I

    move-result v2

    or-int/2addr v1, v2

    invoke-static {}, Lf1/E;->b()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lr/e;-><init>(II)V

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/device/ActivityUtil;->getContentView(Landroid/app/Activity;)Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-static {p0, v0}, Lcom/samsung/android/sdk/aisuggestion/helper/a;->s(Landroid/view/View;Lr/e;)V

    invoke-virtual {p0, v0}, Landroid/view/View;->setOnApplyWindowInsetsListener(Landroid/view/View$OnApplyWindowInsetsListener;)V

    :cond_0
    if-eqz p1, :cond_1

    new-instance p0, Lr/f;

    invoke-static {}, Lf1/y0;->a()I

    move-result v0

    invoke-static {}, Lf1/E;->D()I

    move-result v1

    or-int/2addr v0, v1

    invoke-static {}, Lf1/E;->b()I

    move-result v1

    invoke-direct {p0, p1, v0, v1}, Lr/f;-><init>(Landroid/view/View;II)V

    invoke-static {p1, p0}, Lcom/samsung/android/sdk/aisuggestion/helper/a;->t(Landroid/view/View;Lr/f;)V

    :cond_1
    return-void
.end method
