.class public Lcom/sec/android/app/sbrowser/download/completed_info/DownloadCompleteBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mCompletedInfoManager:Lcom/sec/android/app/sbrowser/download/completed_info/DownloadCompletedInfoManager;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/download/completed_info/DownloadCompleteBroadcastReceiver;->mActivity:Landroid/app/Activity;

    new-instance p1, Lcom/sec/android/app/sbrowser/download/completed_info/DownloadCompletedInfoManager;

    invoke-direct {p1}, Lcom/sec/android/app/sbrowser/download/completed_info/DownloadCompletedInfoManager;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/download/completed_info/DownloadCompleteBroadcastReceiver;->mCompletedInfoManager:Lcom/sec/android/app/sbrowser/download/completed_info/DownloadCompletedInfoManager;

    return-void
.end method

.method private checkIsActivityTop(Landroid/app/Activity;)Z
    .locals 5

    const/4 p0, 0x0

    if-nez p1, :cond_0

    return p0

    :cond_0
    const-string v0, "activity"

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    if-nez v0, :cond_1

    return p0

    :cond_1
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getAppTasks()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_2

    return p0

    :cond_2
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager$AppTask;

    invoke-virtual {v1}, Landroid/app/ActivityManager$AppTask;->getTaskInfo()Landroid/app/ActivityManager$RecentTaskInfo;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-virtual {p1}, Landroid/app/Activity;->getTaskId()I

    move-result v3

    invoke-virtual {v1}, Landroid/app/ActivityManager$AppTask;->getTaskInfo()Landroid/app/ActivityManager$RecentTaskInfo;

    move-result-object v4

    iget v4, v4, Landroid/app/ActivityManager$RecentTaskInfo;->id:I

    if-ne v3, v4, :cond_3

    invoke-virtual {v1}, Landroid/app/ActivityManager$AppTask;->getTaskInfo()Landroid/app/ActivityManager$RecentTaskInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/app/ActivityManager$RecentTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {p1}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/content/ComponentName;->compareTo(Landroid/content/ComponentName;)I

    move-result p1

    if-nez p1, :cond_4

    move p0, v2

    :cond_4
    return p0

    :cond_5
    return v2
.end method

.method private shouldShowPopup()Z
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/completed_info/DownloadCompleteBroadcastReceiver;->mActivity:Landroid/app/Activity;

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/download/completed_info/DownloadCompleteBroadcastReceiver;->checkIsActivityTop(Landroid/app/Activity;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-static {}, Lcom/sec/terrace/TerraceApplicationStatus;->getLastTrackedFocusedActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/download/completed_info/DownloadCompleteBroadcastReceiver;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    return v1
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    const-string p1, "onReceive called"

    const-string v0, "DownloadCompleteBroadcastReceiver"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/download/completed_info/DownloadCompleteBroadcastReceiver;->shouldShowPopup()Z

    move-result p1

    if-nez p1, :cond_0

    const-string p0, "shouldShowPopup is false"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/download/completed_info/DownloadCompleteBroadcastReceiver;->mCompletedInfoManager:Lcom/sec/android/app/sbrowser/download/completed_info/DownloadCompletedInfoManager;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/download/completed_info/DownloadCompleteBroadcastReceiver;->mActivity:Landroid/app/Activity;

    invoke-virtual {p1, p0, p2}, Lcom/sec/android/app/sbrowser/download/completed_info/DownloadCompletedInfoManager;->requestDownloadCompletedPopup(Landroid/app/Activity;Landroid/content/Intent;)V

    return-void
.end method

.method public recraeteSnackbar(J)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/download/completed_info/DownloadCompleteBroadcastReceiver;->mCompletedInfoManager:Lcom/sec/android/app/sbrowser/download/completed_info/DownloadCompletedInfoManager;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sbrowser/download/completed_info/DownloadCompletedInfoManager;->recreateSnackbar(J)V

    :cond_0
    return-void
.end method
