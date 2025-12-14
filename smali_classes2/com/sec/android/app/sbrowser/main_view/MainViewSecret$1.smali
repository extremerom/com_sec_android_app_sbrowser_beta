.class Lcom/sec/android/app/sbrowser/main_view/MainViewSecret$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/main_view/MainViewSecret;->getSecretModeMangerListener()Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager$Listener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewSecret;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/main_view/MainViewSecret;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewSecret$1;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewSecret;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSecretModeChanged(ZLandroid/os/Bundle;)V
    .locals 2

    const-string v0, "onSecretModeChanged enable:"

    const-string v1, "MainViewSecret"

    invoke-static {v0, v1, p1}, Lw2/j;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewSecret$1;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewSecret;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/main_view/MainViewSecret;->a(Lcom/sec/android/app/sbrowser/main_view/MainViewSecret;)Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->applySecretModeStatus(ZLandroid/os/Bundle;)V

    if-nez p1, :cond_0

    invoke-static {}, Lcom/sec/android/app/sbrowser/download/DownloadHandler;->getInstance()Lcom/sec/android/app/sbrowser/download/DownloadHandler;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/download/DownloadHandler;->destroyDialogIfExisted()V

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewSecret$1;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewSecret;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewSecret;->b(Lcom/sec/android/app/sbrowser/main_view/MainViewSecret;)V

    return-void
.end method

.method public onSecureDataUnlocked()V
    .locals 2

    const-string v0, "MainViewSecret"

    const-string v1, "onSecureDataUnlocked"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewSecret$1;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewSecret;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewSecret;->a(Lcom/sec/android/app/sbrowser/main_view/MainViewSecret;)Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->applySecureDataUnlockedStatus()V

    return-void
.end method
