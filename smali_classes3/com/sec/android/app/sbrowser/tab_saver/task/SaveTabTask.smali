.class public Lcom/sec/android/app/sbrowser/tab_saver/task/SaveTabTask;
.super Lcom/sec/android/app/sbrowser/tab_saver/task/BaseNamedAsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sec/android/app/sbrowser/tab_saver/task/BaseNamedAsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private final mEncrypted:Z

.field private final mId:I

.field private mState:Lcom/sec/terrace/TerraceState;

.field private mStateSaved:Z

.field private final mTab:Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/tab_saver/util/TabSaverUtil;Lcom/sec/android/app/sbrowser/tab_saver/model/TabSaverDelegate;Lcom/sec/android/app/sbrowser/common/model/general/GeneralCallback;Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/android/app/sbrowser/tab_saver/util/TabSaverUtil;",
            "Lcom/sec/android/app/sbrowser/tab_saver/model/TabSaverDelegate;",
            "Lcom/sec/android/app/sbrowser/common/model/general/GeneralCallback<",
            "Ljava/lang/Void;",
            ">;",
            "Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/tab_saver/task/BaseNamedAsyncTask;-><init>(Lcom/sec/android/app/sbrowser/tab_saver/util/TabSaverUtil;Lcom/sec/android/app/sbrowser/tab_saver/model/TabSaverDelegate;Lcom/sec/android/app/sbrowser/common/model/general/GeneralCallback;)V

    const-string p1, "SaveTabTask"

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/tab_saver/task/BaseNamedAsyncTask;->mThreadName:Ljava/lang/String;

    iput-object p4, p0, Lcom/sec/android/app/sbrowser/tab_saver/task/SaveTabTask;->mTab:Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;

    invoke-interface {p4}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->getTabId()I

    move-result p1

    iput p1, p0, Lcom/sec/android/app/sbrowser/tab_saver/task/SaveTabTask;->mId:I

    invoke-interface {p4}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->isIncognito()Z

    move-result p1

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/tab_saver/task/SaveTabTask;->mEncrypted:Z

    return-void
.end method


# virtual methods
.method public bridge synthetic doExecute()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_saver/task/SaveTabTask;->doExecute()Ljava/lang/Void;

    move-result-object p0

    return-object p0
.end method

.method public doExecute()Ljava/lang/Void;
    .locals 5

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_saver/task/BaseNamedAsyncTask;->mUtil:Lcom/sec/android/app/sbrowser/tab_saver/util/TabSaverUtil;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/tab_saver/task/BaseNamedAsyncTask;->mDelegate:Lcom/sec/android/app/sbrowser/tab_saver/model/TabSaverDelegate;

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/tab_saver/model/TabSaverDelegate;->getInstanceId()I

    move-result v1

    iget v2, p0, Lcom/sec/android/app/sbrowser/tab_saver/task/SaveTabTask;->mId:I

    iget-boolean v3, p0, Lcom/sec/android/app/sbrowser/tab_saver/task/SaveTabTask;->mEncrypted:Z

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/tab_saver/task/SaveTabTask;->mState:Lcom/sec/terrace/TerraceState;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/sec/android/app/sbrowser/tab_saver/util/TabSaverUtil;->saveTerraceState(IIZLcom/sec/terrace/TerraceState;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/tab_saver/task/SaveTabTask;->mStateSaved:Z

    const/4 p0, 0x0

    return-object p0
.end method

.method public getId()I
    .locals 0

    iget p0, p0, Lcom/sec/android/app/sbrowser/tab_saver/task/SaveTabTask;->mId:I

    return p0
.end method

.method public getTab()Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_saver/task/SaveTabTask;->mTab:Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;

    return-object p0
.end method

.method public isStateSaved()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/tab_saver/task/SaveTabTask;->mStateSaved:Z

    return p0
.end method

.method public bridge synthetic postExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/tab_saver/task/SaveTabTask;->postExecute(Ljava/lang/Void;)V

    return-void
.end method

.method public postExecute(Ljava/lang/Void;)V
    .locals 2

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/tab_saver/task/SaveTabTask;->mStateSaved:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_saver/task/SaveTabTask;->mTab:Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->setIsTerraceStateDirty(Z)V

    :cond_0
    invoke-super {p0, p1}, Lcom/sec/android/app/sbrowser/tab_saver/task/BaseNamedAsyncTask;->postExecute(Ljava/lang/Object;)V

    return-void
.end method

.method public preExecute()V
    .locals 3

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_saver/task/BaseNamedAsyncTask;->getName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Save tab "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/sec/android/app/sbrowser/tab_saver/task/SaveTabTask;->mId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", isIncognito : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/sec/android/app/sbrowser/tab_saver/task/SaveTabTask;->mEncrypted:Z

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/sbrowser/autofill/password/k;->A(Ljava/lang/String;Ljava/lang/StringBuilder;Z)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_saver/task/SaveTabTask;->mTab:Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->getState()Lcom/sec/terrace/TerraceState;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/tab_saver/task/SaveTabTask;->mState:Lcom/sec/terrace/TerraceState;

    return-void
.end method
