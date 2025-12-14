.class Lcom/sec/android/app/sbrowser/settings/debug/MassDataTestFragment$MassSavePageTestHelper;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageMessageHandler$SavedPageMessageObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/settings/debug/MassDataTestFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MassSavePageTestHelper"
.end annotation


# instance fields
.field private mCount:I

.field private mSaveWebPage:Lcom/sec/android/app/sbrowser/sites/savedpage/model/SaveWebPage;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static bridge synthetic a(Lcom/sec/android/app/sbrowser/settings/debug/MassDataTestFragment$MassSavePageTestHelper;)Lcom/sec/android/app/sbrowser/sites/savedpage/model/SaveWebPage;
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/debug/MassDataTestFragment$MassSavePageTestHelper;->getSaveWebPage()Lcom/sec/android/app/sbrowser/sites/savedpage/model/SaveWebPage;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic b(Lcom/sec/android/app/sbrowser/settings/debug/MassDataTestFragment$MassSavePageTestHelper;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/settings/debug/MassDataTestFragment$MassSavePageTestHelper;->saveMassivePages(I)V

    return-void
.end method

.method private getSaveWebPage()Lcom/sec/android/app/sbrowser/sites/savedpage/model/SaveWebPage;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/debug/MassDataTestFragment$MassSavePageTestHelper;->mSaveWebPage:Lcom/sec/android/app/sbrowser/sites/savedpage/model/SaveWebPage;

    if-nez v0, :cond_0

    new-instance v0, Lcom/sec/android/app/sbrowser/sites/savedpage/model/SaveWebPage;

    invoke-direct {v0}, Lcom/sec/android/app/sbrowser/sites/savedpage/model/SaveWebPage;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/settings/debug/MassDataTestFragment$MassSavePageTestHelper;->mSaveWebPage:Lcom/sec/android/app/sbrowser/sites/savedpage/model/SaveWebPage;

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/debug/MassDataTestFragment$MassSavePageTestHelper;->mSaveWebPage:Lcom/sec/android/app/sbrowser/sites/savedpage/model/SaveWebPage;

    return-object p0
.end method

.method private saveMassivePages(I)V
    .locals 2

    const-string v0, "MassDataTestFragment"

    if-gtz p1, :cond_0

    const-string p0, "[saveMassivePages] - parameter is wrong"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/16 v1, 0x64

    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, p0, Lcom/sec/android/app/sbrowser/settings/debug/MassDataTestFragment$MassSavePageTestHelper;->mCount:I

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "[saveMassivePages] save "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/sec/android/app/sbrowser/settings/debug/MassDataTestFragment$MassSavePageTestHelper;->mCount:I

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " pages."

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/debug/MassDataTestFragment$MassSavePageTestHelper;->triggerSavePage()V

    return-void
.end method

.method private triggerSavePage()V
    .locals 5

    iget v0, p0, Lcom/sec/android/app/sbrowser/settings/debug/MassDataTestFragment$MassSavePageTestHelper;->mCount:I

    const-string v1, "MassDataTestFragment"

    if-gtz v0, :cond_0

    const-string p0, "[triggerSavePage] end saving"

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/sec/terrace/TerraceApplicationStatus;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    const-string v0, "Finish saving massive pages"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void

    :cond_0
    invoke-static {}, Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager;->getInstance()Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager;->getCurrentTabManager()Lcom/sec/android/app/sbrowser/tab_manager/TabManager;

    move-result-object v0

    if-nez v0, :cond_1

    const-string p0, "[triggerSavePage] - tab manager is null"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->getCurrentVisibleTab()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->isClosed()Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageMessageHandler;->getInstance()Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageMessageHandler;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageMessageHandler;->addObserver(Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageMessageHandler$SavedPageMessageObserver;)V

    invoke-static {}, Lcom/sec/terrace/TerraceApplicationStatus;->getLastTrackedFocusedActivity()Landroid/app/Activity;

    move-result-object v2

    new-instance v3, Lcom/sec/android/app/sbrowser/settings/debug/MassDataTestFragment$MassSavePageTestHelper$1;

    invoke-direct {v3, p0, v2}, Lcom/sec/android/app/sbrowser/settings/debug/MassDataTestFragment$MassSavePageTestHelper$1;-><init>(Lcom/sec/android/app/sbrowser/settings/debug/MassDataTestFragment$MassSavePageTestHelper;Landroid/content/Context;)V

    invoke-interface {v0, v3}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;->addEventListener(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabEventListener;)V

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "[triggerSavePage] : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, p0, Lcom/sec/android/app/sbrowser/settings/debug/MassDataTestFragment$MassSavePageTestHelper;->mCount:I

    invoke-static {v3, v4, v1}, Landroidx/recyclerview/widget/P;->x(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    iget v1, p0, Lcom/sec/android/app/sbrowser/settings/debug/MassDataTestFragment$MassSavePageTestHelper;->mCount:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/sec/android/app/sbrowser/settings/debug/MassDataTestFragment$MassSavePageTestHelper;->mCount:I

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/debug/MassDataTestFragment$MassSavePageTestHelper;->getSaveWebPage()Lcom/sec/android/app/sbrowser/sites/savedpage/model/SaveWebPage;

    move-result-object p0

    invoke-virtual {p0, v2, v0}, Lcom/sec/android/app/sbrowser/sites/savedpage/model/SaveWebPage;->savePage(Landroid/content/Context;Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)V

    return-void

    :cond_3
    :goto_0
    const-string p0, "[triggerSavePage] - current tab is null or closed"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public onChange(Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageMessageHandler$MESSAGES;)V
    .locals 2

    sget-object v0, Lcom/sec/android/app/sbrowser/settings/debug/MassDataTestFragment$4;->$SwitchMap$com$sec$android$app$sbrowser$sites$savedpage$model$SavedPageMessageHandler$MESSAGES:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageMessageHandler;->getInstance()Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageMessageHandler;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageMessageHandler;->getInstance()Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageMessageHandler;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageMessageHandler;->removeObserver(Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageMessageHandler$SavedPageMessageObserver;)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/debug/MassDataTestFragment$MassSavePageTestHelper;->getSaveWebPage()Lcom/sec/android/app/sbrowser/sites/savedpage/model/SaveWebPage;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/sec/android/app/sbrowser/sites/savedpage/model/SaveWebPage;->setSaveWebPageRunning(Z)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/debug/MassDataTestFragment$MassSavePageTestHelper;->triggerSavePage()V

    goto :goto_0

    :cond_1
    iput v1, p0, Lcom/sec/android/app/sbrowser/settings/debug/MassDataTestFragment$MassSavePageTestHelper;->mCount:I

    :goto_0
    return-void
.end method

.method public onDestroy()V
    .locals 2

    invoke-static {}, Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageMessageHandler;->getInstance()Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageMessageHandler;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageMessageHandler;->getInstance()Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageMessageHandler;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageMessageHandler;->removeObserver(Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageMessageHandler$SavedPageMessageObserver;)V

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/settings/debug/MassDataTestFragment$MassSavePageTestHelper;->mSaveWebPage:Lcom/sec/android/app/sbrowser/sites/savedpage/model/SaveWebPage;

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/sbrowser/settings/debug/MassDataTestFragment$MassSavePageTestHelper;->mCount:I

    return-void
.end method
