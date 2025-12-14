.class public Lcom/sec/android/app/sbrowser/main_view/ExtensionHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private mIsInitialized:Z

.field private mIsSixMgrEnabled:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/main_view/ExtensionHelper;->mIsInitialized:Z

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/main_view/ExtensionHelper;->mIsSixMgrEnabled:Z

    return-void
.end method


# virtual methods
.method public initTerraceExtensionsManager(Landroid/app/Activity;)V
    .locals 1

    invoke-static {}, Lcom/sec/terrace/browser/extensions/TerraceExtensionsManager;->getInstance()Lcom/sec/terrace/browser/extensions/TerraceExtensionsManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/terrace/browser/extensions/TerraceExtensionsManager;->initialize()V

    new-instance p1, Lcom/sec/android/app/sbrowser/main_view/ExtensionHelper$1;

    invoke-direct {p1, p0}, Lcom/sec/android/app/sbrowser/main_view/ExtensionHelper$1;-><init>(Lcom/sec/android/app/sbrowser/main_view/ExtensionHelper;)V

    invoke-static {}, Lcom/sec/terrace/browser/extensions/TerraceExtensionsManager;->getInstance()Lcom/sec/terrace/browser/extensions/TerraceExtensionsManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/terrace/browser/extensions/TerraceExtensionsManager;->setExtensionActionCallback(Lcom/sec/terrace/browser/extensions/TerraceExtensionsManager$ExtensionsActionCallback;)V

    new-instance p1, Lcom/sec/android/app/sbrowser/main_view/ExtensionHelper$2;

    invoke-direct {p1, p0}, Lcom/sec/android/app/sbrowser/main_view/ExtensionHelper$2;-><init>(Lcom/sec/android/app/sbrowser/main_view/ExtensionHelper;)V

    invoke-static {}, Lcom/sec/terrace/browser/extensions/TerraceExtensionsManager;->getInstance()Lcom/sec/terrace/browser/extensions/TerraceExtensionsManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/terrace/browser/extensions/TerraceExtensionsManager;->setExtensionClipboardCallback(Lcom/sec/terrace/browser/extensions/TerraceExtensionsManager$ExtensionsClipboardCallback;)V

    new-instance p1, Lcom/sec/android/app/sbrowser/main_view/ExtensionHelper$3;

    invoke-direct {p1, p0}, Lcom/sec/android/app/sbrowser/main_view/ExtensionHelper$3;-><init>(Lcom/sec/android/app/sbrowser/main_view/ExtensionHelper;)V

    invoke-static {}, Lcom/sec/terrace/browser/extensions/TerraceExtensionsManager;->getInstance()Lcom/sec/terrace/browser/extensions/TerraceExtensionsManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/sec/terrace/browser/extensions/TerraceExtensionsManager;->setContextMenuPopulatorCallback(Lcom/sec/terrace/browser/extensions/TerraceExtensionsManager$ContextMenuPopulatorCallback;)V

    return-void
.end method

.method public initialize(Landroid/app/Activity;Lcom/sec/android/app/sbrowser/tab_manager/TabManager;)V
    .locals 2

    invoke-static {}, Lcom/sec/android/app/sbrowser/multi_instance/MainActivityIdManager;->getInstance()Lcom/sec/android/app/sbrowser/multi_instance/MainActivityIdManager;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/multi_instance/MainActivityIdManager;->getActivityIdByClassName(Ljava/lang/String;)I

    move-result v0

    invoke-static {}, Lcom/sec/android/app/sbrowser/extensions/SixTabHelper;->getInstance()Lcom/sec/android/app/sbrowser/extensions/SixTabHelper;

    move-result-object v1

    invoke-virtual {v1, p2, v0, p1}, Lcom/sec/android/app/sbrowser/extensions/SixTabHelper;->initialize(Lcom/sec/android/app/sbrowser/tab_manager/TabManager;ILandroid/app/Activity;)V

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/main_view/ExtensionHelper;->initTerraceExtensionsManager(Landroid/app/Activity;)V

    invoke-static {}, Lcom/sec/terrace/browser/extensions/TerraceExtensionsManager;->getInstance()Lcom/sec/terrace/browser/extensions/TerraceExtensionsManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/terrace/browser/extensions/TerraceExtensionsManager;->isInitialized()Z

    move-result p1

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/main_view/ExtensionHelper;->mIsInitialized:Z

    invoke-static {}, Lcom/sec/android/app/sbrowser/extensions/SixManager;->getInstance()Lcom/sec/android/app/sbrowser/extensions/SixManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/extensions/SixManager;->isEnabled()Z

    move-result p1

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/main_view/ExtensionHelper;->mIsSixMgrEnabled:Z

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/main_view/ExtensionHelper;->mIsInitialized:Z

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/sec/android/app/sbrowser/extensions/SixManager;->getInstance()Lcom/sec/android/app/sbrowser/extensions/SixManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/extensions/SixManager;->initialize()V

    goto :goto_0

    :cond_0
    const-string p0, "ExtensionHelper"

    const-string p1, "initialize - SIX disabled. Abort SixManager init"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public onDestroy(Landroid/app/Activity;)V
    .locals 1

    invoke-static {}, Lcom/sec/android/app/sbrowser/extensions/SixTabHelper;->getInstance()Lcom/sec/android/app/sbrowser/extensions/SixTabHelper;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/sec/android/app/sbrowser/multi_instance/MainActivityIdManager;->getInstance()Lcom/sec/android/app/sbrowser/multi_instance/MainActivityIdManager;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/multi_instance/MainActivityIdManager;->getActivityIdByClassName(Ljava/lang/String;)I

    move-result p1

    invoke-static {}, Lcom/sec/android/app/sbrowser/extensions/SixTabHelper;->getInstance()Lcom/sec/android/app/sbrowser/extensions/SixTabHelper;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/extensions/SixTabHelper;->onDestory(I)V

    :cond_0
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/main_view/ExtensionHelper;->mIsSixMgrEnabled:Z

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/main_view/ExtensionHelper;->mIsInitialized:Z

    return-void
