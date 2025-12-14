.class Lcom/sec/terrace/browser/webapps/installer/TinApkInstaller$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/terrace/browser/webapps/installer/TinApkDownloader$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/terrace/browser/webapps/installer/TinApkInstaller;->installApk()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/terrace/browser/webapps/installer/TinApkInstaller;


# direct methods
.method public constructor <init>(Lcom/sec/terrace/browser/webapps/installer/TinApkInstaller;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/terrace/browser/webapps/installer/TinApkInstaller$1;->this$0:Lcom/sec/terrace/browser/webapps/installer/TinApkInstaller;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDownloadApkFailure()V
    .locals 1

    iget-object p0, p0, Lcom/sec/terrace/browser/webapps/installer/TinApkInstaller$1;->this$0:Lcom/sec/terrace/browser/webapps/installer/TinApkInstaller;

    sget-object v0, Lcom/sec/terrace/browser/webapps/installer/TinApkInstaller$WebApkInstallEvent;->DOWNLOAD_FAILED:Lcom/sec/terrace/browser/webapps/installer/TinApkInstaller$WebApkInstallEvent;

    invoke-static {p0, v0}, Lcom/sec/terrace/browser/webapps/installer/TinApkInstaller;->d(Lcom/sec/terrace/browser/webapps/installer/TinApkInstaller;Lcom/sec/terrace/browser/webapps/installer/TinApkInstaller$WebApkInstallEvent;)V

    return-void
.end method

.method public onDownloadApkProgressUpdate(I)V
    .locals 1

    iget-object v0, p0, Lcom/sec/terrace/browser/webapps/installer/TinApkInstaller$1;->this$0:Lcom/sec/terrace/browser/webapps/installer/TinApkInstaller;

    invoke-static {v0}, Lcom/sec/terrace/browser/webapps/installer/TinApkInstaller;->c(Lcom/sec/terrace/browser/webapps/installer/TinApkInstaller;)Lcom/sec/terrace/browser/webapps/installer/TinApkInstaller$WebApkInstallInfo;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/sec/terrace/browser/webapps/installer/TinApkInstaller$WebApkInstallInfo;->c(Lcom/sec/terrace/browser/webapps/installer/TinApkInstaller$WebApkInstallInfo;I)V

    iget-object p0, p0, Lcom/sec/terrace/browser/webapps/installer/TinApkInstaller$1;->this$0:Lcom/sec/terrace/browser/webapps/installer/TinApkInstaller;

    sget-object p1, Lcom/sec/terrace/browser/webapps/installer/TinApkInstaller$WebApkInstallEvent;->DOWNLOADING:Lcom/sec/terrace/browser/webapps/installer/TinApkInstaller$WebApkInstallEvent;

    invoke-static {p0, p1}, Lcom/sec/terrace/browser/webapps/installer/TinApkInstaller;->d(Lcom/sec/terrace/browser/webapps/installer/TinApkInstaller;Lcom/sec/terrace/browser/webapps/installer/TinApkInstaller$WebApkInstallEvent;)V

    return-void
.end method

.method public onDownloadApkSuccess(Ljava/io/File;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/terrace/browser/webapps/installer/TinApkInstaller$1;->this$0:Lcom/sec/terrace/browser/webapps/installer/TinApkInstaller;

    invoke-static {v0}, Lcom/sec/terrace/browser/webapps/installer/TinApkInstaller;->c(Lcom/sec/terrace/browser/webapps/installer/TinApkInstaller;)Lcom/sec/terrace/browser/webapps/installer/TinApkInstaller$WebApkInstallInfo;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/sec/terrace/browser/webapps/installer/TinApkInstaller$WebApkInstallInfo;->b(Lcom/sec/terrace/browser/webapps/installer/TinApkInstaller$WebApkInstallInfo;Ljava/io/File;)V

    iget-object p0, p0, Lcom/sec/terrace/browser/webapps/installer/TinApkInstaller$1;->this$0:Lcom/sec/terrace/browser/webapps/installer/TinApkInstaller;

    sget-object p1, Lcom/sec/terrace/browser/webapps/installer/TinApkInstaller$WebApkInstallEvent;->DOWNLOAD_COMPLETED:Lcom/sec/terrace/browser/webapps/installer/TinApkInstaller$WebApkInstallEvent;

    invoke-static {p0, p1}, Lcom/sec/terrace/browser/webapps/installer/TinApkInstaller;->d(Lcom/sec/terrace/browser/webapps/installer/TinApkInstaller;Lcom/sec/terrace/browser/webapps/installer/TinApkInstaller$WebApkInstallEvent;)V

    return-void
.end method

.method public onDownloadCanceled()V
    .locals 1

    iget-object p0, p0, Lcom/sec/terrace/browser/webapps/installer/TinApkInstaller$1;->this$0:Lcom/sec/terrace/browser/webapps/installer/TinApkInstaller;

    sget-object v0, Lcom/sec/terrace/browser/webapps/installer/TinApkInstaller$WebApkInstallEvent;->DOWNLOAD_CANCELLED:Lcom/sec/terrace/browser/webapps/installer/TinApkInstaller$WebApkInstallEvent;

    invoke-static {p0, v0}, Lcom/sec/terrace/browser/webapps/installer/TinApkInstaller;->d(Lcom/sec/terrace/browser/webapps/installer/TinApkInstaller;Lcom/sec/terrace/browser/webapps/installer/TinApkInstaller$WebApkInstallEvent;)V

    return-void
.end method

.method public onDownloadInterrupted()V
    .locals 1

    iget-object p0, p0, Lcom/sec/terrace/browser/webapps/installer/TinApkInstaller$1;->this$0:Lcom/sec/terrace/browser/webapps/installer/TinApkInstaller;

    sget-object v0, Lcom/sec/terrace/browser/webapps/installer/TinApkInstaller$WebApkInstallEvent;->DOWNLOAD_INTERRUPTED:Lcom/sec/terrace/browser/webapps/installer/TinApkInstaller$WebApkInstallEvent;

    invoke-static {p0, v0}, Lcom/sec/terrace/browser/webapps/installer/TinApkInstaller;->d(Lcom/sec/terrace/browser/webapps/installer/TinApkInstaller;Lcom/sec/terrace/browser/webapps/installer/TinApkInstaller$WebApkInstallEvent;)V

    return-void
.end method

.method public onDownloadStarted()V
    .locals 0

    iget-object p0, p0, Lcom/sec/terrace/browser/webapps/installer/TinApkInstaller$1;->this$0:Lcom/sec/terrace/browser/webapps/installer/TinApkInstaller;

    invoke-static {p0}, Lcom/sec/terrace/browser/webapps/installer/TinApkInstaller;->e(Lcom/sec/terrace/browser/webapps/installer/TinApkInstaller;)V

    return-void
.end method
