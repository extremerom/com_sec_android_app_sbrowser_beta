.class public abstract Lcom/sec/terrace/browser/browserservices/intents/TerraceBrowserServicesIntentDataProvider;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/terrace/browser/browserservices/intents/TerraceBrowserServicesIntentDataProvider$CustomTabsUiType;,
        Lcom/sec/terrace/browser/browserservices/intents/TerraceBrowserServicesIntentDataProvider$TwaDisclosureUi;,
        Lcom/sec/terrace/browser/browserservices/intents/TerraceBrowserServicesIntentDataProvider$CustomTabProfileType;,
        Lcom/sec/terrace/browser/browserservices/intents/TerraceBrowserServicesIntentDataProvider$ActivitySideSheetSlideInBehavior;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public canInteractWithBackground()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public contentScrollMayResizeTab()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getActivityBreakPoint()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getActivitySideSheetDecorationType()I
    .locals 0

    const/4 p0, 0x2

    return p0
.end method

.method public getActivitySideSheetRoundedCornersPosition()I
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public abstract getActivityType()I
.end method

.method public getAllCustomButtons()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/sec/terrace/browser/browserservices/intents/TerraceCustomButtonParams;",
            ">;"
        }
    .end annotation

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getAnimationEnterRes()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getAnimationExitRes()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getBottomBarRemoteViews()Landroid/widget/RemoteViews;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

.method public final getButtonParamsForId(I)Lcom/sec/terrace/browser/browserservices/intents/TerraceCustomButtonParams;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    invoke-virtual {p0}, Lcom/sec/terrace/browser/browserservices/intents/TerraceBrowserServicesIntentDataProvider;->getAllCustomButtons()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/terrace/browser/browserservices/intents/TerraceCustomButtonParams;

    invoke-interface {v0}, Lcom/sec/terrace/browser/browserservices/intents/TerraceCustomButtonParams;->getId()I

    move-result v1

    if-ne p1, v1, :cond_0

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public getClickableViewIDs()[I
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

.method public getClientPackageName()Ljava/lang/String;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

.method public getColorProvider()Lcom/sec/terrace/browser/browserservices/intents/TerraceColorProvider;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

.method public getCustomButtonsOnBottombar()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/sec/terrace/browser/browserservices/intents/TerraceCustomButtonParams;",
            ">;"
        }
    .end annotation

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getCustomButtonsOnToolbar()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/sec/terrace/browser/browserservices/intents/TerraceCustomButtonParams;",
            ">;"
        }
    .end annotation

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final getCustomToolbarButtonIndexForId(I)I
    .locals 2

    invoke-virtual {p0}, Lcom/sec/terrace/browser/browserservices/intents/TerraceBrowserServicesIntentDataProvider;->getCustomButtonsOnToolbar()Ljava/util/List;

    move-result-object p0

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/terrace/browser/browserservices/intents/TerraceCustomButtonParams;

    invoke-interface {v1}, Lcom/sec/terrace/browser/browserservices/intents/TerraceCustomButtonParams;->getId()I

    move-result v1

    if-ne v1, p1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method public getInitialActivityHeight()I
    .locals 0
    .annotation build Landroidx/annotation/Px;
    .end annotation

    const/4 p0, 0x0

    return p0
.end method

.method public getInitialActivityWidth()I
    .locals 0
    .annotation build Landroidx/annotation/Px;
    .end annotation

    const/4 p0, 0x0

    return p0
.end method

.method public getIntent()Landroid/content/Intent;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

.method public getKeepAliveServiceIntent()Landroid/content/Intent;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

.method public getNetworkHandle()J
    .locals 2

    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public getRemoteViewsPendingIntent()Landroid/app/PendingIntent;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

.method public getSecondaryToolbarSwipeUpPendingIntent()Landroid/app/PendingIntent;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

.method public getSession()LH/y;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

.method public getShareData()LK/a;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

.method public getShareTarget()Lcom/sec/terrace/browser/browserservices/intents/TerraceWebApkShareTarget;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

.method public getSideSheetPosition()I
    .locals 0

    const/4 p0, 0x2

    return p0
.end method

.method public getSideSheetSlideInBehavior()I
    .locals 0

    const/4 p0, 0x2

    return p0
.end method

.method public getTwaDisplayMode()LI/f;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

.method public getUiType()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getUrlToLoad()Ljava/lang/String;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

.method public getWebApkExtras()Lcom/sec/terrace/browser/browserservices/intents/TerraceWebApkExtras;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

.method public getWebappExtras()Lcom/sec/terrace/browser/browserservices/intents/TerraceWebappExtras;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

.method public isExtraLaunchWithReadArticlesAloud()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final isMediaViewer()Z
    .locals 1

    invoke-virtual {p0}, Lcom/sec/terrace/browser/browserservices/intents/TerraceBrowserServicesIntentDataProvider;->getUiType()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isNoUiMode()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isPartialCustomTab()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isPartialCustomTabFixedHeight()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final isTrustedWebActivity()Z
    .locals 1

    invoke-virtual {p0}, Lcom/sec/terrace/browser/browserservices/intents/TerraceBrowserServicesIntentDataProvider;->getActivityType()I

    move-result p0

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final isWebApkActivity()Z
    .locals 1

    invoke-virtual {p0}, Lcom/sec/terrace/browser/browserservices/intents/TerraceBrowserServicesIntentDataProvider;->getActivityType()I

    move-result p0

    const/4 v0, 0x4

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final isWebappOrWebApkActivity()Z
    .locals 2

    invoke-virtual {p0}, Lcom/sec/terrace/browser/browserservices/intents/TerraceBrowserServicesIntentDataProvider;->getActivityType()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/sec/terrace/browser/browserservices/intents/TerraceBrowserServicesIntentDataProvider;->getActivityType()I

    move-result p0

    const/4 v0, 0x4

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public shouldAnimateOnFinish()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final shouldShowBottomBar()Z
    .locals 1

    invoke-virtual {p0}, Lcom/sec/terrace/browser/browserservices/intents/TerraceBrowserServicesIntentDataProvider;->getCustomButtonsOnBottombar()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/sec/terrace/browser/browserservices/intents/TerraceBrowserServicesIntentDataProvider;->getBottomBarRemoteViews()Landroid/widget/RemoteViews;

    move-result-object p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public showSideSheetMaximizeButton()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
