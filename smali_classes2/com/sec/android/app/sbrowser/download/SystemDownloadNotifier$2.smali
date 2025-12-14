.class Lcom/sec/android/app/sbrowser/download/SystemDownloadNotifier$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/download/SystemDownloadNotifier;->onSuccessNotificationShown(Lcom/sec/android/app/sbrowser/download/SystemDownloadNotifier$PendingNotificationInfo;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/download/SystemDownloadNotifier;

.field final synthetic val$notificationId:I

.field final synthetic val$notificationInfo:Lcom/sec/android/app/sbrowser/download/SystemDownloadNotifier$PendingNotificationInfo;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/download/SystemDownloadNotifier;Lcom/sec/android/app/sbrowser/download/SystemDownloadNotifier$PendingNotificationInfo;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/download/SystemDownloadNotifier$2;->this$0:Lcom/sec/android/app/sbrowser/download/SystemDownloadNotifier;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/download/SystemDownloadNotifier$2;->val$notificationInfo:Lcom/sec/android/app/sbrowser/download/SystemDownloadNotifier$PendingNotificationInfo;

    iput p3, p0, Lcom/sec/android/app/sbrowser/download/SystemDownloadNotifier$2;->val$notificationId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    invoke-static {}, Lcom/sec/android/app/sbrowser/download/DownloadManagerService;->getDownloadManagerService()Lcom/sec/android/app/sbrowser/download/DownloadManagerService;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/download/SystemDownloadNotifier$2;->val$notificationInfo:Lcom/sec/android/app/sbrowser/download/SystemDownloadNotifier$PendingNotificationInfo;

    iget-object v2, v1, Lcom/sec/android/app/sbrowser/download/SystemDownloadNotifier$PendingNotificationInfo;->downloadInfo:Lcom/sec/terrace/browser/download/TerraceDownloadInfo;

    iget-boolean v3, v1, Lcom/sec/android/app/sbrowser/download/SystemDownloadNotifier$PendingNotificationInfo;->canResolve:Z

    iget p0, p0, Lcom/sec/android/app/sbrowser/download/SystemDownloadNotifier$2;->val$notificationId:I

    iget-wide v4, v1, Lcom/sec/android/app/sbrowser/download/SystemDownloadNotifier$PendingNotificationInfo;->systemDownloadId:J

    move-object v1, v2

    move v2, v3

    move v3, p0

    invoke-virtual/range {v0 .. v5}, Lcom/sec/android/app/sbrowser/download/DownloadManagerService;->onSuccessNotificationShown(Lcom/sec/terrace/browser/download/TerraceDownloadInfo;ZIJ)V

    return-void
.end method
