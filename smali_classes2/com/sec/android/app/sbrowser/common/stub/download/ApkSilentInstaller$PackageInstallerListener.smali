.class Lcom/sec/android/app/sbrowser/common/stub/download/ApkSilentInstaller$PackageInstallerListener;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/common/stub/download/ApkSilentInstaller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PackageInstallerListener"
.end annotation


# instance fields
.field private mCallback:Lcom/sec/android/app/sbrowser/common/stub/download/ApkSilentInstaller$PackageInstallCallback;

.field private mPackageName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/common/stub/download/ApkSilentInstaller$PackageInstallCallback;Ljava/lang/String;)V
    .locals 0
    .param p1    # Lcom/sec/android/app/sbrowser/common/stub/download/ApkSilentInstaller$PackageInstallCallback;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/common/stub/download/ApkSilentInstaller$PackageInstallerListener;->mCallback:Lcom/sec/android/app/sbrowser/common/stub/download/ApkSilentInstaller$PackageInstallCallback;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/common/stub/download/ApkSilentInstaller$PackageInstallerListener;->mPackageName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6

    const-string v0, "android.content.pm.extra.STATUS"

    const/4 v1, 0x1

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onReceive, silent install complete, result: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Stub.ApkSilentInstaller"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "android.content.pm.extra.STATUS_MESSAGE"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "android.content.pm.extra.PACKAGE_NAME"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/common/stub/download/ApkSilentInstaller$PackageInstallerListener;->mPackageName:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/common/stub/download/ApkSilentInstaller$PackageInstallerListener;->mPackageName:Ljava/lang/String;

    invoke-static {v4, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    :cond_0
    const-string p0, "PackageInstallCallback: ignoring intent message"

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    const-string v5, "PackageInstallCallback: result : "

    if-eqz v4, :cond_2

    const-string v1, ", package name is null!"

    invoke-static {v0, v5, v1, v2}, Landroidx/recyclerview/widget/P;->j(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", message : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\r\npackageName : "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v4, v3, v2}, Lt/b;->B(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    const/4 v1, -0x1

    if-eq v0, v1, :cond_4

    if-eqz v0, :cond_3

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/common/stub/download/ApkSilentInstaller$PackageInstallerListener;->mCallback:Lcom/sec/android/app/sbrowser/common/stub/download/ApkSilentInstaller$PackageInstallCallback;

    invoke-interface {p2, v3}, Lcom/sec/android/app/sbrowser/common/stub/download/ApkSilentInstaller$PackageInstallCallback;->onFailure(Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    iget-object p2, p0, Lcom/sec/android/app/sbrowser/common/stub/download/ApkSilentInstaller$PackageInstallerListener;->mCallback:Lcom/sec/android/app/sbrowser/common/stub/download/ApkSilentInstaller$PackageInstallCallback;

    invoke-interface {p2, v3}, Lcom/sec/android/app/sbrowser/common/stub/download/ApkSilentInstaller$PackageInstallCallback;->onSuccess(Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    :try_start_0
    const-string v0, "android.intent.extra.INTENT"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p2

    check-cast p2, Landroid/content/Intent;

    const v0, 0x10008000

    invoke-virtual {p2, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-virtual {p1, p2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/common/stub/download/ApkSilentInstaller$PackageInstallerListener;->mCallback:Lcom/sec/android/app/sbrowser/common/stub/download/ApkSilentInstaller$PackageInstallCallback;

    invoke-interface {p2, v3}, Lcom/sec/android/app/sbrowser/common/stub/download/ApkSilentInstaller$PackageInstallCallback;->onSuccess(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/stub/download/ApkSilentInstaller$PackageInstallerListener;->mCallback:Lcom/sec/android/app/sbrowser/common/stub/download/ApkSilentInstaller$PackageInstallCallback;

    invoke-interface {v0, v3}, Lcom/sec/android/app/sbrowser/common/stub/download/ApkSilentInstaller$PackageInstallCallback;->onFailure(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "startActivity Exception: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p2, v0, v2}, Landroidx/recyclerview/widget/P;->C(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :goto_1
    invoke-virtual {p1, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method
