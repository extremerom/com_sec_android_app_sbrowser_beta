.class Lcom/sec/android/app/sbrowser/download/SystemDownloadNotifier$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/download/SystemDownloadNotifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/download/SystemDownloadNotifier;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/download/SystemDownloadNotifier;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/download/SystemDownloadNotifier$1;->this$0:Lcom/sec/android/app/sbrowser/download/SystemDownloadNotifier;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1

    instance-of v0, p2, Lcom/sec/android/app/sbrowser/download/DownloadNotificationService$LocalBinder;

    if-nez v0, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    const-string p2, "Not from DownloadNotificationService, do not connect. Component name: "

    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "DownloadNotifier"

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/download/SystemDownloadNotifier$1;->this$0:Lcom/sec/android/app/sbrowser/download/SystemDownloadNotifier;

    check-cast p2, Lcom/sec/android/app/sbrowser/download/DownloadNotificationService$LocalBinder;

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/download/DownloadNotificationService$LocalBinder;->getService()Lcom/sec/android/app/sbrowser/download/DownloadNotificationService;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/sec/android/app/sbrowser/download/SystemDownloadNotifier;->b(Lcom/sec/android/app/sbrowser/download/SystemDownloadNotifier;Lcom/sec/android/app/sbrowser/download/DownloadNotificationService;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/download/SystemDownloadNotifier$1;->this$0:Lcom/sec/android/app/sbrowser/download/SystemDownloadNotifier;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/download/SystemDownloadNotifier;->a(Lcom/sec/android/app/sbrowser/download/SystemDownloadNotifier;)Lcom/sec/android/app/sbrowser/download/DownloadNotificationService;

    move-result-object p1

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/download/SystemDownloadNotifier$1;->this$0:Lcom/sec/android/app/sbrowser/download/SystemDownloadNotifier;

    invoke-virtual {p1, p2}, Lcom/sec/android/app/sbrowser/download/DownloadNotificationService;->addObserver(Lcom/sec/android/app/sbrowser/download/DownloadNotificationService$Observer;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/download/SystemDownloadNotifier$1;->this$0:Lcom/sec/android/app/sbrowser/download/SystemDownloadNotifier;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/download/SystemDownloadNotifier;->handlePendingNotifications()V

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0

    return-void
.end method
