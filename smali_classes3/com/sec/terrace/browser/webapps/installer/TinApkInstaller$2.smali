.class Lcom/sec/terrace/browser/webapps/installer/TinApkInstaller$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/terrace/browser/webapps/installer/TinApkSilentInstaller$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/terrace/browser/webapps/installer/TinApkInstaller;->internalInstallApk(Ljava/io/File;)V
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

    iput-object p1, p0, Lcom/sec/terrace/browser/webapps/installer/TinApkInstaller$2;->this$0:Lcom/sec/terrace/browser/webapps/installer/TinApkInstaller;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure()V
    .locals 2

    const-string v0, "TinApkInstaller"

    const-string v1, "onFailure"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/sec/terrace/browser/webapps/installer/TinApkInstaller$2;->this$0:Lcom/sec/terrace/browser/webapps/installer/TinApkInstaller;

    sget-object v0, Lcom/sec/terrace/browser/webapps/installer/TinApkInstaller$WebApkInstallEvent;->INSTALL_FAILED:Lcom/sec/terrace/browser/webapps/installer/TinApkInstaller$WebApkInstallEvent;

    invoke-static {p0, v0}, Lcom/sec/terrace/browser/webapps/installer/TinApkInstaller;->d(Lcom/sec/terrace/browser/webapps/installer/TinApkInstaller;Lcom/sec/terrace/browser/webapps/installer/TinApkInstaller$WebApkInstallEvent;)V

    return-void
.end method

.method public onSuccess()V
    .locals 2

    const-string v0, "TinApkInstaller"

    const-string v1, "onSuccess"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/sec/terrace/browser/webapps/installer/TinApkInstaller$WebApkInstallEvent;->INSTALL_COMPLETED:Lcom/sec/terrace/browser/webapps/installer/TinApkInstaller$WebApkInstallEvent;

    iget-object v1, p0, Lcom/sec/terrace/browser/webapps/installer/TinApkInstaller$2;->this$0:Lcom/sec/terrace/browser/webapps/installer/TinApkInstaller;

    invoke-static {v1}, Lcom/sec/terrace/browser/webapps/installer/TinApkInstaller;->b(Lcom/sec/terrace/browser/webapps/installer/TinApkInstaller;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v0, Lcom/sec/terrace/browser/webapps/installer/TinApkInstaller$WebApkInstallEvent;->UPDATE_COMPLETED:Lcom/sec/terrace/browser/webapps/installer/TinApkInstaller$WebApkInstallEvent;

    :cond_0
    iget-object p0, p0, Lcom/sec/terrace/browser/webapps/installer/TinApkInstaller$2;->this$0:Lcom/sec/terrace/browser/webapps/installer/TinApkInstaller;

    invoke-static {p0, v0}, Lcom/sec/terrace/browser/webapps/installer/TinApkInstaller;->d(Lcom/sec/terrace/browser/webapps/installer/TinApkInstaller;Lcom/sec/terrace/browser/webapps/installer/TinApkInstaller$WebApkInstallEvent;)V

    return-void
.end method
