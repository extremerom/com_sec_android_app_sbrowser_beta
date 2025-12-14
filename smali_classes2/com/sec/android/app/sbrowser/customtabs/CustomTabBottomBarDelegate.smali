.class public Lcom/sec/android/app/sbrowser/customtabs/CustomTabBottomBarDelegate;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/common/gesture/SwipeGestureListener$SwipeHandler;


# instance fields
.field private final mActivity:Landroid/app/Activity;

.field private final mBottomBarClickListener:Landroid/view/View$OnClickListener;

.field private mBottomBarHeightOverride:I

.field private mBottomBarView:Lcom/sec/android/app/sbrowser/customtabs/CustomTabBottomBarView;

.field private final mBrowserControlsSizer:Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/BrowserControlsSizer;

.field private mClickPendingIntent:Landroid/app/PendingIntent;

.field private mClickableIDs:[I

.field private final mDataProvider:Lcom/sec/terrace/browser/browserservices/intents/TerraceBrowserServicesIntentDataProvider;

.field private mShowShadow:Z

.field private mSwipeUpPendingIntent:Landroid/app/PendingIntent;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final mTabProvider:Lcom/sec/android/app/sbrowser/common/function/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sec/android/app/sbrowser/common/function/Supplier<",
            "Lcom/sec/android/app/sbrowser/tab/Tab;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/BrowserControlsSizer;Lcom/sec/terrace/browser/browserservices/intents/TerraceBrowserServicesIntentDataProvider;Lcom/sec/android/app/sbrowser/customtabs/content/CustomTabActivityTabProvider;)V
    .locals 1
    .param p1    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/BrowserControlsSizer;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/sec/terrace/browser/browserservices/intents/TerraceBrowserServicesIntentDataProvider;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Lcom/sec/android/app/sbrowser/customtabs/content/CustomTabActivityTabProvider;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabBottomBarDelegate;->mBottomBarHeightOverride:I

    new-instance v0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabBottomBarDelegate$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabBottomBarDelegate$1;-><init>(Lcom/sec/android/app/sbrowser/customtabs/CustomTabBottomBarDelegate;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabBottomBarDelegate;->mBottomBarClickListener:Landroid/view/View$OnClickListener;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabBottomBarDelegate;->mActivity:Landroid/app/Activity;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabBottomBarDelegate;->mBrowserControlsSizer:Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/BrowserControlsSizer;

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabBottomBarDelegate;->mDataProvider:Lcom/sec/terrace/browser/browserservices/intents/TerraceBrowserServicesIntentDataProvider;

    invoke-static {p4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p1, Lcom/sec/android/app/sbrowser/customtabs/c;

    const/4 p2, 0x3

    invoke-direct {p1, p2, p4}, Lcom/sec/android/app/sbrowser/customtabs/c;-><init>(ILjava/lang/Object;)V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabBottomBarDelegate;->mTabProvider:Lcom/sec/android/app/sbrowser/common/function/Supplier;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabBottomBarDelegate;->mShowShadow:Z

    return-void
.end method

.method public static synthetic a(Lcom/sec/android/app/sbrowser/customtabs/CustomTabBottomBarDelegate;Landroid/app/PendingIntent;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabBottomBarDelegate;->lambda$showBottomBarIfNecessary$0(Landroid/app/PendingIntent;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic b()Lcom/sec/android/app/sbrowser/tab/Tab;
    .locals 1

    invoke-static {}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabBottomBarDelegate;->lambda$onSwipeStarted$1()Lcom/sec/android/app/sbrowser/tab/Tab;

    move-result-object v0

    return-object v0
.end method

.method public static bridge synthetic c(Lcom/sec/android/app/sbrowser/customtabs/CustomTabBottomBarDelegate;)Landroid/app/Activity;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabBottomBarDelegate;->mActivity:Landroid/app/Activity;

    return-object p0
.end method

.method public static bridge synthetic d(Lcom/sec/android/app/sbrowser/customtabs/CustomTabBottomBarDelegate;)Lcom/sec/android/app/sbrowser/customtabs/CustomTabBottomBarView;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabBottomBarDelegate;->mBottomBarView:Lcom/sec/android/app/sbrowser/customtabs/CustomTabBottomBarView;

    return-object p0
.end method

.method public static bridge synthetic e(Lcom/sec/android/app/sbrowser/customtabs/CustomTabBottomBarDelegate;)Landroid/app/PendingIntent;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabBottomBarDelegate;->mClickPendingIntent:Landroid/app/PendingIntent;

    return-object p0
.end method

.method public static bridge synthetic f(Lcom/sec/android/app/sbrowser/customtabs/CustomTabBottomBarDelegate;)Lcom/sec/android/app/sbrowser/common/function/Supplier;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabBottomBarDelegate;->mTabProvider:Lcom/sec/android/app/sbrowser/common/function/Supplier;

    return-object p0
.end method

.method public static bridge synthetic g(Lcom/sec/android/app/sbrowser/customtabs/CustomTabBottomBarDelegate;)V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabBottomBarDelegate;->mBottomBarView:Lcom/sec/android/app/sbrowser/customtabs/CustomTabBottomBarView;

    return-void
.end method

.method private getBottomBarColor()I
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabBottomBarDelegate;->mDataProvider:Lcom/sec/terrace/browser/browserservices/intents/TerraceBrowserServicesIntentDataProvider;

    invoke-virtual {p0}, Lcom/sec/terrace/browser/browserservices/intents/TerraceBrowserServicesIntentDataProvider;->getColorProvider()Lcom/sec/terrace/browser/browserservices/intents/TerraceColorProvider;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;->getInstance()Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;->isDarkModeEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Lcom/sec/terrace/browser/browserservices/intents/TerraceColorProvider;->getDefaultToolbarColor()I

    move-result p0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Lcom/sec/terrace/browser/browserservices/intents/TerraceColorProvider;->getBottomBarColor()I

    move-result p0

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private getBottomBarIconTintColor()I
    .locals 1

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;->getInstance()Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;->isDarkModeEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabBottomBarDelegate;->mActivity:Landroid/app/Activity;

    const v0, 0x7f0602d8

    invoke-virtual {p0, v0}, Landroid/content/Context;->getColor(I)I

    move-result p0

    return p0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabBottomBarDelegate;->mActivity:Landroid/app/Activity;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabBottomBarDelegate;->getBottomBarColor()I

    move-result p0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/model/theme/BrowserTheme;->shouldUseLightForegroundOnBackground(I)Z

    move-result p0

    if-nez p0, :cond_1

    const p0, 0x7f0602da

    goto :goto_0

    :cond_1
    const p0, 0x7f0602d9

    :goto_0
    invoke-virtual {v0, p0}, Landroid/content/Context;->getColor(I)I

    move-result p0

    return p0
.end method

.method public static bridge synthetic h(Lcom/sec/android/app/sbrowser/customtabs/CustomTabBottomBarDelegate;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabBottomBarDelegate;->setBottomControlsHeight(I)V

    return-void
.end method

.method private hideBottomBar()V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabBottomBarDelegate;->mBottomBarView:Lcom/sec/android/app/sbrowser/customtabs/CustomTabBottomBarView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabBottomBarDelegate;->stopListeningForSwipeUpGestures()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabBottomBarDelegate;->mBottomBarView:Lcom/sec/android/app/sbrowser/customtabs/CustomTabBottomBarView;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabBottomBarDelegate;->mBottomBarView:Lcom/sec/android/app/sbrowser/customtabs/CustomTabBottomBarView;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    sget-object v1, Lorg/chromium/ui/interpolators/Interpolators;->FAST_OUT_SLOW_IN_INTERPOLATOR:Lh2/b;

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0x190

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/sec/android/app/sbrowser/customtabs/CustomTabBottomBarDelegate$2;

    invoke-direct {v1, p0}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabBottomBarDelegate$2;-><init>(Lcom/sec/android/app/sbrowser/customtabs/CustomTabBottomBarDelegate;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabBottomBarDelegate;->setBottomControlsHeight(I)V

    return-void
.end method

.method public static bridge synthetic i(Landroid/app/PendingIntent;Landroid/content/Intent;Landroid/app/Activity;Lcom/sec/android/app/sbrowser/common/function/Supplier;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabBottomBarDelegate;->sendPendingIntentWithUrl(Landroid/app/PendingIntent;Landroid/content/Intent;Landroid/app/Activity;Lcom/sec/android/app/sbrowser/common/function/Supplier;)V

    return-void
.end method

.method private static synthetic lambda$onSwipeStarted$1()Lcom/sec/android/app/sbrowser/tab/Tab;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method private synthetic lambda$showBottomBarIfNecessary$0(Landroid/app/PendingIntent;Landroid/view/View;)V
    .locals 1

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabBottomBarDelegate;->mActivity:Landroid/app/Activity;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabBottomBarDelegate;->mTabProvider:Lcom/sec/android/app/sbrowser/common/function/Supplier;

    const/4 v0, 0x0

    invoke-static {p1, v0, p2, p0}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabBottomBarDelegate;->sendPendingIntentWithUrl(Landroid/app/PendingIntent;Landroid/content/Intent;Landroid/app/Activity;Lcom/sec/android/app/sbrowser/common/function/Supplier;)V

    return-void
.end method

.method private static sendPendingIntentWithUrl(Landroid/app/PendingIntent;Landroid/content/Intent;Landroid/app/Activity;Lcom/sec/android/app/sbrowser/common/function/Supplier;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/PendingIntent;",
            "Landroid/content/Intent;",
            "Landroid/app/Activity;",
            "Lcom/sec/android/app/sbrowser/common/function/Supplier<",
            "Lcom/sec/android/app/sbrowser/tab/Tab;",
            ">;)V"
        }
    .end annotation

    const-string v0, "sendPendingIntentWithUrl()"

    const-string v1, "CustomTabBottomBarDelegate"

    invoke-static {v1, v0}, Lcom/sec/android/app/sbrowser/common/device/EngLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_0

    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    move-object v5, p1

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    move-object v5, v0

    :goto_0
    invoke-interface {p3}, Lcom/sec/android/app/sbrowser/common/function/Supplier;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sec/android/app/sbrowser/tab/Tab;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/tab/Tab;->getUrl()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {v5, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    :cond_1
    :try_start_0
    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object p1

    invoke-static {p1}, Lcom/sec/terrace/base/TerraceApiCompatibilityUtils;->setActivityOptionsBackgroundActivityStartAllowAlways(Landroid/app/ActivityOptions;)V

    invoke-virtual {p1}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v9

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v2, p0

    move-object v3, p2

    invoke-virtual/range {v2 .. v9}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;Landroid/app/PendingIntent$OnFinished;Landroid/os/Handler;Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    const-string p0, "CanceledException when sending pending intent."

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method

.method private setBottomControlsHeight(I)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabBottomBarDelegate;->mBrowserControlsSizer:Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/BrowserControlsSizer;

    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/customtabs/features/hide_toolbar/BrowserControlsSizer;->setBottomControlsHeight(I)V

    return-void
.end method

.method private showRemoteViews(Landroid/widget/RemoteViews;)Z
    .locals 7
    .param p1    # Landroid/widget/RemoteViews;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const-string v0, "showRemoteViews()"

    const-string v1, "CustomTabBottomBarDelegate"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabBottomBarDelegate;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabBottomBarDelegate;->getBottomBarView()Landroid/view/ViewGroup;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Landroid/widget/RemoteViews;->apply(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1
    :try_end_0
    .catch Landroid/widget/RemoteViews$ActionException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/view/InflateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez p1, :cond_0

    return v0

    :cond_0
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabBottomBarDelegate;->mClickableIDs:[I

    if-eqz v2, :cond_3

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabBottomBarDelegate;->mClickPendingIntent:Landroid/app/PendingIntent;

    if-eqz v3, :cond_3

    array-length v3, v2

    :goto_0
    if-ge v0, v3, :cond_3

    aget v4, v2, v0

    if-gez v4, :cond_1

    goto :goto_1

    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "showRemoteViews(): add clickable id "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Lcom/sec/android/app/sbrowser/common/device/EngLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_2

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabBottomBarDelegate;->mBottomBarClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_2
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabBottomBarDelegate;->transformViewIds(Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabBottomBarDelegate;->getBottomBarView()Landroid/view/ViewGroup;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    new-instance v0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabBottomBarDelegate$3;

    invoke-direct {v0, p0, p1}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabBottomBarDelegate$3;-><init>(Lcom/sec/android/app/sbrowser/customtabs/CustomTabBottomBarDelegate;Landroid/view/View;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    return v1

    :catch_0
    move-exception p0

    const-string p1, "Failed to inflate the RemoteViews"

    invoke-static {v1, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v0
.end method

.method private startListeningForSwipeUpGestures(Landroid/app/PendingIntent;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabBottomBarDelegate;->mBottomBarView:Lcom/sec/android/app/sbrowser/customtabs/CustomTabBottomBarView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iput-object p1, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabBottomBarDelegate;->mSwipeUpPendingIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabBottomBarView;->setSwipeHandler(Lcom/sec/android/app/sbrowser/common/gesture/SwipeGestureListener$SwipeHandler;)V

    return-void
.end method

.method private stopListeningForSwipeUpGestures()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabBottomBarDelegate;->mBottomBarView:Lcom/sec/android/app/sbrowser/customtabs/CustomTabBottomBarView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabBottomBarView;->setSwipeHandler(Lcom/sec/android/app/sbrowser/common/gesture/SwipeGestureListener$SwipeHandler;)V

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabBottomBarDelegate;->mSwipeUpPendingIntent:Landroid/app/PendingIntent;

    return-void
.end method

.method private transformViewIds(Landroid/view/View;)V
    .locals 3

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const v1, 0x7f0b0e19

    invoke-virtual {p1, v1, v0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Landroid/view/View;->setId(I)V

    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    check-cast p1, Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabBottomBarDelegate;->transformViewIds(Landroid/view/View;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public getBottomBarHeight()I
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabBottomBarDelegate;->mDataProvider:Lcom/sec/terrace/browser/browserservices/intents/TerraceBrowserServicesIntentDataProvider;

    invoke-virtual {v0}, Lcom/sec/terrace/browser/browserservices/intents/TerraceBrowserServicesIntentDataProvider;->shouldShowBottomBar()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabBottomBarDelegate;->mBottomBarView:Lcom/sec/android/app/sbrowser/customtabs/CustomTabBottomBarView;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabBottomBarDelegate;->mBottomBarHeightOverride:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    return v0

    :cond_1
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabBottomBarDelegate;->mBottomBarView:Lcom/sec/android/app/sbrowser/customtabs/CustomTabBottomBarView;

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p0

    return p0

    :cond_2
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public getBottomBarView()Landroid/view/ViewGroup;
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabBottomBarDelegate;->mBottomBarView:Lcom/sec/android/app/sbrowser/customtabs/CustomTabBottomBarView;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabBottomBarDelegate;->mActivity:Landroid/app/Activity;

    const v1, 0x7f0b0392

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabBottomBarView;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabBottomBarDelegate;->mBottomBarView:Lcom/sec/android/app/sbrowser/customtabs/CustomTabBottomBarView;

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabBottomBarDelegate;->mBottomBarView:Lcom/sec/android/app/sbrowser/customtabs/CustomTabBottomBarView;

    return-object p0
.end method

.method public isSwipeEnabled(I)Z
    .locals 1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabBottomBarDelegate;->getBottomBarView()Landroid/view/ViewGroup;

    move-result-object p0

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

.method public onSwipeStarted(ILandroid/view/MotionEvent;)V
    .locals 1

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabBottomBarDelegate;->mSwipeUpPendingIntent:Landroid/app/PendingIntent;

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string p1, "CustomTabBottomBarDelegate"

    const-string p2, "onSwipeStarted()"

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabBottomBarDelegate;->mSwipeUpPendingIntent:Landroid/app/PendingIntent;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabBottomBarDelegate;->mActivity:Landroid/app/Activity;

    new-instance p2, Lcom/sec/android/app/sbrowser/customtabs/d;

    const/4 v0, 0x3

    invoke-direct {p2, v0}, Lcom/sec/android/app/sbrowser/customtabs/d;-><init>(I)V

    const/4 v0, 0x0

    invoke-static {p1, v0, p0, p2}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabBottomBarDelegate;->sendPendingIntentWithUrl(Landroid/app/PendingIntent;Landroid/content/Intent;Landroid/app/Activity;Lcom/sec/android/app/sbrowser/common/function/Supplier;)V

    return-void
.end method

.method public setBottomBarViewForTesting(Lcom/sec/android/app/sbrowser/customtabs/CustomTabBottomBarView;)V
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabBottomBarDelegate;->mBottomBarView:Lcom/sec/android/app/sbrowser/customtabs/CustomTabBottomBarView;

    return-void
.end method

.method public showBottomBarIfNecessary()V
    .locals 7

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabBottomBarDelegate;->mDataProvider:Lcom/sec/terrace/browser/browserservices/intents/TerraceBrowserServicesIntentDataProvider;

    invoke-virtual {v0}, Lcom/sec/terrace/browser/browserservices/intents/TerraceBrowserServicesIntentDataProvider;->shouldShowBottomBar()Z

    move-result v0

    const-string v1, "CustomTabBottomBarDelegate"

    if-nez v0, :cond_0

    const-string p0, "showBottomBarIfNecessary(): do not show bottombar"

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabBottomBarDelegate;->getBottomBarView()Landroid/view/ViewGroup;

    move-result-object v0

    const v2, 0x7f0b0391

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-boolean v2, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabBottomBarDelegate;->mShowShadow:Z

    if-eqz v2, :cond_1

    const/4 v2, 0x0

    goto :goto_0

    :cond_1
    const/16 v2, 0x8

    :goto_0
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabBottomBarDelegate;->mDataProvider:Lcom/sec/terrace/browser/browserservices/intents/TerraceBrowserServicesIntentDataProvider;

    invoke-virtual {v0}, Lcom/sec/terrace/browser/browserservices/intents/TerraceBrowserServicesIntentDataProvider;->getSecondaryToolbarSwipeUpPendingIntent()Landroid/app/PendingIntent;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabBottomBarDelegate;->mDataProvider:Lcom/sec/terrace/browser/browserservices/intents/TerraceBrowserServicesIntentDataProvider;

    invoke-virtual {v0}, Lcom/sec/terrace/browser/browserservices/intents/TerraceBrowserServicesIntentDataProvider;->getSecondaryToolbarSwipeUpPendingIntent()Landroid/app/PendingIntent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabBottomBarDelegate;->startListeningForSwipeUpGestures(Landroid/app/PendingIntent;)V

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabBottomBarDelegate;->mDataProvider:Lcom/sec/terrace/browser/browserservices/intents/TerraceBrowserServicesIntentDataProvider;

    invoke-virtual {v0}, Lcom/sec/terrace/browser/browserservices/intents/TerraceBrowserServicesIntentDataProvider;->getBottomBarRemoteViews()Landroid/widget/RemoteViews;

    move-result-object v0

    if-eqz v0, :cond_3

    const-string v2, "showBottomBarIfNecessary(): remote views shown"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabBottomBarDelegate;->mDataProvider:Lcom/sec/terrace/browser/browserservices/intents/TerraceBrowserServicesIntentDataProvider;

    invoke-virtual {v1}, Lcom/sec/terrace/browser/browserservices/intents/TerraceBrowserServicesIntentDataProvider;->getClickableViewIDs()[I

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabBottomBarDelegate;->mClickableIDs:[I

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabBottomBarDelegate;->mDataProvider:Lcom/sec/terrace/browser/browserservices/intents/TerraceBrowserServicesIntentDataProvider;

    invoke-virtual {v1}, Lcom/sec/terrace/browser/browserservices/intents/TerraceBrowserServicesIntentDataProvider;->getRemoteViewsPendingIntent()Landroid/app/PendingIntent;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabBottomBarDelegate;->mClickPendingIntent:Landroid/app/PendingIntent;

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabBottomBarDelegate;->showRemoteViews(Landroid/widget/RemoteViews;)Z

    return-void

    :cond_3
    const-string v0, "showBottomBarIfNecessary(): show bottombar"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabBottomBarDelegate;->mDataProvider:Lcom/sec/terrace/browser/browserservices/intents/TerraceBrowserServicesIntentDataProvider;

    invoke-virtual {v0}, Lcom/sec/terrace/browser/browserservices/intents/TerraceBrowserServicesIntentDataProvider;->getCustomButtonsOnBottombar()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_4

    return-void

    :cond_4
    new-instance v1, Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabBottomBarDelegate;->mActivity:Landroid/app/Activity;

    invoke-direct {v1, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0b0393

    invoke-virtual {v1, v2}, Landroid/view/View;->setId(I)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabBottomBarDelegate;->getBottomBarColor()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundColor(I)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabBottomBarDelegate;->getBottomBarIconTintColor()I

    move-result v2

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/terrace/browser/browserservices/intents/TerraceCustomButtonParams;

    invoke-interface {v3}, Lcom/sec/terrace/browser/browserservices/intents/TerraceCustomButtonParams;->showOnToolbar()Z

    move-result v4

    if-eqz v4, :cond_5

    goto :goto_1

    :cond_5
    invoke-interface {v3}, Lcom/sec/terrace/browser/browserservices/intents/TerraceCustomButtonParams;->getPendingIntent()Landroid/app/PendingIntent;

    move-result-object v4

    if-eqz v4, :cond_6

    new-instance v5, Lcom/sec/android/app/sbrowser/customtabs/i;

    invoke-direct {v5, p0, v4}, Lcom/sec/android/app/sbrowser/customtabs/i;-><init>(Lcom/sec/android/app/sbrowser/customtabs/CustomTabBottomBarDelegate;Landroid/app/PendingIntent;)V

    goto :goto_2

    :cond_6
    const/4 v5, 0x0

    :goto_2
    invoke-interface {v3, v2}, Lcom/sec/terrace/browser/browserservices/intents/TerraceCustomButtonParams;->setTintColor(I)V

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabBottomBarDelegate;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabBottomBarDelegate;->getBottomBarView()Landroid/view/ViewGroup;

    move-result-object v6

    invoke-interface {v3, v4, v6, v5}, Lcom/sec/terrace/browser/browserservices/intents/TerraceCustomButtonParams;->buildBottomBarButton(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/view/View$OnClickListener;)Landroid/widget/LinearLayout;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_1

    :cond_7
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabBottomBarDelegate;->getBottomBarView()Landroid/view/ViewGroup;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void
.end method

.method public updateBottomBarButtons(Lcom/sec/terrace/browser/browserservices/intents/TerraceCustomButtonParams;)V
    .locals 2

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabBottomBarDelegate;->getBottomBarView()Landroid/view/ViewGroup;

    move-result-object v0

    invoke-interface {p1}, Lcom/sec/terrace/browser/browserservices/intents/TerraceCustomButtonParams;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    invoke-interface {p1}, Lcom/sec/terrace/browser/browserservices/intents/TerraceCustomButtonParams;->getDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabBottomBarDelegate;->mActivity:Landroid/app/Activity;

    invoke-interface {p1, p0}, Lcom/sec/terrace/browser/browserservices/intents/TerraceCustomButtonParams;->getIcon(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public updateRemoteViews(Landroid/widget/RemoteViews;[ILandroid/app/PendingIntent;)Z
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "updateRemoteViews(): "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p1, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    move v3, v1

    :goto_0
    const-string v4, "CustomTabBottomBarDelegate"

    invoke-static {v4, v0, v3}, Lcom/sec/android/app/sbrowser/autofill/password/k;->A(Ljava/lang/String;Ljava/lang/StringBuilder;Z)V

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabBottomBarDelegate;->mBottomBarView:Lcom/sec/android/app/sbrowser/customtabs/CustomTabBottomBarView;

    if-nez p1, :cond_1

    return v1

    :cond_1
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabBottomBarDelegate;->hideBottomBar()V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabBottomBarDelegate;->mClickableIDs:[I

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabBottomBarDelegate;->mClickPendingIntent:Landroid/app/PendingIntent;

    return v2

    :cond_2
    iput-object p2, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabBottomBarDelegate;->mClickableIDs:[I

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabBottomBarDelegate;->mClickPendingIntent:Landroid/app/PendingIntent;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabBottomBarDelegate;->getBottomBarView()Landroid/view/ViewGroup;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p2

    if-le p2, v2, :cond_3

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabBottomBarDelegate;->getBottomBarView()Landroid/view/ViewGroup;

    move-result-object p2

    invoke-virtual {p2, v2}, Landroid/view/ViewGroup;->removeViewAt(I)V

    :cond_3
    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabBottomBarDelegate;->showRemoteViews(Landroid/widget/RemoteViews;)Z

    move-result p0

    return p0
.end method
