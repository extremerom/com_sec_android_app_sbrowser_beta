.class Lcom/sec/android/app/sbrowser/customtabs/features/partialcustomtab/PartialCustomTabVersionCompat$PartialCustomTabVersionCompatR;
.super Lcom/sec/android/app/sbrowser/customtabs/features/partialcustomtab/PartialCustomTabVersionCompat;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/RequiresApi;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/customtabs/features/partialcustomtab/PartialCustomTabVersionCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PartialCustomTabVersionCompatR"
.end annotation


# instance fields
.field private mAnimationCallback:Landroid/view/WindowInsetsAnimation$Callback;


# direct methods
.method private constructor <init>(Landroid/app/Activity;Ljava/lang/Runnable;)V
    .locals 0
    .param p1    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/customtabs/features/partialcustomtab/PartialCustomTabVersionCompat;-><init>(Landroid/app/Activity;Ljava/lang/Runnable;)V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/app/Activity;Ljava/lang/Runnable;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/customtabs/features/partialcustomtab/PartialCustomTabVersionCompat$PartialCustomTabVersionCompatR;-><init>(Landroid/app/Activity;Ljava/lang/Runnable;)V

    return-void
.end method

.method private navigationBarInsets()Landroid/graphics/Insets;
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/customtabs/features/partialcustomtab/PartialCustomTabVersionCompat;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object p0

    invoke-static {p0}, Lf1/y0;->k(Landroid/view/WindowManager;)Landroid/view/WindowMetrics;

    move-result-object p0

    invoke-static {p0}, Lf1/y0;->j(Landroid/view/WindowMetrics;)Landroid/view/WindowInsets;

    move-result-object p0

    invoke-static {}, Lf1/E;->x()I

    move-result v0

    invoke-static {p0, v0}, Lf1/y0;->f(Landroid/view/WindowInsets;I)Landroid/graphics/Insets;

    move-result-object p0

    return-object p0
.end method

.method private statusBarInsets()Landroid/graphics/Insets;
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/customtabs/features/partialcustomtab/PartialCustomTabVersionCompat;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object p0

    invoke-static {p0}, Lf1/y0;->k(Landroid/view/WindowManager;)Landroid/view/WindowMetrics;

    move-result-object p0

    invoke-static {p0}, Lf1/y0;->j(Landroid/view/WindowMetrics;)Landroid/view/WindowInsets;

    move-result-object p0

    invoke-static {}, Lf1/E;->s()I

    move-result v0

    invoke-static {p0, v0}, Lf1/y0;->f(Landroid/view/WindowInsets;I)Landroid/graphics/Insets;

    move-result-object p0

    return-object p0
.end method

.method private windowBounds()Landroid/graphics/Rect;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/customtabs/features/partialcustomtab/PartialCustomTabVersionCompat;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object p0

    invoke-static {p0}, Lf1/y0;->k(Landroid/view/WindowManager;)Landroid/view/WindowMetrics;

    move-result-object p0

    invoke-static {p0}, LT6/a;->h(Landroid/view/WindowMetrics;)Landroid/graphics/Rect;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getDisplayHeight()I
    .locals 0
    .annotation build Landroidx/annotation/Px;
    .end annotation

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/customtabs/features/partialcustomtab/PartialCustomTabVersionCompat$PartialCustomTabVersionCompatR;->windowBounds()Landroid/graphics/Rect;

    move-result-object p0

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result p0

    return p0
.end method

.method public getDisplayWidth()I
    .locals 3
    .annotation build Landroidx/annotation/Px;
    .end annotation

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/customtabs/features/partialcustomtab/PartialCustomTabVersionCompat;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-static {v0}, Lf1/y0;->k(Landroid/view/WindowManager;)Landroid/view/WindowMetrics;

    move-result-object v0

    invoke-static {v0}, Lf1/y0;->j(Landroid/view/WindowMetrics;)Landroid/view/WindowInsets;

    move-result-object v0

    invoke-static {}, Lf1/E;->x()I

    move-result v1

    invoke-static {}, Lf1/E;->D()I

    move-result v2

    or-int/2addr v1, v2

    invoke-static {v0, v1}, Lf1/y0;->f(Landroid/view/WindowInsets;I)Landroid/graphics/Insets;

    move-result-object v0

    iget v1, v0, Landroid/graphics/Insets;->left:I

    iget v0, v0, Landroid/graphics/Insets;->right:I

    add-int/2addr v1, v0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/customtabs/features/partialcustomtab/PartialCustomTabVersionCompat$PartialCustomTabVersionCompatR;->windowBounds()Landroid/graphics/Rect;

    move-result-object p0

    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result p0

    sub-int/2addr p0, v1

    return p0
.end method

