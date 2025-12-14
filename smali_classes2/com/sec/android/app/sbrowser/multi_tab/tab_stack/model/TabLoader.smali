.class public Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabLoader;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabLoader$TabLoaderDelegate;
    }
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mCurrentTabs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Le1/b;",
            ">;"
        }
    .end annotation
.end field

.field private mDelegate:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabLoader$TabLoaderDelegate;

.field private mLoader:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabResourceLoader;

.field private mNumOfLoadedImages:I

.field private mTabInfoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabLoader;->mCurrentTabs:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabLoader;->mTabInfoList:Ljava/util/List;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabLoader;->mContext:Landroid/content/Context;

    const/4 p1, 0x1

    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p1, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/graphics/Bitmap;->eraseColor(I)V

    new-instance p1, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabResourceLoader;

    new-instance v0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabLoader$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabLoader$1;-><init>(Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabLoader;)V

    invoke-direct {p1, v0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabResourceLoader;-><init>(Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabResourceLoader$ResourceLoaderDelegate;)V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabLoader;->mLoader:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabResourceLoader;

    return-void
.end method

.method public static bridge synthetic a(Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabLoader;)Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabLoader$TabLoaderDelegate;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabLoader;->mDelegate:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabLoader$TabLoaderDelegate;

    return-object p0
.end method

.method private getGroup(I)Ljava/lang/String;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabLoader;->getTabById(I)Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object p0

    if-nez p0, :cond_0

    const-string p0, ""

    return-object p0

    :cond_0
    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->getGroupName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getLocked(I)Z
    .locals 0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabLoader;->getTabById(I)Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->isLocked()Z

    move-result p0

    return p0
.end method

.method private getOriginalUrl(I)Ljava/lang/String;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabLoader;->getTabById(I)Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->getOriginalUrl()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getRemovedTabs()Ljava/util/List;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/Tab;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabLoader;->mDelegate:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabLoader$TabLoaderDelegate;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabLoader$TabLoaderDelegate;->getRemovedTabList()Ljava/util/List;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    if-nez v0, :cond_1

    return-object v1

    :cond_1
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    invoke-interface {v2}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->getTabId()I

    move-result v4

    new-instance v13, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/Tab;

    invoke-interface {v2}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->isLocked()Z

    move-result v6

    invoke-interface {v2}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->getTitle()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v2}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->getUrl()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v4}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabLoader;->getTabColor(I)I

    move-result v9

    invoke-interface {v2}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->getOriginalUrl()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v2}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->getGroupName()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v2}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->getGroupColorId()I

    move-result v12

    const/4 v5, 0x0

    move-object v3, v13

    invoke-direct/range {v3 .. v12}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/Tab;-><init>(IZZLjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v1, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object v1
.end method

.method private getTabColor(I)I
    .locals 3

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabLoader;->getTabById(I)Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object p1

    const/4 v0, -0x1

    if-nez p1, :cond_0

    return v0

    :cond_0
    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->isNativePage()Z

    move-result v2

    if-nez v2, :cond_4

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->isMultiCpUrl()Z

    move-result v2

    if-nez v2, :cond_4

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->isUnifiedHomepageUrl()Z

    move-result v2

    if-nez v2, :cond_4

    invoke-direct {p0, v1}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabLoader;->isChromeNativeUrl(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    invoke-direct {p0, v1}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabLoader;->isGoogleUrl(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_2

    return v0

    :cond_2
    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->getThemeColor()I

    move-result p0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/model/theme/BrowserTheme;->isValidThemeColor(I)Z

    move-result v0

    if-eqz v0, :cond_3

    return p0

    :cond_3
    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->getFaviconDominantColor()I

    move-result p0

    return p0

    :cond_4
    :goto_0
    return v0
.end method

.method private getTabIndexByTabId(I)I
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabLoader;->mTabInfoList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->getTabId()I

    move-result v2

    if-ne v2, p1, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabLoader;->mTabInfoList:Ljava/util/List;

    invoke-interface {p0, v1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p0

    goto :goto_0

    :cond_1
    const/4 p0, -0x1

    :goto_0
    return p0
.end method

.method private getTabThumbnail(IZ)Landroid/graphics/Bitmap;
    .locals 3

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabLoader;->getTabById(I)Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v1, "getTabThumbnail : "

    const-string v2, "TabLoader"

    invoke-static {p1, v1, v2}, Lt/b;->x(ILjava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabLoader;->mDelegate:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabLoader$TabLoaderDelegate;

    invoke-interface {p0, v0, p2}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabLoader$TabLoaderDelegate;->getThumbnailBitmapFromMemcache(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;Z)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method private getThemeColor(I)I
    .locals 0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabLoader;->getTabById(I)Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->isReaderPage()Z

    move-result p1

    if-nez p1, :cond_2

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->isNativePage()Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->getThemeColor()I

    move-result p0

    return p0

    :cond_2
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method private getUrl(I)Ljava/lang/String;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabLoader;->getTabById(I)Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->getUrl()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private isChromeNativeUrl(Ljava/lang/String;)Z
    .locals 0

    if-eqz p1, :cond_0

    const-string p0, "chrome-native://"

    invoke-virtual {p1, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isGoogleUrl(Ljava/lang/String;)Z
    .locals 0

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/utils/UrlUtils;->getDomainName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    const-string p1, "google."

    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private needToLoadThumbnailInIntro(I)Z
    .locals 5

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabLoader;->getTabCount()I

    move-result v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_0

    return v1

    :cond_0
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabLoader;->mDelegate:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabLoader$TabLoaderDelegate;

    invoke-interface {v2}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabLoader$TabLoaderDelegate;->getCurrentTabIndex()I

    move-result v2

    const-string v3, "currentIndex = "

    const-string v4, "TabLoader"

    invoke-static {v2, v3, v4}, Lt/b;->x(ILjava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabLoader;->getTabIndexByTabId(I)I

    move-result p1

    const-string v3, "tabIndex = "

    invoke-static {p1, v3, v4}, Lt/b;->x(ILjava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabLoader;->mDelegate:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabLoader$TabLoaderDelegate;

    invoke-interface {p0, v2, v0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabLoader$TabLoaderDelegate;->findStartEndIndexes(II)Le1/b;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "startIndex = "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Le1/b;->a:Ljava/lang/Object;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " endIndex = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Le1/b;->b:Ljava/lang/Object;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Le1/b;->a:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    if-lt p1, p0, :cond_1

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result p0

    if-gt p1, p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    const-string p0, "return = "

    invoke-static {p0, v4, v1}, Lw2/j;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    return v1
.end method

.method private refreshTabInfoList()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabLoader;->mTabInfoList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabLoader;->getTabInfoList()Ljava/util/List;

    return-void
.end method


# virtual methods
.method public changeCurrentTab(I)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabLoader;->getTabById(I)Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object p1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabLoader;->mDelegate:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabLoader$TabLoaderDelegate;

    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabLoader$TabLoaderDelegate;->setCurrentTab(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)V

    return-void
.end method

.method public closeAllTabs()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabLoader;->mDelegate:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabLoader$TabLoaderDelegate;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabLoader$TabLoaderDelegate;->closeAllTabs()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabLoader;->refreshTabInfoList()V

    return-void
.end method

.method public closeMultipleTabs(Ljava/util/List;Z)V
    .locals 2
    .param p1    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;Z)V"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "closeMultipleTabs() idList = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TabLoader"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabLoader;->mDelegate:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabLoader$TabLoaderDelegate;

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabLoader;->mDelegate:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabLoader$TabLoaderDelegate;

    invoke-interface {v0, p1, p2}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabLoader$TabLoaderDelegate;->closeMultipleTabs(Ljava/util/List;Z)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabLoader;->refreshTabInfoList()V

    :cond_1
    :goto_0
    return-void
.end method

.method public closeTab(I)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "closeTab() tabId = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TabLoader"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabLoader;->getTabById(I)Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object p1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabLoader;->mDelegate:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabLoader$TabLoaderDelegate;

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v0, p1}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabLoader$TabLoaderDelegate;->closeTab(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabLoader;->refreshTabInfoList()V

    :cond_1
    :goto_0
    return-void
.end method

.method public getCurrentTabId()I
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabLoader;->mDelegate:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabLoader$TabLoaderDelegate;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabLoader$TabLoaderDelegate;->getCurrentTabId()I

    move-result p0

    return p0
.end method

.method public declared-synchronized getDiskBitmap(IZ)Landroid/graphics/Bitmap;
    .locals 4

    const-string v0, "getDiskBitmap : "

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabLoader;->getTabById(I)Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabLoader;->mDelegate:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabLoader$TabLoaderDelegate;

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    const-string v2, "TabLoader"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabLoader;->mDelegate:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabLoader$TabLoaderDelegate;

    invoke-interface {p1, v1, p2}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabLoader$TabLoaderDelegate;->getThumbnailBitmapFromCache(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;Z)Landroid/graphics/Bitmap;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_1
    :goto_0
    monitor-exit p0

    const/4 p0, 0x0

    return-object p0

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public getFavicon(I)Landroid/graphics/Bitmap;
    .locals 2

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabLoader;->getTabById(I)Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "getFavicon : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "TabLoader"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->getFavicon()Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public getFullScreenThumbnail(I)Landroid/graphics/Bitmap;
    .locals 3

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabLoader;->getTabById(I)Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v1, "getFullScreenThumbnail : "

    const-string v2, "TabLoader"

    invoke-static {p1, v1, v2}, Lt/b;->x(ILjava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabLoader;->mDelegate:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabLoader$TabLoaderDelegate;

    invoke-interface {p0, v0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabLoader$TabLoaderDelegate;->getFullscreenBitmapFromMemcache(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public getGroupColorId(I)I
    .locals 0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabLoader;->getTabById(I)Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->getGroupColorId()I

    move-result p0

    return p0
.end method

.method public getGroupColorId(Ljava/lang/String;)I
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabLoader;->mDelegate:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabLoader$TabLoaderDelegate;

    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabLoader$TabLoaderDelegate;->getGroupColorId(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public getLastTab()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabLoader;->mDelegate:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabLoader$TabLoaderDelegate;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/sec/terrace/base/AssertUtil;->assertTrue(Z)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabLoader;->getTabInfoList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabLoader;->getLastTab(Ljava/util/List;)Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object p0

    :goto_1
    return-object p0
.end method

.method public getLastTab(Ljava/util/List;)Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;",
            ">;)",
            "Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    const/4 v0, 0x0

    :goto_0
    if-ltz p0, :cond_1

    invoke-interface {p1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 p0, p0, -0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-object v0
.end method

.method public getLastTabIndexOfGroup(Ljava/lang/String;)I
    .locals 4

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabLoader;->getTabInfoList()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    invoke-interface {v2}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->getGroupName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v1, v2

    goto :goto_0

    :cond_1
    invoke-interface {p0, v1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public getLockedTabCount()I
    .locals 2

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabLoader;->mTabInfoList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v0, 0x0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->isLocked()Z

    move-result v1

    if-eqz v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public getLockedTabCountInGroup(Ljava/lang/String;)I
    .locals 3

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabLoader;->mTabInfoList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v0, 0x0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->getGroupName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->isLocked()Z

    move-result v1

    if-eqz v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public getRecentTabs()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Le1/b;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabLoader;->mCurrentTabs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabLoader;->getTabInfoList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    const-string v3, "tabInfoList("

    const-string v4, ") id = "

    invoke-static {v2, v3, v4}, Lt/b;->l(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    invoke-interface {v4}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->getTabId()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "TabLoader"

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    invoke-interface {v3}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->getTabId()I

    move-result v3

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    invoke-interface {v4}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->isIncognito()Z

    move-result v4

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabLoader;->mCurrentTabs:Ljava/util/List;

    new-instance v6, Le1/b;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-direct {v6, v3, v4}, Le1/b;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabLoader;->mCurrentTabs:Ljava/util/List;

    return-object p0
.end method

.method public getTabById(I)Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;
    .locals 3

    const/4 v0, -0x1

    const/4 v1, 0x0

    if-ne p1, v0, :cond_0

    return-object v1

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabLoader;->getTabInfoList()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->getTabId()I

    move-result v2

    if-ne v2, p1, :cond_1

    return-object v0

    :cond_2
    const-string p0, "The requested tab id is not in mTabInfoList : "

    const-string v0, "TabLoader"

    invoke-static {p1, p0, v0}, LV0/c;->s(ILjava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method

.method public getTabCount()I
    .locals 0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabLoader;->getTabInfoList()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public getTabIndex(I)I
    .locals 3

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabLoader;->getTabInfoList()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->getTabId()I

    move-result v2

    if-ne v2, p1, :cond_0

    invoke-interface {p0, v1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p0

    return p0

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method public getTabInfoList()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabLoader;->mDelegate:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabLoader$TabLoaderDelegate;

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabLoader;->mTabInfoList:Ljava/util/List;

    return-object p0

    :cond_0
    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabLoader$TabLoaderDelegate;->getTabList()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabLoader;->mTabInfoList:Ljava/util/List;

    return-object p0

    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabLoader;->mTabInfoList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabLoader;->mTabInfoList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ne v1, v2, :cond_2

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabLoader;->mTabInfoList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    :cond_2
    const-string v1, "TabLoader"

    const-string v2, "mTabInfoList gets synced with TabManager"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabLoader;->mTabInfoList:Ljava/util/List;

    :cond_3
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabLoader;->mTabInfoList:Ljava/util/List;

    return-object p0
.end method

.method public getTabStack(Ljava/util/List;Ljava/util/List;)Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabStack;
    .locals 25
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/List<",
            "Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/Tab;",
            ">;)",
            "Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabStack;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabLoader;->getRecentTabs()Ljava/util/List;

    move-result-object v3

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    new-instance v5, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabStack;

    invoke-direct {v5}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabStack;-><init>()V

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    const-string v7, "getTabStack : tabCount = "

    const-string v8, "TabLoader"

    invoke-static {v6, v7, v8}, LV0/c;->s(ILjava/lang/String;Ljava/lang/String;)V

    const/4 v7, 0x0

    move v8, v7

    :goto_0
    if-ge v8, v6, :cond_8

    invoke-interface {v3, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Le1/b;

    iget-object v9, v9, Le1/b;->a:Ljava/lang/Object;

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v15

    add-int/lit8 v10, v6, -0x6

    const/4 v14, 0x1

    if-lt v8, v10, :cond_0

    move/from16 v20, v14

    goto :goto_1

    :cond_0
    move/from16 v20, v7

    :goto_1
    invoke-virtual {v0, v15}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabLoader;->getTitle(I)Ljava/lang/String;

    move-result-object v16

    invoke-direct {v0, v15}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabLoader;->getUrl(I)Ljava/lang/String;

    move-result-object v17

    invoke-direct {v0, v15}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabLoader;->getTabColor(I)I

    move-result v18

    invoke-direct {v0, v15}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabLoader;->getGroup(I)Ljava/lang/String;

    move-result-object v19

    invoke-virtual {v0, v15}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabLoader;->getGroupColorId(I)I

    move-result v21

    new-instance v13, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/Tab;

    invoke-interface {v3, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Le1/b;

    iget-object v10, v10, Le1/b;->b:Ljava/lang/Object;

    check-cast v10, Ljava/lang/Boolean;

    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v12

    invoke-direct {v0, v15}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabLoader;->getLocked(I)Z

    move-result v22

    invoke-direct {v0, v15}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabLoader;->getOriginalUrl(I)Ljava/lang/String;

    move-result-object v23

    move-object v10, v13

    move v11, v15

    move-object/from16 v24, v13

    move/from16 v13, v22

    move-object/from16 v14, v16

    move-object/from16 v22, v3

    move v3, v15

    move-object/from16 v15, v17

    move/from16 v16, v18

    move-object/from16 v17, v23

    move-object/from16 v18, v19

    move/from16 v19, v21

    invoke-direct/range {v10 .. v19}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/Tab;-><init>(IZZLjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    if-eqz v20, :cond_4

    iget-object v10, v0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabLoader;->mDelegate:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabLoader$TabLoaderDelegate;

    invoke-interface {v10}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabLoader$TabLoaderDelegate;->isFirstIntroAnimation()Z

    move-result v10

    if-nez v10, :cond_1

    invoke-direct {v0, v3, v7}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabLoader;->getTabThumbnail(IZ)Landroid/graphics/Bitmap;

    move-result-object v10

    move-object/from16 v11, v24

    iput-object v10, v11, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/Tab;->thumbnail:Landroid/graphics/Bitmap;

    const/4 v10, 0x1

    invoke-direct {v0, v3, v10}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabLoader;->getTabThumbnail(IZ)Landroid/graphics/Bitmap;

    move-result-object v3

    iput-object v3, v11, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/Tab;->liteThumbnail:Landroid/graphics/Bitmap;

    goto :goto_2

    :cond_1
    move-object/from16 v11, v24

    const/4 v10, 0x1

    :goto_2
    iget-object v3, v11, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/Tab;->thumbnail:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, v11, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/Tab;->thumbnail:Landroid/graphics/Bitmap;

    invoke-virtual {v3, v7}, Landroid/graphics/Bitmap;->setHasAlpha(Z)V

    goto :goto_3

    :cond_2
    if-eqz v2, :cond_3

    invoke-interface {v2, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    :goto_3
    iget-object v3, v11, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/Tab;->liteThumbnail:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_5

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v3

    if-nez v3, :cond_5

    iget-object v3, v11, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/Tab;->liteThumbnail:Landroid/graphics/Bitmap;

    invoke-virtual {v3, v7}, Landroid/graphics/Bitmap;->setHasAlpha(Z)V

    goto :goto_4

    :cond_4
    move-object/from16 v11, v24

    const/4 v10, 0x1

    :cond_5
    :goto_4
    if-eqz v1, :cond_6

    invoke-interface {v1, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_6
    iget v3, v11, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/Tab;->mId:I

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabLoader;->getCurrentTabId()I

    move-result v9

    if-ne v3, v9, :cond_7

    iput-boolean v10, v11, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/Tab;->isFrontMostTab:Z

    :cond_7
    iget v3, v11, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/Tab;->mId:I

    invoke-direct {v0, v3}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabLoader;->getThemeColor(I)I

    move-result v3

    iput v3, v11, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/Tab;->mThemeColor:I

    invoke-virtual {v4, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v8, v8, 0x1

    move-object/from16 v3, v22

    goto/16 :goto_0

    :cond_8
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabLoader;->getRemovedTabs()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_9

    invoke-virtual {v5, v0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabStack;->setRemovedTabs(Ljava/util/List;)V

    :cond_9
    invoke-virtual {v5, v4}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabStack;->setAll(Ljava/util/List;)V

    return-object v5
.end method

.method public getTabThumbnailFromCache(IZ)Landroid/graphics/Bitmap;
    .locals 3

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabLoader;->getTabById(I)Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v1, "getTabThumbnailFromCache : "

    const-string v2, "TabLoader"

    invoke-static {p1, v1, v2}, Lt/b;->x(ILjava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabLoader;->mDelegate:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabLoader$TabLoaderDelegate;

    invoke-interface {p0, v0, p2}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabLoader$TabLoaderDelegate;->getThumbnailBitmapFromCache(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;Z)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public getTitle(I)Ljava/lang/String;
    .locals 3

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabLoader;->getTabById(I)Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->isReaderPage()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->getReaderTab()Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->getTitle()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabLoader;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f140031

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    invoke-static {v1}, Lcom/sec/android/app/sbrowser/common/utils/UrlUtils;->removeHttpHttpsScheme(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_3
    :goto_0
    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->isNativePage()Z

    move-result v2

    if-nez v2, :cond_4

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->isMultiCpUrl()Z

    move-result v2

    if-nez v2, :cond_4

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->isUnifiedHomepageUrl()Z

    move-result p1

    if-nez p1, :cond_4

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/common/utils/UrlUtils;->isNativePageUrl(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_6

    :cond_4
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabLoader;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/common/parental_control/ParentalControlUtil;->isParentalControlUrlWithEnabled(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_5

    const p1, 0x7f14089e

    goto :goto_1

    :cond_5
    const p1, 0x7f140b92

    :goto_1
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    :cond_6
    return-object v0
.end method

.method public hasLockedTab()Z
    .locals 0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabLoader;->getLockedTabCount()I

    move-result p0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public hasLockedTab(Ljava/lang/String;)Z
    .locals 0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabLoader;->getLockedTabCountInGroup(Ljava/lang/String;)I

    move-result p0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public hasTabGroup()Z
    .locals 2

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabLoader;->mTabInfoList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->getGroupName()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public isMultiTabAnimating()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabLoader;->mDelegate:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabLoader$TabLoaderDelegate;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabLoader$TabLoaderDelegate;->isMultiTabAnimating()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public loadTabData(Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/Tab;Z)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[loadTabData] tab id: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p1, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/Tab;->mId:I

    const-string v2, "TabLoader"

    invoke-static {v0, v1, v2}, Lw2/j;->j(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabLoader;->mDelegate:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabLoader$TabLoaderDelegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabLoader$TabLoaderDelegate;->isFirstIntroAnimation()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p1, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/Tab;->mId:I

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabLoader;->needToLoadThumbnailInIntro(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabLoader;->mNumOfLoadedImages:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabLoader;->mNumOfLoadedImages:I

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabLoader;->mDelegate:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabLoader$TabLoaderDelegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabLoader$TabLoaderDelegate;->isCardView()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x4

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabLoader;->mDelegate:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabLoader$TabLoaderDelegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabLoader$TabLoaderDelegate;->isListView()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x7

    goto :goto_0

    :cond_2
    const/16 v0, 0xc

    :goto_0
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabLoader;->mDelegate:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabLoader$TabLoaderDelegate;

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabLoader$TabLoaderDelegate;->isFirstIntroAnimation()Z

    move-result v1

    if-eqz v1, :cond_3

    iget v1, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabLoader;->mNumOfLoadedImages:I

    if-le v1, v0, :cond_3

    const/4 v0, 0x0

    goto :goto_1

    :cond_3
    iget v0, p1, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/Tab;->mId:I

    invoke-direct {p0, v0, p2}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabLoader;->getTabThumbnail(IZ)Landroid/graphics/Bitmap;

    move-result-object v0

    :goto_1
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabLoader;->mDelegate:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabLoader$TabLoaderDelegate;

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabLoader$TabLoaderDelegate;->isScrolling()Z

    move-result v1

    if-nez v0, :cond_4

    if-nez v1, :cond_4

    const-string v0, "[loadTabData] no cache in memory, get from disk cache"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p1, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/Tab;->mId:I

    invoke-virtual {p0, v0, p2}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabLoader;->getTabThumbnailFromCache(IZ)Landroid/graphics/Bitmap;

    move-result-object v0

    :cond_4
    if-nez v0, :cond_5

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabLoader;->mLoader:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabResourceLoader;

    if-eqz v1, :cond_5

    const-string v1, "[loadTabData] no cache in memory, add to queue"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabLoader;->mLoader:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabResourceLoader;

    invoke-virtual {v1, p2}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabResourceLoader;->setIsLiteThumbnail(Z)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabLoader;->mLoader:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabResourceLoader;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabResourceLoader;->addTab(Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/Tab;)V

    :cond_5
    invoke-virtual {p1, v0, p2}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/Tab;->notifyTabDataLoaded(Landroid/graphics/Bitmap;Z)V

    return-void
.end method

.method public lockTab(I)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "lockTab() tabId = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TabLoader"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabLoader;->getTabById(I)Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object p0

    if-nez p0, :cond_0

    return-void

    :cond_0
    const/4 p1, 0x1

    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->setIsLocked(Z)V

    return-void
.end method

.method public notifySearchFilterChanged(Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/Tab;Ljava/lang/String;)V
    .locals 1

    iget v0, p1, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/Tab;->mId:I

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabLoader;->getTabById(I)Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object p0

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1, p2}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/Tab;->notifySearchFilterChanged(Ljava/lang/String;)V

    return-void
.end method

.method public notifyTabBgColor(Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/Tab;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget v0, p1, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/Tab;->mId:I

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabLoader;->getTabColor(I)I

    move-result p0

    invoke-virtual {p1, p0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/Tab;->notifyTabBgColor(I)V

    return-void
.end method

.method public notifyUpdatedBitmap(Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/Tab;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V
    .locals 1

    const-string p0, "TabLoader"

    const-string v0, "notifyUpdatedBitmap"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1, p2, p3}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/Tab;->notifyTabBitmapLoaded(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public notifyUpdatedThemeColor(Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/Tab;I)V
    .locals 1

    const-string p0, "TabLoader"

    const-string v0, "notifyUpdatedThemeColor"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1, p2}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/Tab;->notifyTabColorLoaded(I)V

    return-void
.end method

.method public notifyUpdatedTitle(Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/Tab;Ljava/lang/String;)V
    .locals 2

    iget v0, p1, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/Tab;->mId:I

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabLoader;->getTabById(I)Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->isNativePage()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->isMultiCpUrl()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->isUnifiedHomepageUrl()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p1, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/Tab;->url:Ljava/lang/String;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/utils/UrlUtils;->isNativePageUrl(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_1
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabLoader;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    iget-object p2, p1, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/Tab;->url:Ljava/lang/String;

    invoke-static {p2}, Lcom/sec/android/app/sbrowser/common/parental_control/ParentalControlUtil;->isParentalControlUrlWithEnabled(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_2

    const p2, 0x7f14089e

    goto :goto_0

    :cond_2
    const p2, 0x7f140b92

    :goto_0
    invoke-virtual {p0, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    :cond_3
    invoke-virtual {p1, p2}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/Tab;->notifyTabTitleLoaded(Ljava/lang/String;)V

    return-void
.end method

.method public reload()Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabStack;
    .locals 4

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabLoader;->getTabStack(Ljava/util/List;Ljava/util/List;)Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabStack;

    move-result-object v0

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabLoader;->mLoader:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabResourceLoader;

    if-eqz v2, :cond_0

    iget-object v3, v2, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabResourceLoader;->mQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabResourceLoader;->start()V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabLoader;->mLoader:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabResourceLoader;

    invoke-virtual {p0, v1}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabResourceLoader;->addTabs(Ljava/util/Collection;)V

    :cond_0
    return-object v0
.end method

.method public setDelegate(Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabLoader$TabLoaderDelegate;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabLoader;->mDelegate:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabLoader$TabLoaderDelegate;

    return-void
.end method

.method public setGroup(ILjava/lang/String;I)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabLoader;->mDelegate:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabLoader$TabLoaderDelegate;

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "setGroup() tabId = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", group: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TabLoader"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabLoader;->mDelegate:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabLoader$TabLoaderDelegate;

    invoke-interface {p0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabLoader$TabLoaderDelegate;->setGroup(ILjava/lang/String;I)V

    return-void
.end method

.method public stopLoader()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabLoader;->mLoader:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabResourceLoader;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabResourceLoader;->stop()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabLoader;->mLoader:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabResourceLoader;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabLoader;->mDelegate:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabLoader$TabLoaderDelegate;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabLoader;->mTabInfoList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public undoCloseTab()I
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabLoader;->mDelegate:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabLoader$TabLoaderDelegate;

    if-nez p0, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabLoader$TabLoaderDelegate;->undoCloseTab()I

    move-result p0

    return p0
.end method

.method public unloadTabData(Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/Tab;Z)V
    .locals 3

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabLoader;->mLoader:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabResourceLoader;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "unloadTabData : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p1, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/Tab;->mId:I

    const-string v2, "TabLoader"

    invoke-static {v0, v1, v2}, Lw2/j;->j(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabLoader;->mLoader:Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabResourceLoader;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabResourceLoader;->removeTab(Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/Tab;)V

    if-eqz p2, :cond_1

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/Tab;->notifyTabDataUnloaded()V

    :cond_1
    :goto_0
    return-void
.end method

.method public unlockTab(I)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "unlockTab() tabId = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TabLoader"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabLoader;->getTabById(I)Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object p0

    if-nez p0, :cond_0

    return-void

    :cond_0
    const/4 p1, 0x0

    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->setIsLocked(Z)V

    return-void
.end method

.method public updateTabThumbnail(Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/Tab;Z)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[updateTabThumbnail] isLite : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TabLoader"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabLoader;->isMultiTabAnimating()Z

    move-result v0

    if-nez v0, :cond_2

    if-nez p1, :cond_0

    goto :goto_1

    :cond_0
    iget v0, p1, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/Tab;->mId:I

    invoke-direct {p0, v0, p2}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabLoader;->getTabThumbnail(IZ)Landroid/graphics/Bitmap;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "thumbnail is null : "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-nez p0, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    invoke-static {v1, v0, v2}, Lt/b;->z(Ljava/lang/String;Ljava/lang/StringBuilder;Z)V

    invoke-virtual {p1, p0, p2}, Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/Tab;->notifyTabDataLoaded(Landroid/graphics/Bitmap;Z)V

    :cond_2
    :goto_1
    return-void
.end method
