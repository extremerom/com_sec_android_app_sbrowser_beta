.class Lcom/sec/terrace/browser/webapps/installer/TinApkSilentInstaller$PackageInstallerListener;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/terrace/browser/webapps/installer/TinApkSilentInstaller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PackageInstallerListener"
.end annotation


# instance fields
.field private final mListener:Lcom/sec/terrace/browser/webapps/installer/TinApkSilentInstaller$Listener;


# direct methods
.method private constructor <init>(Lcom/sec/terrace/browser/webapps/installer/TinApkSilentInstaller$Listener;)V
    .locals 0
    .param p1    # Lcom/sec/terrace/browser/webapps/installer/TinApkSilentInstaller$Listener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    iput-object p1, p0, Lcom/sec/terrace/browser/webapps/installer/TinApkSilentInstaller$PackageInstallerListener;->mListener:Lcom/sec/terrace/browser/webapps/installer/TinApkSilentInstaller$Listener;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/sec/terrace/browser/webapps/installer/TinApkSilentInstaller$Listener;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/terrace/browser/webapps/installer/TinApkSilentInstaller$PackageInstallerListener;-><init>(Lcom/sec/terrace/browser/webapps/installer/TinApkSilentInstaller$Listener;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6

    const-string v0, "onReceive"

    const-string v1, "TinApkSilentInstaller"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "android.content.pm.extra.STATUS"

    const/4 v2, 0x1

    invoke-virtual {p2, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const-string v2, "android.content.pm.extra.STATUS_MESSAGE"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "android.content.pm.extra.PACKAGE_NAME"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "PackageInstallerCallback: result : "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", message : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\r\npackageName : "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v4, v3, v1}, Lt/b;->B(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, -0x1

    if-eq v0, v2, :cond_1

    if-eqz v0, :cond_0

    iget-object p2, p0, Lcom/sec/terrace/browser/webapps/installer/TinApkSilentInstaller$PackageInstallerListener;->mListener:Lcom/sec/terrace/browser/webapps/installer/TinApkSilentInstaller$Listener;

    invoke-interface {p2}, Lcom/sec/terrace/browser/webapps/installer/TinApkSilentInstaller$Listener;->onFailure()V

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lcom/sec/terrace/browser/webapps/installer/TinApkSilentInstaller$PackageInstallerListener;->mListener:Lcom/sec/terrace/browser/webapps/installer/TinApkSilentInstaller$Listener;

    invoke-interface {p2}, Lcom/sec/terrace/browser/webapps/installer/TinApkSilentInstaller$Listener;->onSuccess()V

    goto :goto_0

    :cond_1
    :try_start_0
    const-string v0, "android.intent.extra.INTENT"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p2

    check-cast p2, Landroid/content/Intent;

    const v0, 0x10008000

    invoke-virtual {p2, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-virtual {p1, p2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    iget-object p2, p0, Lcom/sec/terrace/browser/webapps/installer/TinApkSilentInstaller$PackageInstallerListener;->mListener:Lcom/sec/terrace/browser/webapps/installer/TinApkSilentInstaller$Listener;

    invoke-interface {p2}, Lcom/sec/terrace/browser/webapps/installer/TinApkSilentInstaller$Listener;->onSuccess()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "startActivity Exception: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p2, v0, v1}, Landroidx/recyclerview/widget/P;->C(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/sec/terrace/browser/webapps/installer/TinApkSilentInstaller$PackageInstallerListener;->mListener:Lcom/sec/terrace/browser/webapps/installer/TinApkSilentInstaller$Listener;

    invoke-interface {p2}, Lcom/sec/terrace/browser/webapps/installer/TinApkSilentInstaller$Listener;->onFailure()V

    :goto_0
    invoke-virtual {p1, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method
