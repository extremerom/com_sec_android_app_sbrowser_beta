.class public interface abstract Lcom/sec/android/app/sbrowser/toolbar/IToolbarListener;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final EMPTY:Lcom/sec/android/app/sbrowser/toolbar/IToolbarListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/sec/android/app/sbrowser/toolbar/IToolbarListener$1;

    invoke-direct {v0}, Lcom/sec/android/app/sbrowser/toolbar/IToolbarListener$1;-><init>()V

    sput-object v0, Lcom/sec/android/app/sbrowser/toolbar/IToolbarListener;->EMPTY:Lcom/sec/android/app/sbrowser/toolbar/IToolbarListener;

    return-void
.end method


# virtual methods
.method public getAddToAvailable()Ljava/util/ArrayList;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0
.end method

.method public isBrowsingAssistAvailable()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isFindAvailable()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isPageUsesMyanmarUnicode()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isPcVersionAvailable()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isPrintMenuAvailable()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isReadAloudAvailable()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isReadArticlesAloudAvailable()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isRefreshMenuAvailable()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isResultViewShowing()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isShareMenuAvailable()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isSummaryAvailable()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isTemporarilyAllowAdsAvailable()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isZoomMenuAvailable()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public onBookmarkBarInflated()V
    .locals 0

    return-void
.end method

.method public onEditModeFinished()V
    .locals 0

    return-void
.end method

.method public onEditModeStarted()V
    .locals 0

    return-void
.end method

.method public onFocusOutLeft()V
    .locals 0

    return-void
.end method

.method public onFocusOutRight()V
    .locals 0

    return-void
.end method

.method public onFocusOutTop()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public onTabBarInflated()V
    .locals 0

    return-void
.end method

.method public onToolbarButtonClicked(ILandroid/view/View;)V
    .locals 0

    return-void
.end method

.method public onToolbarButtonLongClicked(I)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public onToolbarHeightChanged()V
    .locals 0

    return-void
.end method

.method public onTransBarInflated(Landroid/view/ViewStub;Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public onVisibilityChanged(Z)V
    .locals 0

    return-void
.end method

.method public shouldSupportReadArticleAloudMenuClickable()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public shouldSupportSummaryMenuClickable()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public triggerForceCapture()V
    .locals 0

    return-void
.end method

.method public triggerPostCapture()V
    .locals 0

    return-void
.end method
