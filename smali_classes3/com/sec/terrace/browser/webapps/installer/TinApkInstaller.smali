.class Lcom/sec/terrace/browser/webapps/installer/TinApkInstaller;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/terrace/browser/webapps/installer/TinApkInstaller$LazyHolder;,
        Lcom/sec/terrace/browser/webapps/installer/TinApkInstaller$WebApkInstallInfo;,
        Lcom/sec/terrace/browser/webapps/installer/TinApkInstaller$Listener;,
        Lcom/sec/terrace/browser/webapps/installer/TinApkInstaller$WebApkInstallEvent;
    }
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mDownloader:Lcom/sec/terrace/browser/webapps/installer/TinApkDownloader;

.field private mIsUpdate:Z

.field private final mListener:Lcom/sec/terrace/browser/webapps/installer/TinApkInstaller$Listener;

.field private mStatus:Lcom/sec/terrace/browser/webapps/installer/TinApkInstaller$WebApkInstallEvent;

.field private final mWebApkInstallInfo:Lcom/sec/terrace/browser/webapps/installer/TinApkInstaller$WebApkInstallInfo;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/sec/terrace/browser/webapps/installer/TinApkInstaller$Listener;)V
    .locals 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/terrace/browser/webapps/installer/TinApkInstaller;->mContext:Landroid/content/Context;

    new-instance p1, Lcom/sec/terrace/browser/webapps/installer/TinApkInstaller$WebApkInstallInfo;

    const/4 v2, 0x0

    move-object v0, p1

    move-object v1, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/sec/terrace/browser/webapps/installer/TinApkInstaller$WebApkInstallInfo;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/sec/terrace/browser/webapps/installer/TinApkInstaller;->mWebApkInstallInfo:Lcom/sec/terrace/browser/webapps/installer/TinApkInstaller$WebApkInstallInfo;

    iput-object p8, p0, Lcom/sec/terrace/browser/webapps/installer/TinApkInstaller;->mListener:Lcom/sec/terrace/browser/webapps/installer/TinApkInstaller$Listener;

    iput-boolean p7, p0, Lcom/sec/terrace/browser/webapps/installer/TinApkInstaller;->mIsUpdate:Z

    sget-object p1, Lcom/sec/terrace/browser/webapps/installer/TinApkInstaller$WebApkInstallEvent;->READY:Lcom/sec/terrace/browser/webapps/installer/TinApkInstaller$WebApkInstallEvent;

    iput-object p1, p0, Lcom/sec/terrace/browser/webapps/installer/TinApkInstaller;->mStatus:Lcom/sec/terrace/browser/webapps/installer/TinApkInstaller$WebApkInstallEvent;

    return-void
.end method