.method public getDisplayWidthDp()I
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/customtabs/features/partialcustomtab/PartialCustomTabVersionCompat$PartialCustomTabVersionCompatR;->getDisplayWidth()I

    move-result v0

    int-to-float v0, v0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/customtabs/features/partialcustomtab/PartialCustomTabVersionCompat;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    iget p0, p0, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v0, p0

    float-to-int p0, v0

    return p0
.end method

.method public getNavigationBarHeight()I
    .locals 0
    .annotation build Landroidx/annotation/Px;
    .end annotation

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/customtabs/features/partialcustomtab/PartialCustomTabVersionCompat$PartialCustomTabVersionCompatR;->navigationBarInsets()Landroid/graphics/Insets;

    move-result-object p0

    iget p0, p0, Landroid/graphics/Insets;->bottom:I

    return p0
.end method

.method public getScreenWidth()I
    .locals 0
    .annotation build Landroidx/annotation/Px;
    .end annotation

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/customtabs/features/partialcustomtab/PartialCustomTabVersionCompat$PartialCustomTabVersionCompatR;->windowBounds()Landroid/graphics/Rect;

    move-result-object p0

    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result p0

    return p0
.end method

.method public getStatusBarHeight()I
    .locals 0
    .annotation build Landroidx/annotation/Px;
    .end annotation

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/customtabs/features/partialcustomtab/PartialCustomTabVersionCompat$PartialCustomTabVersionCompatR;->statusBarInsets()Landroid/graphics/Insets;

    move-result-object p0

    iget p0, p0, Landroid/graphics/Insets;->top:I

    return p0
.end method

.method public getXOffset()I
    .locals 0
    .annotation build Landroidx/annotation/Px;
    .end annotation

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/customtabs/features/partialcustomtab/PartialCustomTabVersionCompat$PartialCustomTabVersionCompatR;->navigationBarInsets()Landroid/graphics/Insets;

    move-result-object p0

    iget p0, p0, Landroid/graphics/Insets;->left:I

    return p0
.end method

.method public setImeStateCallback(Lcom/sec/android/app/sbrowser/common/model/general/GeneralCallback;)Z
    .locals 4
    .param p1    # Lcom/sec/android/app/sbrowser/common/model/general/GeneralCallback;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/android/app/sbrowser/common/model/general/GeneralCallback<",
            "Ljava/lang/Boolean;",
            ">;)Z"
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    iget-object v3, p0, Lcom/sec/android/app/sbrowser/customtabs/features/partialcustomtab/PartialCustomTabVersionCompat$PartialCustomTabVersionCompatR;->mAnimationCallback:Landroid/view/WindowInsetsAnimation$Callback;

    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    move v0, v1

    :goto_1
    xor-int/2addr v0, v2

    if-nez p1, :cond_2

    if-eqz v3, :cond_2

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/customtabs/features/partialcustomtab/PartialCustomTabVersionCompat$PartialCustomTabVersionCompatR;->mAnimationCallback:Landroid/view/WindowInsetsAnimation$Callback;

    goto :goto_2

    :cond_2
    if-eqz p1, :cond_3

    if-nez v3, :cond_3

    new-instance v2, Lcom/sec/android/app/sbrowser/customtabs/features/partialcustomtab/PartialCustomTabVersionCompat$PartialCustomTabVersionCompatR$1;

    invoke-direct {v2, p0, v1, p1}, Lcom/sec/android/app/sbrowser/customtabs/features/partialcustomtab/PartialCustomTabVersionCompat$PartialCustomTabVersionCompatR$1;-><init>(Lcom/sec/android/app/sbrowser/customtabs/features/partialcustomtab/PartialCustomTabVersionCompat$PartialCustomTabVersionCompatR;ILcom/sec/android/app/sbrowser/common/model/general/GeneralCallback;)V

    iput-object v2, p0, Lcom/sec/android/app/sbrowser/customtabs/features/partialcustomtab/PartialCustomTabVersionCompat$PartialCustomTabVersionCompatR;->mAnimationCallback:Landroid/view/WindowInsetsAnimation$Callback;

    :cond_3
    :goto_2
    if-eqz v0, :cond_4

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/customtabs/features/partialcustomtab/PartialCustomTabVersionCompat;->mActivity:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/customtabs/features/partialcustomtab/PartialCustomTabVersionCompat$PartialCustomTabVersionCompatR;->mAnimationCallback:Landroid/view/WindowInsetsAnimation$Callback;

    invoke-static {p1, p0}, Lcom/samsung/android/sdk/aisuggestion/helper/a;->r(Landroid/view/View;Landroid/view/WindowInsetsAnimation$Callback;)V

    :cond_4
    return v0
.end method

.method public updatePosition()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/customtabs/features/partialcustomtab/PartialCustomTabVersionCompat;->mPositionUpdater:Ljava/lang/Runnable;

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    return-void
.end method
