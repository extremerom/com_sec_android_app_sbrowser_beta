.class Lcom/sec/android/app/sbrowser/download/DownloadNotificationService$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/terrace/TerraceHelper$TerraceHelperStartupCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/download/DownloadNotificationService;->handleDownloadOperation(Landroid/content/Intent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/download/DownloadNotificationService;

.field final synthetic val$entry:Lcom/sec/android/app/sbrowser/download/DownloadSharedPreferenceEntry;

.field final synthetic val$intent:Landroid/content/Intent;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/download/DownloadNotificationService;Lcom/sec/android/app/sbrowser/download/DownloadSharedPreferenceEntry;Landroid/content/Intent;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/download/DownloadNotificationService$1;->this$0:Lcom/sec/android/app/sbrowser/download/DownloadNotificationService;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/download/DownloadNotificationService$1;->val$entry:Lcom/sec/android/app/sbrowser/download/DownloadSharedPreferenceEntry;

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/download/DownloadNotificationService$1;->val$intent:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure()V
    .locals 0

    return-void
.end method

.method public onSuccess()V
    .locals 13

    const-string v0, "com.sec.android.app.sbrowser.beta.download.DOWNLOAD_CANCEL"

    const/4 v1, -0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/download/DownloadNotificationService$1;->val$entry:Lcom/sec/android/app/sbrowser/download/DownloadSharedPreferenceEntry;

    const-string v5, "com.sec.android.app.sbrowser.beta.download.DOWNLOAD_OPEN"

    const/4 v6, 0x1

    if-eqz v4, :cond_0

    iget v4, v4, Lcom/sec/android/app/sbrowser/download/DownloadSharedPreferenceEntry;->itemType:I

    goto :goto_0

    :cond_0
    iget-object v4, p0, Lcom/sec/android/app/sbrowser/download/DownloadNotificationService$1;->val$intent:Landroid/content/Intent;

    invoke-virtual {v4}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    move v4, v3

    goto :goto_0

    :cond_1
    move v4, v6

    :goto_0
    iget-object v7, p0, Lcom/sec/android/app/sbrowser/download/DownloadNotificationService$1;->val$intent:Landroid/content/Intent;

    invoke-virtual {v7}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    const/4 v8, 0x0

    if-eqz v7, :cond_2

    move-object v4, v8

    goto :goto_1

    :cond_2
    iget-object v7, p0, Lcom/sec/android/app/sbrowser/download/DownloadNotificationService$1;->this$0:Lcom/sec/android/app/sbrowser/download/DownloadNotificationService;

    invoke-virtual {v7, v4}, Lcom/sec/android/app/sbrowser/download/DownloadNotificationService;->getServiceDelegate(I)Lcom/sec/android/app/sbrowser/download/DownloadServiceDelegate;

    move-result-object v4

    :goto_1
    iget-object v7, p0, Lcom/sec/android/app/sbrowser/download/DownloadNotificationService$1;->val$entry:Lcom/sec/android/app/sbrowser/download/DownloadSharedPreferenceEntry;

    if-eqz v7, :cond_3

    iget v7, v7, Lcom/sec/android/app/sbrowser/download/DownloadSharedPreferenceEntry;->offTheRecord:I

    if-eqz v7, :cond_3

    move v7, v6

    goto :goto_2

    :cond_3
    move v7, v2

    :goto_2
    iget-object v9, p0, Lcom/sec/android/app/sbrowser/download/DownloadNotificationService$1;->val$intent:Landroid/content/Intent;

    invoke-virtual {v9}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v9}, Ljava/lang/String;->hashCode()I

    move-result v10

    sparse-switch v10, :sswitch_data_0

    :goto_3
    move v3, v1

    goto :goto_4

    :sswitch_0
    const-string v3, "com.sec.android.app.sbrowser.beta.download.DOWNLOAD_RESUME_ALL"

    invoke-virtual {v9, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    goto :goto_3

    :cond_4
    const/4 v3, 0x4

    goto :goto_4

    :sswitch_1
    const-string v3, "com.sec.android.app.sbrowser.beta.download.DOWNLOAD_PAUSE"

    invoke-virtual {v9, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    goto :goto_3

    :cond_5
    const/4 v3, 0x3

    goto :goto_4

    :sswitch_2
    const-string v10, "com.sec.android.app.sbrowser.beta.download.DOWNLOAD_RESUME"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_8

    goto :goto_3

    :sswitch_3
    const-string v3, "com.sec.android.app.sbrowser.beta.download.DOWNLOAD_FAIL_CANCEL"

    invoke-virtual {v9, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    goto :goto_3

    :cond_6
    move v3, v6

    goto :goto_4

    :sswitch_4
    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    goto :goto_3

    :cond_7
    move v3, v2

    :cond_8
    :goto_4
    packed-switch v3, :pswitch_data_0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unrecognized intent action."

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/download/DownloadNotificationService$1;->val$intent:Landroid/content/Intent;

    invoke-virtual {v3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "DownloadNotification"

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6

    :pswitch_0
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/download/DownloadNotificationService$1;->this$0:Lcom/sec/android/app/sbrowser/download/DownloadNotificationService;

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/download/DownloadNotificationService;->resumeAllPendingDownloads()V

    goto/16 :goto_6

    :pswitch_1
    iget-object v3, p0, Lcom/sec/android/app/sbrowser/download/DownloadNotificationService$1;->val$intent:Landroid/content/Intent;

    const-string v6, "IsPauseDownload"

    invoke-virtual {v3, v6, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_9

    const-string v2, "8785"

    invoke-static {v2}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLogWithoutScreenID(Ljava/lang/String;)V

    :cond_9
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/download/DownloadNotificationService$1;->val$entry:Lcom/sec/android/app/sbrowser/download/DownloadSharedPreferenceEntry;

    iget-object v2, v2, Lcom/sec/android/app/sbrowser/download/DownloadSharedPreferenceEntry;->downloadGuid:Ljava/lang/String;

    invoke-interface {v4, v2, v7}, Lcom/sec/android/app/sbrowser/download/DownloadServiceDelegate;->pauseDownload(Ljava/lang/String;Z)V

    goto :goto_6

    :pswitch_2
    iget-object v3, p0, Lcom/sec/android/app/sbrowser/download/DownloadNotificationService$1;->val$intent:Landroid/content/Intent;

    const-string v7, "IsResumeDownload"

    invoke-virtual {v3, v7, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_a

    const-string v2, "8787"

    invoke-static {v2}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLogWithoutScreenID(Ljava/lang/String;)V

    :cond_a
    iget-object v7, p0, Lcom/sec/android/app/sbrowser/download/DownloadNotificationService$1;->this$0:Lcom/sec/android/app/sbrowser/download/DownloadNotificationService;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/download/DownloadNotificationService$1;->val$entry:Lcom/sec/android/app/sbrowser/download/DownloadSharedPreferenceEntry;

    iget-object v8, v2, Lcom/sec/android/app/sbrowser/download/DownloadSharedPreferenceEntry;->downloadGuid:Ljava/lang/String;

    iget-object v9, v2, Lcom/sec/android/app/sbrowser/download/DownloadSharedPreferenceEntry;->fileName:Ljava/lang/String;

    iget v10, v2, Lcom/sec/android/app/sbrowser/download/DownloadSharedPreferenceEntry;->offTheRecord:I

    iget-boolean v11, v2, Lcom/sec/android/app/sbrowser/download/DownloadSharedPreferenceEntry;->canDownloadWhileMetered:Z

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/download/DownloadSharedPreferenceEntry;->isOfflinePage()Z

    move-result v12

    invoke-static/range {v7 .. v12}, Lcom/sec/android/app/sbrowser/download/DownloadNotificationService;->b(Lcom/sec/android/app/sbrowser/download/DownloadNotificationService;Ljava/lang/String;Ljava/lang/String;IZZ)V

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/download/DownloadNotificationService$1;->val$entry:Lcom/sec/android/app/sbrowser/download/DownloadSharedPreferenceEntry;

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/download/DownloadSharedPreferenceEntry;->buildDownloadItem()Lcom/sec/terrace/browser/download/TerraceDownloadItem;

    move-result-object v2

    invoke-interface {v4, v2, v6}, Lcom/sec/android/app/sbrowser/download/DownloadServiceDelegate;->resumeDownload(Lcom/sec/terrace/browser/download/TerraceDownloadItem;Z)V

    goto :goto_6

    :pswitch_3
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/download/DownloadNotificationService$1;->val$entry:Lcom/sec/android/app/sbrowser/download/DownloadSharedPreferenceEntry;

    iget-object v2, v2, Lcom/sec/android/app/sbrowser/download/DownloadSharedPreferenceEntry;->downloadGuid:Ljava/lang/String;

    invoke-interface {v4, v2, v7, v8}, Lcom/sec/android/app/sbrowser/download/DownloadServiceDelegate;->removeDownload(Ljava/lang/String;ZLjava/lang/String;)V

    goto :goto_6

    :pswitch_4
    iget-object v3, p0, Lcom/sec/android/app/sbrowser/download/DownloadNotificationService$1;->val$intent:Landroid/content/Intent;

    const-string v8, "IsCancelDownload"

    invoke-virtual {v3, v8, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_b

    const-string v2, "8784"

    invoke-static {v2}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLogWithoutScreenID(Ljava/lang/String;)V

    :cond_b
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/download/DownloadNotificationService$1;->this$0:Lcom/sec/android/app/sbrowser/download/DownloadNotificationService;

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/download/DownloadNotificationService$1;->val$entry:Lcom/sec/android/app/sbrowser/download/DownloadSharedPreferenceEntry;

    iget v8, v3, Lcom/sec/android/app/sbrowser/download/DownloadSharedPreferenceEntry;->notificationId:I

    iget-object v3, v3, Lcom/sec/android/app/sbrowser/download/DownloadSharedPreferenceEntry;->downloadGuid:Ljava/lang/String;

    invoke-virtual {v2, v8, v3}, Lcom/sec/android/app/sbrowser/download/DownloadNotificationService;->cancelNotification(ILjava/lang/String;)V

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/download/DownloadNotificationService$1;->val$entry:Lcom/sec/android/app/sbrowser/download/DownloadSharedPreferenceEntry;

    iget-object v2, v2, Lcom/sec/android/app/sbrowser/download/DownloadSharedPreferenceEntry;->downloadGuid:Ljava/lang/String;

    invoke-interface {v4, v2, v7, v6}, Lcom/sec/android/app/sbrowser/download/DownloadServiceDelegate;->cancelDownload(Ljava/lang/String;ZZ)V

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/download/DownloadNotificationService$1;->this$0:Lcom/sec/android/app/sbrowser/download/DownloadNotificationService;

    invoke-static {v2}, Lcom/sec/android/app/sbrowser/download/DownloadNotificationService;->a(Lcom/sec/android/app/sbrowser/download/DownloadNotificationService;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/app/sbrowser/download/DownloadNotificationService$Observer;

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/download/DownloadNotificationService$1;->val$entry:Lcom/sec/android/app/sbrowser/download/DownloadSharedPreferenceEntry;

    iget-object v6, v6, Lcom/sec/android/app/sbrowser/download/DownloadSharedPreferenceEntry;->downloadGuid:Ljava/lang/String;

    invoke-interface {v3, v6}, Lcom/sec/android/app/sbrowser/download/DownloadNotificationService$Observer;->onDownloadCanceled(Ljava/lang/String;)V

    goto :goto_5

    :cond_c
    :goto_6
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/download/DownloadNotificationService$1;->val$intent:Landroid/content/Intent;

    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_d

    invoke-interface {v4}, Lcom/sec/android/app/sbrowser/download/DownloadServiceDelegate;->destroyServiceDelegate()V

    :cond_d
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/download/DownloadNotificationService$1;->this$0:Lcom/sec/android/app/sbrowser/download/DownloadNotificationService;

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/download/DownloadNotificationService$1;->val$intent:Landroid/content/Intent;

    invoke-virtual {v3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/download/DownloadNotificationService$1;->val$entry:Lcom/sec/android/app/sbrowser/download/DownloadSharedPreferenceEntry;

    iget v1, p0, Lcom/sec/android/app/sbrowser/download/DownloadSharedPreferenceEntry;->notificationId:I

    :cond_e
    invoke-virtual {v2, v1}, Lcom/sec/android/app/sbrowser/download/DownloadNotificationService;->hideSummaryNotificationIfNecessary(I)Z

    return-void

    :sswitch_data_0
    .sparse-switch
        -0x23bbacda -> :sswitch_4
        -0x1aaef271 -> :sswitch_3
        -0x9e81327 -> :sswitch_2
        -0x6fc856 -> :sswitch_1
        0x1c60051b -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