.end method

.method public onPause(Landroid/app/Activity;)V
    .locals 0

    invoke-static {}, Lcom/sec/android/app/sbrowser/extensions/SixTabHelper;->getInstance()Lcom/sec/android/app/sbrowser/extensions/SixTabHelper;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/sec/android/app/sbrowser/multi_instance/MainActivityIdManager;->getInstance()Lcom/sec/android/app/sbrowser/multi_instance/MainActivityIdManager;

    move-result-object p0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/multi_instance/MainActivityIdManager;->getActivityIdByClassName(Ljava/lang/String;)I

    move-result p0

    invoke-static {}, Lcom/sec/android/app/sbrowser/extensions/SixTabHelper;->getInstance()Lcom/sec/android/app/sbrowser/extensions/SixTabHelper;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/sec/android/app/sbrowser/extensions/SixTabHelper;->onPause(I)V

    :cond_0
    return-void
.end method

.method public onReaderAnimationCleared(ZLandroid/app/Activity;)V
    .locals 0

    invoke-static {}, Lcom/sec/android/app/sbrowser/extensions/SixTabHelper;->getInstance()Lcom/sec/android/app/sbrowser/extensions/SixTabHelper;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/sec/android/app/sbrowser/multi_instance/MainActivityIdManager;->getInstance()Lcom/sec/android/app/sbrowser/multi_instance/MainActivityIdManager;

    move-result-object p0

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/sec/android/app/sbrowser/multi_instance/MainActivityIdManager;->getActivityIdByClassName(Ljava/lang/String;)I

    move-result p0

    invoke-static {}, Lcom/sec/android/app/sbrowser/extensions/SixTabHelper;->getInstance()Lcom/sec/android/app/sbrowser/extensions/SixTabHelper;

    move-result-object p2

    invoke-virtual {p2, p0, p1}, Lcom/sec/android/app/sbrowser/extensions/SixTabHelper;->onReaderAnimationCleared(IZ)V

    :cond_0
    return-void
.end method

.method public onResume(Landroid/app/Activity;Lcom/sec/android/app/sbrowser/tab_manager/TabManager;)V
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/main_view/ExtensionHelper;->mIsSixMgrEnabled:Z

    if-nez v0, :cond_0

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/main_view/ExtensionHelper;->mIsInitialized:Z

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/sec/android/app/sbrowser/extensions/SixManager;->getInstance()Lcom/sec/android/app/sbrowser/extensions/SixManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/extensions/SixManager;->isEnabled()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/sec/android/app/sbrowser/extensions/SixManager;->getInstance()Lcom/sec/android/app/sbrowser/extensions/SixManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/extensions/SixManager;->initialize()V

    :cond_0
    invoke-static {}, Lcom/sec/android/app/sbrowser/extensions/SixTabHelper;->getInstance()Lcom/sec/android/app/sbrowser/extensions/SixTabHelper;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-static {}, Lcom/sec/android/app/sbrowser/multi_instance/MainActivityIdManager;->getInstance()Lcom/sec/android/app/sbrowser/multi_instance/MainActivityIdManager;

    move-result-object p0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/multi_instance/MainActivityIdManager;->getActivityIdByClassName(Ljava/lang/String;)I

    move-result p0

    invoke-static {}, Lcom/sec/android/app/sbrowser/extensions/SixTabHelper;->getInstance()Lcom/sec/android/app/sbrowser/extensions/SixTabHelper;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p0}, Lcom/sec/android/app/sbrowser/extensions/SixTabHelper;->onResume(Landroid/app/Activity;Lcom/sec/android/app/sbrowser/tab_manager/TabManager;I)V

    :cond_1
    return-void
.end method

.method public onWindowFocusChanged(Landroid/app/Activity;Lcom/sec/android/app/sbrowser/tab_manager/TabManager;)V
    .locals 1

    invoke-static {}, Lcom/sec/android/app/sbrowser/extensions/SixTabHelper;->getInstance()Lcom/sec/android/app/sbrowser/extensions/SixTabHelper;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/sec/android/app/sbrowser/multi_instance/MainActivityIdManager;->getInstance()Lcom/sec/android/app/sbrowser/multi_instance/MainActivityIdManager;

    move-result-object p0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/multi_instance/MainActivityIdManager;->getActivityIdByClassName(Ljava/lang/String;)I

    move-result p0

    invoke-static {}, Lcom/sec/android/app/sbrowser/extensions/SixTabHelper;->getInstance()Lcom/sec/android/app/sbrowser/extensions/SixTabHelper;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p0}, Lcom/sec/android/app/sbrowser/extensions/SixTabHelper;->onWindowFocusChanged(Landroid/app/Activity;Lcom/sec/android/app/sbrowser/tab_manager/TabManager;I)V

    :cond_0
    return-void
.end method
