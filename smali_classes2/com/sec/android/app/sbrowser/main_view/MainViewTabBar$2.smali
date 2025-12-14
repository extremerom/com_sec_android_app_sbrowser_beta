.class Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/common/tab_bar/TabBarDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar$2;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public canMoveTab(ZII)Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar$2;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar;->f(Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar;)Lcom/sec/android/app/sbrowser/tab_manager/TabManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->getTabList(Z)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/4 v0, 0x0

    if-ltz p3, :cond_1

    if-lt p3, p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar$2;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar;->f(Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar;)Lcom/sec/android/app/sbrowser/tab_manager/TabManager;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->getTabById(I)Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object p0

    if-eqz p0, :cond_1

    const/4 v0, 0x1

    :cond_1
    :goto_0
    return v0
.end method

.method public captureTabAsyncForPreview(ILcom/sec/android/app/sbrowser/common/model/general/GeneralCallback;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/sec/android/app/sbrowser/common/model/general/GeneralCallback<",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar$2;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar;->f(Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar;)Lcom/sec/android/app/sbrowser/tab_manager/TabManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->getTabById(I)Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object v3

    if-nez v3, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar$2;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar;->d(Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar;)Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->getBitmapHandler()Lcom/sec/android/app/sbrowser/main_view/main_interface/BitmapHandler;

    move-result-object v1

    const-wide/16 v5, 0x1f4

    const/4 v7, 0x1

    const/4 v2, 0x5

    move-object v4, p2

    invoke-interface/range {v1 .. v7}, Lcom/sec/android/app/sbrowser/main_view/main_interface/BitmapHandler;->captureTabAsync(ILcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;Lcom/sec/android/app/sbrowser/common/model/general/GeneralCallback;JI)V

    return-void
.end method

.method public finishSplitMode()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar$2;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar;->d(Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar;)Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->getTransBarContainer()Lcom/sec/android/app/sbrowser/trans_bar/TransBarContainer;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar$2;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar;->d(Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar;)Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->getTransBarContainer()Lcom/sec/android/app/sbrowser/trans_bar/TransBarContainer;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/trans_bar/TransBarContainer;->onOffSplitMode()V

    :cond_0
    return-void
.end method

.method public getAllTabIdList()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar$2;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar;->f(Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar;)Lcom/sec/android/app/sbrowser/tab_manager/TabManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->getAllTabList()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->getTabId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public getFavicon(I)Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar$2;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar;->f(Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar;)Lcom/sec/android/app/sbrowser/tab_manager/TabManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->getTabById(I)Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object p1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar$2;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar;->d(Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar;)Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->isValidTab(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->getFavicon()Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public getFullscreenBitmapFromCache(I)Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar$2;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar;->d(Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar;)Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    move-result-object v0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar$2;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar;->f(Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar;)Lcom/sec/android/app/sbrowser/tab_manager/TabManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->getTabById(I)Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object p0

    invoke-interface {v0, p0}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->getFullscreenBitmapFromCache(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public getGroupColorId(Ljava/lang/String;)I
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar$2;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar;->f(Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar;)Lcom/sec/android/app/sbrowser/tab_manager/TabManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->getGroupColorId(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public getGroupCount()I
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar$2;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar;->f(Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar;)Lcom/sec/android/app/sbrowser/tab_manager/TabManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->getGroupNameList()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public getGroupName(I)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar$2;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar;->f(Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar;)Lcom/sec/android/app/sbrowser/tab_manager/TabManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->getTabById(I)Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object p1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar$2;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar;->d(Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar;)Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->isValidTab(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)Z

    move-result p0

    if-nez p0, :cond_0

    const-string p0, ""

    return-object p0

    :cond_0
    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->getGroupName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getGroupNameList()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar$2;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar;->f(Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar;)Lcom/sec/android/app/sbrowser/tab_manager/TabManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->getGroupNameList()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getIndexByGroup(ZLjava/lang/String;)I
    .locals 2

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar$2;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar;->f(Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar;)Lcom/sec/android/app/sbrowser/tab_manager/TabManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->getTabList(Z)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_1

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->getGroupName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method public getIndexByTabId(ZI)I
    .locals 0

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar$2;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar;->f(Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar;)Lcom/sec/android/app/sbrowser/tab_manager/TabManager;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->getTabById(I)Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar$2;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar;->f(Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar;)Lcom/sec/android/app/sbrowser/tab_manager/TabManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->getTabIndexByTab(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)I

    move-result p0

    return p0
.end method

.method public getMovableGroupList(I)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar$2;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar;->f(Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar;)Lcom/sec/android/app/sbrowser/tab_manager/TabManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->getTabById(I)Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object p1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar$2;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar;->d(Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar;)Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->isValidTab(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar$2;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar;->f(Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar;)Lcom/sec/android/app/sbrowser/tab_manager/TabManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->getGroupNameList()Ljava/util/List;

    move-result-object p0

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->getGroupName()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public getOriginalUrl(I)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar$2;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar;->f(Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar;)Lcom/sec/android/app/sbrowser/tab_manager/TabManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->getTabById(I)Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object p1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar$2;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar;->d(Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar;)Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->isValidTab(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->getOriginalUrl()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getTabColor(I)I
    .locals 3

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;->getInstance()Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;->isHighContrastModeEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar$2;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar;->f(Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar;)Lcom/sec/android/app/sbrowser/tab_manager/TabManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->getTabById(I)Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object p1

    if-nez p1, :cond_1

    return v1

    :cond_1
    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->isNativePage()Z

    move-result v2

    if-nez v2, :cond_3

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->isMultiCpUrl()Z

    move-result v2

    if-nez v2, :cond_3

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->isUnifiedHomepageUrl()Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar$2;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar;

    invoke-static {v2, v0}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar;->j(Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar$2;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar;

    invoke-static {p0, v0}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar;->k(Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_0

    :cond_2
    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->getFaviconDominantColor()I

    move-result p0

    return p0

    :cond_3
    :goto_0
    return v1
.end method

.method public getTabHeight(I)I
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar$2;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar;->f(Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar;)Lcom/sec/android/app/sbrowser/tab_manager/TabManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->getTabById(I)Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object v0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar$2;->isValidTab(I)Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->getView()Landroid/view/ViewGroup;

    move-result-object p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->getVisibleContentHeight()I

    move-result p0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public getTabIdByIndex(ZI)I
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar$2;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar;->f(Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar;)Lcom/sec/android/app/sbrowser/tab_manager/TabManager;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->getTabByIndex(ZI)Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object p0

    const/4 p2, -0x1

    if-nez p0, :cond_0

    return p2

    :cond_0
    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->isIncognito()Z

    move-result v0

    if-eq v0, p1, :cond_1

    return p2

    :cond_1
    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->getTabId()I

    move-result p0

    return p0
.end method

.method public getTabIdList(Z)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar$2;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar;->f(Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar;)Lcom/sec/android/app/sbrowser/tab_manager/TabManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->getTabList(Z)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->getTabId()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public getTabWidth(I)I
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar$2;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar;->f(Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar;)Lcom/sec/android/app/sbrowser/tab_manager/TabManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->getTabById(I)Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object v0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar$2;->isValidTab(I)Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->getView()Landroid/view/ViewGroup;

    move-result-object p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->getView()Landroid/view/ViewGroup;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public getTitleOrUrl(I)Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar$2;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar;->f(Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar;)Lcom/sec/android/app/sbrowser/tab_manager/TabManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->getTabById(I)Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object p1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar$2;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar;->d(Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar;)Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->isValidTab(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/common/utils/UrlUtils;->isSavedPageUrl(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->getOriginalUrl()Ljava/lang/String;

    move-result-object v1

    :cond_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar$2;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar;->b(Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar;)Landroid/app/Activity;

    move-result-object v0

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

    if-nez v2, :cond_5

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->isMultiCpUrl()Z

    move-result v2

    if-nez v2, :cond_5

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->isUnifiedHomepageUrl()Z

    move-result v2

    if-nez v2, :cond_5

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/common/utils/UrlUtils;->isNativePageUrl(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    goto :goto_1

    :cond_4
    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->isReaderView()Z

    move-result p0

    if-eqz p0, :cond_7

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->getReaderTab()Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->getTitle()Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    :cond_5
    :goto_1
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar$2;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar;->b(Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar;)Landroid/app/Activity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/common/parental_control/ParentalControlUtil;->isParentalControlUrlWithEnabled(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_6

    const p1, 0x7f14089e

    goto :goto_2

    :cond_6
    const p1, 0x7f140b92

    :goto_2
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    :cond_7
    :goto_3
    return-object v0
.end method

.method public getUnlockedGroupTabCount(Ljava/lang/String;)I
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar$2;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar;->f(Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar;)Lcom/sec/android/app/sbrowser/tab_manager/TabManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->getUnlockedMemberCount(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public getUnlockedTabCount(Z)I
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar$2;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar;->f(Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar;)Lcom/sec/android/app/sbrowser/tab_manager/TabManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->getTabList(Z)Ljava/util/List;

    move-result-object p1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar$2;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar;->f(Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar;)Lcom/sec/android/app/sbrowser/tab_manager/TabManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->getUnlockedTabCount(Ljava/util/List;)I

    move-result p0

    return p0
.end method

.method public getUrl(I)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar$2;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar;->f(Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar;)Lcom/sec/android/app/sbrowser/tab_manager/TabManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->getTabById(I)Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object p1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar$2;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar;->d(Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar;)Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->isValidTab(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->getUrl()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public hasGroup(I)Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar$2;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar;->f(Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar;)Lcom/sec/android/app/sbrowser/tab_manager/TabManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->getTabById(I)Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object p1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar$2;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar;->d(Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar;)Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->isValidTab(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->getGroupName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public hasLockedTab()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar$2;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar;->f(Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar;)Lcom/sec/android/app/sbrowser/tab_manager/TabManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->existLockedTabs()Z

    move-result p0

    return p0
.end method

.method public hasLockedTabInGroup(Ljava/lang/String;)Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar$2;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar;->f(Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar;)Lcom/sec/android/app/sbrowser/tab_manager/TabManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->existLockedTabsInGroup(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public isCurrentTab(I)Z
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar$2;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar;->d(Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar;)Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->getCurrentTab()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object v0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar$2;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar;->d(Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar;)Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    move-result-object p0

    invoke-interface {p0, v0}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->isValidTab(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)Z

    move-result p0

    const/4 v1, 0x0

    if-nez p0, :cond_0

    return v1

    :cond_0
    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->getTabId()I

    move-result p0

    if-ne p1, p0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public isEditMode()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar$2;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar;->d(Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar;)Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->getCurrentTab()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->isEditMode()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public isInTabList(I)Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar$2;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar;->f(Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar;)Lcom/sec/android/app/sbrowser/tab_manager/TabManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->getTabById(I)Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isIncognitoGroup(Ljava/lang/String;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isIncognitoTab(I)Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar$2;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar;->f(Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar;)Lcom/sec/android/app/sbrowser/tab_manager/TabManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->getTabById(I)Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object p1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar$2;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar;->d(Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar;)Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->isValidTab(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->isIncognito()Z

    move-result p0

    return p0
.end method

.method public isLockedTab(I)Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar$2;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar;->f(Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar;)Lcom/sec/android/app/sbrowser/tab_manager/TabManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->getTabById(I)Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object p1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar$2;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar;->d(Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar;)Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->isValidTab(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->isLocked()Z

    move-result p0

    return p0
.end method

.method public isMultiTabShowing()Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar$2;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar;->d(Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar;)Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->isMultiTabShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar$2;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar;->d(Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar;)Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->isMultiTabClosing()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isNeedToUpdateLayout()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar$2;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar;->b(Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar;)Landroid/app/Activity;

    move-result-object p0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/main_view/CommonUtil;->isCurrentActivityVisible(Landroid/app/Activity;)Z

    move-result p0

    return p0
.end method

.method public isOpenInOtherWindowAvailable()Z
    .locals 1

    invoke-static {}, Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager;->getInstance()Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager;

    move-result-object v0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar$2;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar;->b(Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar;)Landroid/app/Activity;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager;->isOpenInOtherWindowAvailable(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method public isSecretModeEnabled()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar$2;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar;->d(Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar;)Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->isSecretModeEnabled()Z

    move-result p0

    return p0
.end method

.method public isSplitMode()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar$2;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar;->d(Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar;)Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->getCurrentVisibleTab()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->isSplitMode()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isTabLockSupported()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar$2;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar;->d(Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar;)Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->isSecretModeEnabled()Z

    move-result p0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/utils/SBrowserFlags;->isTabLockSupported(Z)Z

    move-result p0

    return p0
.end method

.method public isTabRestoring()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar$2;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar;->f(Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar;)Lcom/sec/android/app/sbrowser/tab_manager/TabManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->isTabRestoring()Z

    move-result p0

    return p0
.end method

.method public isUndoAvailable()Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar$2;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar;->d(Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar;)Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->isSecretModeEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar$2;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar;->f(Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar;)Lcom/sec/android/app/sbrowser/tab_manager/TabManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->hasClosedTab()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isValidTab(I)Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar$2;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar;->f(Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar;)Lcom/sec/android/app/sbrowser/tab_manager/TabManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->getTabById(I)Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object p1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar$2;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar;->d(Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar;)Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->isValidTab(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)Z

    move-result p0

    return p0
.end method

.method public printTabsIfNeeded(Z)Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar$2;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar;

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar;->f(Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar;)Lcom/sec/android/app/sbrowser/tab_manager/TabManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->getCurrentTab()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object v1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar$2;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar;->f(Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar;)Lcom/sec/android/app/sbrowser/tab_manager/TabManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->getTabList(Z)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const-string v2, "["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->getTabId()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->isLocked()Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "#"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    if-ne v1, p1, :cond_2

    const-string v2, "*"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->isClosing()Z

    move-result p1

    if-eqz p1, :cond_3

    const-string p1, "-"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    const-string p1, "]"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public shouldFetchFaviconFromHistory(I)Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar$2;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar;->f(Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar;)Lcom/sec/android/app/sbrowser/tab_manager/TabManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->getTabById(I)Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object p1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar$2;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar;->d(Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar;)Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->isValidTab(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)Z

    move-result p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->getTerrace()Lcom/sec/terrace/Terrace;

    move-result-object p0

    if-nez p0, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public updateCustomHeader(Z)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar$2;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar;->d(Lcom/sec/android/app/sbrowser/main_view/MainViewTabBar;)Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->updateCustomHeader(Z)V

    return-void
.end method
