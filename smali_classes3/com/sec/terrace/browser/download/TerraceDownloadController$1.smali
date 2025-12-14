.class Lcom/sec/terrace/browser/download/TerraceDownloadController$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/terrace/browser/download/TinDownloadController$TinDownloadNotificationService;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/terrace/browser/download/TerraceDownloadController;->setDownloadNotificationService(Lcom/sec/terrace/browser/download/TerraceDownloadController$TerraceDownloadNotificationService;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic val$service:Lcom/sec/terrace/browser/download/TerraceDownloadController$TerraceDownloadNotificationService;


# direct methods
.method public constructor <init>(Lcom/sec/terrace/browser/download/TerraceDownloadController$TerraceDownloadNotificationService;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/sec/terrace/browser/download/TerraceDownloadController$1;->val$service:Lcom/sec/terrace/browser/download/TerraceDownloadController$TerraceDownloadNotificationService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/sec/terrace/browser/download/TerraceDownloadController$1;JLjava/lang/Boolean;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/sec/terrace/browser/download/TerraceDownloadController$1;->lambda$requestFileAccess$0(JLjava/lang/Boolean;)V

    return-void
.end method

.method private getLastTerraceActivity()Lcom/sec/terrace/TerraceActivity;
    .locals 4

    invoke-static {}, Lcom/sec/terrace/TerraceApplicationStatus;->getLastTrackedFocusedActivity()Landroid/app/Activity;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    instance-of v1, p0, Lcom/sec/terrace/TerraceActivity;

    if-eqz v1, :cond_1

    check-cast p0, Lcom/sec/terrace/TerraceActivity;

    return-object p0

    :cond_1
    invoke-virtual {p0}, Landroid/app/Activity;->getTaskId()I

    move-result p0

    invoke-static {}, Lcom/sec/terrace/TerraceApplicationStatus;->getRunningActivities()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/Activity;

    if-eqz v2, :cond_2

    instance-of v3, v2, Lcom/sec/terrace/TerraceActivity;

    if-eqz v3, :cond_2

    move-object v0, v2

    check-cast v0, Lcom/sec/terrace/TerraceActivity;

    invoke-virtual {v2}, Landroid/app/Activity;->getTaskId()I

    move-result v2

    if-ne v2, p0, :cond_2

    :cond_3
    return-object v0
.end method

.method private synthetic lambda$requestFileAccess$0(JLjava/lang/Boolean;)V
    .locals 0

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    invoke-direct {p0, p1, p2, p3}, Lcom/sec/terrace/browser/download/TerraceDownloadController$1;->onAcquirePermissionResult(JZ)V

    return-void
.end method

.method private onAcquirePermissionResult(JZ)V
    .locals 0

    invoke-static {p1, p2, p3}, Lcom/sec/terrace/browser/download/TinDownloadController;->onAcquirePermissionResult(JZ)V

    return-void
.end method

.method private requestFileAccessPermissionHelper(Lorg/chromium/ui/permissions/AndroidPermissionDelegate;Lorg/chromium/base/Callback;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/chromium/ui/permissions/AndroidPermissionDelegate;",
            "Lorg/chromium/base/Callback<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/sec/terrace/browser/download/TerraceDownloadController$1;->getLastTerraceActivity()Lcom/sec/terrace/TerraceActivity;

    move-result-object v0

    if-nez p1, :cond_0

    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {p2, p0}, Lorg/chromium/base/Callback;->onResult(Ljava/lang/Object;)V

    return-void

    :cond_0
    invoke-static {}, Lcom/sec/terrace/browser/download/TerraceDownloadUtils;->isAtLeastRos()Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-interface {p1, v1}, Lorg/chromium/ui/permissions/AndroidPermissionDelegate;->hasPermission(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    new-instance v2, Lcom/sec/terrace/browser/download/TerraceDownloadController$1$1;

    invoke-direct {v2, p0, v0, p2}, Lcom/sec/terrace/browser/download/TerraceDownloadController$1$1;-><init>(Lcom/sec/terrace/browser/download/TerraceDownloadController$1;Lcom/sec/terrace/TerraceActivity;Lorg/chromium/base/Callback;)V

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    const-string v4, "pref_request_permission_storage"

    const/4 v5, 0x0

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_2

    if-eqz v0, :cond_2

    invoke-virtual {v0, v1}, Landroid/app/Activity;->shouldShowRequestPermissionRationale(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-direct {p0, v0}, Lcom/sec/terrace/browser/download/TerraceDownloadController$1;->showDownloadPermissionAlert(Landroid/app/Activity;)V

    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {p2, p0}, Lorg/chromium/base/Callback;->onResult(Ljava/lang/Object;)V

    return-void

    :cond_2
    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p0, v2}, Lorg/chromium/ui/permissions/AndroidPermissionDelegate;->requestPermissions([Ljava/lang/String;Lorg/chromium/ui/permissions/PermissionCallback;)V

    return-void

    :cond_3
    :goto_0
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {p2, p0}, Lorg/chromium/base/Callback;->onResult(Ljava/lang/Object;)V

    return-void
.end method

.method private showDownloadPermissionAlert(Landroid/app/Activity;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/terrace/browser/download/TerraceDownloadController$1;->val$service:Lcom/sec/terrace/browser/download/TerraceDownloadController$TerraceDownloadNotificationService;

    invoke-interface {p0, p1}, Lcom/sec/terrace/browser/download/TerraceDownloadController$TerraceDownloadNotificationService;->showDownloadPermissionAlert(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public hasFileAccess(Lorg/chromium/ui/base/WindowAndroid;)Z
    .locals 1

    const/4 p0, 0x0

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/sec/terrace/browser/download/TerraceDownloadUtils;->isAtLeastRos()Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-interface {p1, v0}, Lorg/chromium/ui/permissions/AndroidPermissionDelegate;->hasPermission(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    :cond_1
    const/4 p0, 0x1

    :cond_2
    :goto_0
    return p0
.end method

.method public onDownloadCancelled(Lcom/sec/terrace/browser/download/TerraceDownloadInfo;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/terrace/browser/download/TerraceDownloadController$1;->val$service:Lcom/sec/terrace/browser/download/TerraceDownloadController$TerraceDownloadNotificationService;

    invoke-interface {p0, p1}, Lcom/sec/terrace/browser/download/TerraceDownloadController$TerraceDownloadNotificationService;->onDownloadCancelled(Lcom/sec/terrace/browser/download/TerraceDownloadInfo;)V

    return-void
.end method

.method public onDownloadCompleted(Lcom/sec/terrace/browser/download/TerraceDownloadInfo;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/terrace/browser/download/TerraceDownloadController$1;->val$service:Lcom/sec/terrace/browser/download/TerraceDownloadController$TerraceDownloadNotificationService;

    invoke-interface {p0, p1}, Lcom/sec/terrace/browser/download/TerraceDownloadController$TerraceDownloadNotificationService;->onDownloadCompleted(Lcom/sec/terrace/browser/download/TerraceDownloadInfo;)V

    return-void
.end method

.method public onDownloadInterrupted(Lcom/sec/terrace/browser/download/TerraceDownloadInfo;Z)V
    .locals 0

    iget-object p0, p0, Lcom/sec/terrace/browser/download/TerraceDownloadController$1;->val$service:Lcom/sec/terrace/browser/download/TerraceDownloadController$TerraceDownloadNotificationService;

    invoke-interface {p0, p1, p2}, Lcom/sec/terrace/browser/download/TerraceDownloadController$TerraceDownloadNotificationService;->onDownloadInterrupted(Lcom/sec/terrace/browser/download/TerraceDownloadInfo;Z)V

    return-void
.end method

.method public onDownloadStarted(Lcom/sec/terrace/browser/download/TerraceDownloadInfo;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/terrace/browser/download/TerraceDownloadController$1;->val$service:Lcom/sec/terrace/browser/download/TerraceDownloadController$TerraceDownloadNotificationService;

    invoke-interface {p0, p1}, Lcom/sec/terrace/browser/download/TerraceDownloadController$TerraceDownloadNotificationService;->onDownloadStarted(Lcom/sec/terrace/browser/download/TerraceDownloadInfo;)V

    return-void
.end method

.method public onDownloadUpdated(Lcom/sec/terrace/browser/download/TerraceDownloadInfo;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/terrace/browser/download/TerraceDownloadController$1;->val$service:Lcom/sec/terrace/browser/download/TerraceDownloadController$TerraceDownloadNotificationService;

    invoke-interface {p0, p1}, Lcom/sec/terrace/browser/download/TerraceDownloadController$TerraceDownloadNotificationService;->onDownloadUpdated(Lcom/sec/terrace/browser/download/TerraceDownloadInfo;)V

    return-void
.end method

.method public onPreDownloadRequest(Lcom/sec/terrace/browser/download/TerraceDownloadInfo;J)V
    .locals 0

    iget-object p0, p0, Lcom/sec/terrace/browser/download/TerraceDownloadController$1;->val$service:Lcom/sec/terrace/browser/download/TerraceDownloadController$TerraceDownloadNotificationService;

    invoke-interface {p0, p1, p2, p3}, Lcom/sec/terrace/browser/download/TerraceDownloadController$TerraceDownloadNotificationService;->onPreDownloadRequest(Lcom/sec/terrace/browser/download/TerraceDownloadInfo;J)V

    return-void
.end method

.method public requestFileAccess(JLorg/chromium/ui/base/WindowAndroid;)V
    .locals 1

    new-instance v0, Lcom/sec/terrace/browser/download/a;

    invoke-direct {v0, p0, p1, p2}, Lcom/sec/terrace/browser/download/a;-><init>(Lcom/sec/terrace/browser/download/TerraceDownloadController$1;J)V

    invoke-direct {p0, p3, v0}, Lcom/sec/terrace/browser/download/TerraceDownloadController$1;->requestFileAccessPermissionHelper(Lorg/chromium/ui/permissions/AndroidPermissionDelegate;Lorg/chromium/base/Callback;)V

    return-void
.end method
