.class Lcom/sec/android/app/sbrowser/tab_sync/TabSyncBaseView$TabSyncData;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/tab_sync/TabSyncBaseView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TabSyncData"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Lcom/sec/android/app/sbrowser/tab_sync/TabSyncViewData$SyncValues;",
        "Ljava/lang/String;",
        "Lcom/sec/android/app/sbrowser/tab_sync/TabSyncViewData$SyncValues;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/tab_sync/TabSyncBaseView;


# direct methods
.method private constructor <init>(Lcom/sec/android/app/sbrowser/tab_sync/TabSyncBaseView;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncBaseView$TabSyncData;->this$0:Lcom/sec/android/app/sbrowser/tab_sync/TabSyncBaseView;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/sec/android/app/sbrowser/tab_sync/TabSyncBaseView;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncBaseView$TabSyncData;-><init>(Lcom/sec/android/app/sbrowser/tab_sync/TabSyncBaseView;)V

    return-void
.end method

.method public static synthetic a(Lcom/sec/android/app/sbrowser/common/model/tab_sync/TabSyncDataVO;Lcom/sec/android/app/sbrowser/common/model/tab_sync/TabSyncDataVO;)I
    .locals 0

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncBaseView$TabSyncData;->lambda$refineDeviceList$0(Lcom/sec/android/app/sbrowser/common/model/tab_sync/TabSyncDataVO;Lcom/sec/android/app/sbrowser/common/model/tab_sync/TabSyncDataVO;)I

    move-result p0

    return p0
.end method

.method private static synthetic lambda$refineDeviceList$0(Lcom/sec/android/app/sbrowser/common/model/tab_sync/TabSyncDataVO;Lcom/sec/android/app/sbrowser/common/model/tab_sync/TabSyncDataVO;)I
    .locals 2

    iget-wide v0, p1, Lcom/sec/android/app/sbrowser/common/model/tab_sync/TabSyncDataVO;->dateModified:J

    iget-wide p0, p0, Lcom/sec/android/app/sbrowser/common/model/tab_sync/TabSyncDataVO;->dateModified:J

    sub-long/2addr v0, p0

    long-to-int p0, v0

    return p0
.end method

.method private refineDeviceList(Ljava/util/List;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sec/android/app/sbrowser/common/model/tab_sync/TabSyncDataVO;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/sec/android/app/sbrowser/common/model/tab_sync/TabSyncDataVO;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/sbrowser/common/model/tab_sync/TabSyncDataVO;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncBaseView$TabSyncData;->this$0:Lcom/sec/android/app/sbrowser/tab_sync/TabSyncBaseView;

    iget-object v2, v2, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncBaseView;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/sec/android/app/sbrowser/common/sync/SyncUtil;->getCurrentTime(Landroid/content/Context;)J

    move-result-wide v2

    iget-wide v4, v1, Lcom/sec/android/app/sbrowser/common/model/tab_sync/TabSyncDataVO;->dateModified:J

    sub-long/2addr v2, v4

    const-string v4, "[refineDeviceList] elapsedMs: "

    const-string v5, "TabSyncBaseView"

    invoke-static {v2, v3, v4, v5}, Landroidx/recyclerview/widget/P;->k(JLjava/lang/String;Ljava/lang/String;)V

    sget-wide v4, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncConstants;->OLD_DEVICE_LIMIT_MS:J

    cmp-long v2, v2, v4

    if-gtz v2, :cond_0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    new-instance p0, Lcom/sec/android/app/sbrowser/tab_sync/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->sort(Ljava/util/Comparator;)V

    return-object v0
.end method


# virtual methods
.method public varargs doInBackground([Lcom/sec/android/app/sbrowser/tab_sync/TabSyncViewData$SyncValues;)Lcom/sec/android/app/sbrowser/tab_sync/TabSyncViewData$SyncValues;
    .locals 3

    const-string v0, "TabSyncBaseView"

    const-string v1, "TabSyncData::doInBackground start"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncBaseView$TabSyncData;->this$0:Lcom/sec/android/app/sbrowser/tab_sync/TabSyncBaseView;

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncBaseView;->b(Lcom/sec/android/app/sbrowser/tab_sync/TabSyncBaseView;)Lcom/sec/android/app/sbrowser/tab_sync/TabSyncConstants$ActivityStatus;

    move-result-object v1

    sget-object v2, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncConstants$ActivityStatus;->FINISHED:Lcom/sec/android/app/sbrowser/tab_sync/TabSyncConstants$ActivityStatus;

    if-ne v1, v2, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const/4 v1, 0x0

    aget-object p1, p1, v1

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncBaseView$TabSyncData;->this$0:Lcom/sec/android/app/sbrowser/tab_sync/TabSyncBaseView;

    iget-object v2, v1, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncBaseView;->mController:Lcom/sec/android/app/sbrowser/tab_sync/TabSyncControllerDelegate;

    iget-object v1, v1, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncBaseView;->mTabSyncActivityDelegate:Lcom/sec/android/app/sbrowser/tab_sync/TabSyncActivityDelegate;

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncActivityDelegate;->getAccountType()I

    move-result v1

    invoke-interface {v2, v1}, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncControllerDelegate;->getGroupDetails(I)Ljava/util/List;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncBaseView$TabSyncData;->refineDeviceList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    iput-object p0, p1, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncViewData$SyncValues;->mTabSyncData:Ljava/util/List;

    const-string p0, "TabSyncData::doInBackground end"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object p1
.end method

.method public bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, [Lcom/sec/android/app/sbrowser/tab_sync/TabSyncViewData$SyncValues;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncBaseView$TabSyncData;->doInBackground([Lcom/sec/android/app/sbrowser/tab_sync/TabSyncViewData$SyncValues;)Lcom/sec/android/app/sbrowser/tab_sync/TabSyncViewData$SyncValues;

    move-result-object p0

    return-object p0
.end method

.method public onPostExecute(Lcom/sec/android/app/sbrowser/tab_sync/TabSyncViewData$SyncValues;)V
    .locals 2

    const-string v0, "TabSyncData::onPostExecute start"

    const-string v1, "TabSyncBaseView"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncBaseView$TabSyncData;->this$0:Lcom/sec/android/app/sbrowser/tab_sync/TabSyncBaseView;

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncBaseView;->mTabSyncActivity:Lm/n;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncBaseView$TabSyncData;->this$0:Lcom/sec/android/app/sbrowser/tab_sync/TabSyncBaseView;

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncBaseView;->mTabSyncActivity:Lm/n;

    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/os/AsyncTask;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncBaseView$TabSyncData;->this$0:Lcom/sec/android/app/sbrowser/tab_sync/TabSyncBaseView;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncBaseView;->processPostExecuteUI(Lcom/sec/android/app/sbrowser/tab_sync/TabSyncViewData$SyncValues;)V

    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    :cond_0
    const-string p0, "TabSyncData::onPostExecute end"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncViewData$SyncValues;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncBaseView$TabSyncData;->onPostExecute(Lcom/sec/android/app/sbrowser/tab_sync/TabSyncViewData$SyncValues;)V

    return-void
.end method