.method public static synthetic a(Lcom/sec/terrace/browser/webapps/installer/TinApkInstaller;Ljava/io/File;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/terrace/browser/webapps/installer/TinApkInstaller;->lambda$installApk$0(Ljava/io/File;)V

    return-void
.end method

.method public static bridge synthetic b(Lcom/sec/terrace/browser/webapps/installer/TinApkInstaller;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/terrace/browser/webapps/installer/TinApkInstaller;->mIsUpdate:Z

    return p0
.end method

.method public static bridge synthetic c(Lcom/sec/terrace/browser/webapps/installer/TinApkInstaller;)Lcom/sec/terrace/browser/webapps/installer/TinApkInstaller$WebApkInstallInfo;
    .locals 0

    iget-object p0, p0, Lcom/sec/terrace/browser/webapps/installer/TinApkInstaller;->mWebApkInstallInfo:Lcom/sec/terrace/browser/webapps/installer/TinApkInstaller$WebApkInstallInfo;

    return-object p0
.end method

.method public static bridge synthetic d(Lcom/sec/terrace/browser/webapps/installer/TinApkInstaller;Lcom/sec/terrace/browser/webapps/installer/TinApkInstaller$WebApkInstallEvent;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/terrace/browser/webapps/installer/TinApkInstaller;->handleEvent(Lcom/sec/terrace/browser/webapps/installer/TinApkInstaller$WebApkInstallEvent;)V

    return-void
.end method

.method private deleteFile(Ljava/io/File;)V
    .locals 1

    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    move-result p0

    if-nez p0, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "file delete failed : "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "TinApkInstaller"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public static bridge synthetic e(Lcom/sec/terrace/browser/webapps/installer/TinApkInstaller;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/terrace/browser/webapps/installer/TinApkInstaller;->showStartingDownloadSnackbarIfNeeded()V

    return-void
.end method

.method private static getExecutorService()Ljava/util/concurrent/ExecutorService;
    .locals 1

    invoke-static {}, Lcom/sec/terrace/browser/webapps/installer/TinApkInstaller$LazyHolder;->a()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    return-object v0
.end method

.method private handleEvent(Lcom/sec/terrace/browser/webapps/installer/TinApkInstaller$WebApkInstallEvent;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "handleEvent : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TinApkInstaller"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/sec/terrace/browser/webapps/installer/TinApkInstaller;->mStatus:Lcom/sec/terrace/browser/webapps/installer/TinApkInstaller$WebApkInstallEvent;

    sget-object v0, Lcom/sec/terrace/browser/webapps/installer/TinApkInstaller$3;->$SwitchMap$com$sec$terrace$browser$webapps$installer$TinApkInstaller$WebApkInstallEvent:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_0

    :pswitch_0
    iget-object p1, p0, Lcom/sec/terrace/browser/webapps/installer/TinApkInstaller;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/sec/terrace/browser/webapps/installer/TinApkInstaller;->mWebApkInstallInfo:Lcom/sec/terrace/browser/webapps/installer/TinApkInstaller$WebApkInstallInfo;

    invoke-static {p1, v0}, Lcom/sec/terrace/browser/webapps/notifications/TinWebApkNotificationHelper;->showUpdatedNotification(Landroid/content/Context;Lcom/sec/terrace/browser/webapps/notifications/TinWebApkNotificationHelper$WebApkNotificationInfo;)V

    iget-object p1, p0, Lcom/sec/terrace/browser/webapps/installer/TinApkInstaller;->mListener:Lcom/sec/terrace/browser/webapps/installer/TinApkInstaller$Listener;

    invoke-interface {p1}, Lcom/sec/terrace/browser/webapps/installer/TinApkInstaller$Listener;->onInstallApkSuccess()V

    iget-object p1, p0, Lcom/sec/terrace/browser/webapps/installer/TinApkInstaller;->mWebApkInstallInfo:Lcom/sec/terrace/browser/webapps/installer/TinApkInstaller$WebApkInstallInfo;

    invoke-static {p1}, Lcom/sec/terrace/browser/webapps/installer/TinApkInstaller$WebApkInstallInfo;->a(Lcom/sec/terrace/browser/webapps/installer/TinApkInstaller$WebApkInstallInfo;)Ljava/io/File;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/sec/terrace/browser/webapps/installer/TinApkInstaller;->deleteFile(Ljava/io/File;)V

    goto/16 :goto_0

    :pswitch_1
    iget-object p1, p0, Lcom/sec/terrace/browser/webapps/installer/TinApkInstaller;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/sec/terrace/browser/webapps/installer/TinApkInstaller;->mWebApkInstallInfo:Lcom/sec/terrace/browser/webapps/installer/TinApkInstaller$WebApkInstallInfo;

    invoke-static {p1, v0}, Lcom/sec/terrace/browser/webapps/notifications/TinWebApkNotificationHelper;->showInstalledNotification(Landroid/content/Context;Lcom/sec/terrace/browser/webapps/notifications/TinWebApkNotificationHelper$WebApkNotificationInfo;)V

    iget-object p1, p0, Lcom/sec/terrace/browser/webapps/installer/TinApkInstaller;->mWebApkInstallInfo:Lcom/sec/terrace/browser/webapps/installer/TinApkInstaller$WebApkInstallInfo;

    invoke-virtual {p1}, Lcom/sec/terrace/browser/webapps/installer/TinApkInstaller$WebApkInstallInfo;->getTitle()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/sec/terrace/browser/webapps/installer/TinApkInstaller;->showToast(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/sec/terrace/browser/webapps/installer/TinApkInstaller;->mListener:Lcom/sec/terrace/browser/webapps/installer/TinApkInstaller$Listener;

    invoke-interface {p1}, Lcom/sec/terrace/browser/webapps/installer/TinApkInstaller$Listener;->onInstallApkSuccess()V

    iget-object p1, p0, Lcom/sec/terrace/browser/webapps/installer/TinApkInstaller;->mWebApkInstallInfo:Lcom/sec/terrace/browser/webapps/installer/TinApkInstaller$WebApkInstallInfo;

    invoke-static {p1}, Lcom/sec/terrace/browser/webapps/installer/TinApkInstaller$WebApkInstallInfo;->a(Lcom/sec/terrace/browser/webapps/installer/TinApkInstaller$WebApkInstallInfo;)Ljava/io/File;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/sec/terrace/browser/webapps/installer/TinApkInstaller;->deleteFile(Ljava/io/File;)V

    goto :goto_0

    :pswitch_2
    iget-object p1, p0, Lcom/sec/terrace/browser/webapps/installer/TinApkInstaller;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/sec/terrace/browser/webapps/installer/TinApkInstaller;->mWebApkInstallInfo:Lcom/sec/terrace/browser/webapps/installer/TinApkInstaller$WebApkInstallInfo;

    invoke-static {p1, v0}, Lcom/sec/terrace/browser/webapps/notifications/TinWebApkNotificationHelper;->showInstallFailedNotification(Landroid/content/Context;Lcom/sec/terrace/browser/webapps/notifications/TinWebApkNotificationHelper$WebApkNotificationInfo;)V

    iget-object p1, p0, Lcom/sec/terrace/browser/webapps/installer/TinApkInstaller;->mListener:Lcom/sec/terrace/browser/webapps/installer/TinApkInstaller$Listener;

    invoke-interface {p1}, Lcom/sec/terrace/browser/webapps/installer/TinApkInstaller$Listener;->onInstallApkFailure()V

    iget-object p1, p0, Lcom/sec/terrace/browser/webapps/installer/TinApkInstaller;->mWebApkInstallInfo:Lcom/sec/terrace/browser/webapps/installer/TinApkInstaller$WebApkInstallInfo;

    invoke-static {p1}, Lcom/sec/terrace/browser/webapps/installer/TinApkInstaller$WebApkInstallInfo;->a(Lcom/sec/terrace/browser/webapps/installer/TinApkInstaller$WebApkInstallInfo;)Ljava/io/File;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/sec/terrace/browser/webapps/installer/TinApkInstaller;->deleteFile(Ljava/io/File;)V

    goto :goto_0

    :pswitch_3
    iget-object p1, p0, Lcom/sec/terrace/browser/webapps/installer/TinApkInstaller;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/sec/terrace/browser/webapps/installer/TinApkInstaller;->mWebApkInstallInfo:Lcom/sec/terrace/browser/webapps/installer/TinApkInstaller$WebApkInstallInfo;

    invoke-static {p1, p0}, Lcom/sec/terrace/browser/webapps/notifications/TinWebApkNotificationHelper;->showInstallInProgressNotification(Landroid/content/Context;Lcom/sec/terrace/browser/webapps/notifications/TinWebApkNotificationHelper$WebApkNotificationInfo;)V

    goto :goto_0

    :pswitch_4
    iget-object p1, p0, Lcom/sec/terrace/browser/webapps/installer/TinApkInstaller;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/sec/terrace/browser/webapps/installer/TinApkInstaller;->mWebApkInstallInfo:Lcom/sec/terrace/browser/webapps/installer/TinApkInstaller$WebApkInstallInfo;

    invoke-static {p1, v0}, Lcom/sec/terrace/browser/webapps/notifications/TinWebApkNotificationHelper;->cancelNotification(Landroid/content/Context;Lcom/sec/terrace/browser/webapps/notifications/TinWebApkNotificationHelper$WebApkNotificationInfo;)V

    iget-object p1, p0, Lcom/sec/terrace/browser/webapps/installer/TinApkInstaller;->mWebApkInstallInfo:Lcom/sec/terrace/browser/webapps/installer/TinApkInstaller$WebApkInstallInfo;

    invoke-static {p1}, Lcom/sec/terrace/browser/webapps/installer/TinApkInstaller$WebApkInstallInfo;->a(Lcom/sec/terrace/browser/webapps/installer/TinApkInstaller$WebApkInstallInfo;)Ljava/io/File;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/sec/terrace/browser/webapps/installer/TinApkInstaller;->installApk(Ljava/io/File;)V

    goto :goto_0

    :pswitch_5
    iget-object p1, p0, Lcom/sec/terrace/browser/webapps/installer/TinApkInstaller;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/sec/terrace/browser/webapps/installer/TinApkInstaller;->mWebApkInstallInfo:Lcom/sec/terrace/browser/webapps/installer/TinApkInstaller$WebApkInstallInfo;

    invoke-static {p1, v0}, Lcom/sec/terrace/browser/webapps/notifications/TinWebApkNotificationHelper;->showDownloadInterruptedNotification(Landroid/content/Context;Lcom/sec/terrace/browser/webapps/notifications/TinWebApkNotificationHelper$WebApkNotificationInfo;)V

    iget-object p0, p0, Lcom/sec/terrace/browser/webapps/installer/TinApkInstaller;->mListener:Lcom/sec/terrace/browser/webapps/installer/TinApkInstaller$Listener;

    invoke-interface {p0}, Lcom/sec/terrace/browser/webapps/installer/TinApkInstaller$Listener;->onInstallApkFailure()V

    goto :goto_0

    :pswitch_6
    iget-object p1, p0, Lcom/sec/terrace/browser/webapps/installer/TinApkInstaller;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/sec/terrace/browser/webapps/installer/TinApkInstaller;->mWebApkInstallInfo:Lcom/sec/terrace/browser/webapps/installer/TinApkInstaller$WebApkInstallInfo;

    invoke-static {p1, v0}, Lcom/sec/terrace/browser/webapps/notifications/TinWebApkNotificationHelper;->showDownloadFailedNotification(Landroid/content/Context;Lcom/sec/terrace/browser/webapps/notifications/TinWebApkNotificationHelper$WebApkNotificationInfo;)V

    iget-object p0, p0, Lcom/sec/terrace/browser/webapps/installer/TinApkInstaller;->mListener:Lcom/sec/terrace/browser/webapps/installer/TinApkInstaller$Listener;

    invoke-interface {p0}, Lcom/sec/terrace/browser/webapps/installer/TinApkInstaller$Listener;->onInstallApkFailure()V

    goto :goto_0

    :pswitch_7
    iget-object p1, p0, Lcom/sec/terrace/browser/webapps/installer/TinApkInstaller;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/sec/terrace/browser/webapps/installer/TinApkInstaller;->mWebApkInstallInfo:Lcom/sec/terrace/browser/webapps/installer/TinApkInstaller$WebApkInstallInfo;

    invoke-static {p1, p0}, Lcom/sec/terrace/browser/webapps/notifications/TinWebApkNotificationHelper;->showDownloadInProgressNotification(Landroid/content/Context;Lcom/sec/terrace/browser/webapps/notifications/TinWebApkNotificationHelper$WebApkNotificationInfo;)V

    goto :goto_0

    :pswitch_8
    iget-object p1, p0, Lcom/sec/terrace/browser/webapps/installer/TinApkInstaller;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/sec/terrace/browser/webapps/installer/TinApkInstaller;->mWebApkInstallInfo:Lcom/sec/terrace/browser/webapps/installer/TinApkInstaller$WebApkInstallInfo;

    invoke-static {p1, v0}, Lcom/sec/terrace/browser/webapps/notifications/TinWebApkNotificationHelper;->cancelNotification(Landroid/content/Context;Lcom/sec/terrace/browser/webapps/notifications/TinWebApkNotificationHelper$WebApkNotificationInfo;)V

    iget-object p0, p0, Lcom/sec/terrace/browser/webapps/installer/TinApkInstaller;->mListener:Lcom/sec/terrace/browser/webapps/installer/TinApkInstaller$Listener;

    invoke-interface {p0}, Lcom/sec/terrace/browser/webapps/installer/TinApkInstaller$Listener;->onCancelled()V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private handleFailure()V
    .locals 0

    iget-object p0, p0, Lcom/sec/terrace/browser/webapps/installer/TinApkInstaller;->mListener:Lcom/sec/terrace/browser/webapps/installer/TinApkInstaller$Listener;

    invoke-interface {p0}, Lcom/sec/terrace/browser/webapps/installer/TinApkInstaller$Listener;->onInstallApkFailure()V

    return-void
.end method

.method private installApk(Ljava/io/File;)V
    .locals 2

    invoke-static {}, Lcom/sec/terrace/browser/webapps/installer/TinApkInstaller;->getExecutorService()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lcom/sec/terrace/browser/webapps/installer/a;

    invoke-direct {v1, p0, p1}, Lcom/sec/terrace/browser/webapps/installer/a;-><init>(Lcom/sec/terrace/browser/webapps/installer/TinApkInstaller;Ljava/io/File;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private internalInstallApk(Ljava/io/File;)V
    .locals 3

    sget-object v0, Lcom/sec/terrace/browser/webapps/installer/TinApkInstaller$WebApkInstallEvent;->INSTALLING:Lcom/sec/terrace/browser/webapps/installer/TinApkInstaller$WebApkInstallEvent;

    invoke-direct {p0, v0}, Lcom/sec/terrace/browser/webapps/installer/TinApkInstaller;->handleEvent(Lcom/sec/terrace/browser/webapps/installer/TinApkInstaller$WebApkInstallEvent;)V

    iget-object v0, p0, Lcom/sec/terrace/browser/webapps/installer/TinApkInstaller;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/sec/terrace/browser/webapps/installer/TinApkInstaller;->mWebApkInstallInfo:Lcom/sec/terrace/browser/webapps/installer/TinApkInstaller$WebApkInstallInfo;

    invoke-virtual {v1}, Lcom/sec/terrace/browser/webapps/installer/TinApkInstaller$WebApkInstallInfo;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p1

    new-instance v2, Lcom/sec/terrace/browser/webapps/installer/TinApkInstaller$2;

    invoke-direct {v2, p0}, Lcom/sec/terrace/browser/webapps/installer/TinApkInstaller$2;-><init>(Lcom/sec/terrace/browser/webapps/installer/TinApkInstaller;)V

    invoke-static {v0, v1, p1, v2}, Lcom/sec/terrace/browser/webapps/installer/TinApkSilentInstaller;->installPackage(Landroid/content/Context;Ljava/lang/String;Landroid/net/Uri;Lcom/sec/terrace/browser/webapps/installer/TinApkSilentInstaller$Listener;)V

    return-void
.end method

.method private synthetic lambda$installApk$0(Ljava/io/File;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/terrace/browser/webapps/installer/TinApkInstaller;->internalInstallApk(Ljava/io/File;)V

    return-void
.end method

.method private showStartingDownloadSnackbarIfNeeded()V
    .locals 2

    iget-boolean v0, p0, Lcom/sec/terrace/browser/webapps/installer/TinApkInstaller;->mIsUpdate:Z

    if-nez v0, :cond_3

    iget-object p0, p0, Lcom/sec/terrace/browser/webapps/installer/TinApkInstaller;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/sec/terrace/browser/webapps/notifications/TinWebApkNotificationHelper;->hasNotificationPermission(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/sec/terrace/TerraceApplicationStatus;->getLastTrackedFocusedActivity()Landroid/app/Activity;

    move-result-object p0

    if-nez p0, :cond_1

    return-void

    :cond_1
    invoke-static {}, Lcom/sec/terrace/TerraceApplicationStatus;->getLastTrackedFocusedActivity()Landroid/app/Activity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p0

    const v0, 0x1020002

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    if-nez p0, :cond_2

    return-void

    :cond_2
    sget v0, Lcom/sec/terrace/R$string;->webapk_snackbar_starting_download_without_notification:I

    const/4 v1, -0x1

    invoke-static {v0, v1, p0}, LH6/o;->h(IILandroid/view/View;)LH6/o;

    move-result-object p0

    invoke-virtual {p0}, LH6/o;->l()V

    :cond_3
    :goto_0
    return-void
.end method

.method private showToast(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/sec/terrace/browser/webapps/installer/TinApkInstaller;->mContext:Landroid/content/Context;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    iget-object p0, p0, Lcom/sec/terrace/browser/webapps/installer/TinApkInstaller;->mContext:Landroid/content/Context;

    sget v2, Lcom/sec/terrace/R$string;->webapk_toast_app_installed:I

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v1, p0, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x0

    invoke-static {v0, p0, p1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 2

    iget-object v0, p0, Lcom/sec/terrace/browser/webapps/installer/TinApkInstaller;->mStatus:Lcom/sec/terrace/browser/webapps/installer/TinApkInstaller$WebApkInstallEvent;

    sget-object v1, Lcom/sec/terrace/browser/webapps/installer/TinApkInstaller$WebApkInstallEvent;->DOWNLOADING:Lcom/sec/terrace/browser/webapps/installer/TinApkInstaller$WebApkInstallEvent;

    if-eq v0, v1, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/sec/terrace/browser/webapps/installer/TinApkInstaller;->mDownloader:Lcom/sec/terrace/browser/webapps/installer/TinApkDownloader;

    invoke-virtual {p0}, Lcom/sec/terrace/browser/webapps/installer/TinApkDownloader;->cancel()V

    return-void
.end method

.method public installApk()V
    .locals 4

    new-instance v0, Lcom/sec/terrace/browser/webapps/installer/TinApkDownloader;

    iget-object v1, p0, Lcom/sec/terrace/browser/webapps/installer/TinApkInstaller;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/sec/terrace/browser/webapps/installer/TinApkInstaller;->mWebApkInstallInfo:Lcom/sec/terrace/browser/webapps/installer/TinApkInstaller$WebApkInstallInfo;

    new-instance v3, Lcom/sec/terrace/browser/webapps/installer/TinApkInstaller$1;

    invoke-direct {v3, p0}, Lcom/sec/terrace/browser/webapps/installer/TinApkInstaller$1;-><init>(Lcom/sec/terrace/browser/webapps/installer/TinApkInstaller;)V

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/terrace/browser/webapps/installer/TinApkDownloader;-><init>(Landroid/content/Context;Lcom/sec/terrace/browser/webapps/installer/TinApkDownloader$WebApkDownloadInfo;Lcom/sec/terrace/browser/webapps/installer/TinApkDownloader$Listener;)V

    iput-object v0, p0, Lcom/sec/terrace/browser/webapps/installer/TinApkInstaller;->mDownloader:Lcom/sec/terrace/browser/webapps/installer/TinApkDownloader;

    :try_start_0
    sget-object v1, Lcom/sec/terrace/browser/webapps/installer/TinApkInstaller$WebApkInstallEvent;->DOWNLOADING:Lcom/sec/terrace/browser/webapps/installer/TinApkInstaller$WebApkInstallEvent;

    iput-object v1, p0, Lcom/sec/terrace/browser/webapps/installer/TinApkInstaller;->mStatus:Lcom/sec/terrace/browser/webapps/installer/TinApkInstaller$WebApkInstallEvent;

    invoke-static {}, Lcom/sec/terrace/browser/webapps/installer/TinApkInstaller;->getExecutorService()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "downloadAPK RejectedExecutionException: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TinApkInstaller"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/sec/terrace/browser/webapps/installer/TinApkInstaller;->handleFailure()V

    :goto_0
    return-void
.end method
