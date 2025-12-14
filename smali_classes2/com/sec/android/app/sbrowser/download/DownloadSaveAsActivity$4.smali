.class Lcom/sec/android/app/sbrowser/download/DownloadSaveAsActivity$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/download/DownloadSaveAsActivity;->initGlobal()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/download/DownloadSaveAsActivity;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/download/DownloadSaveAsActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/download/DownloadSaveAsActivity$4;->this$0:Lcom/sec/android/app/sbrowser/download/DownloadSaveAsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSecretModeChanged(ZLandroid/os/Bundle;)V
    .locals 0

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/download/DownloadSaveAsActivity$4;->this$0:Lcom/sec/android/app/sbrowser/download/DownloadSaveAsActivity;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/download/DownloadSaveAsActivity;->k(Lcom/sec/android/app/sbrowser/download/DownloadSaveAsActivity;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/download/DownloadSaveAsActivity$4;->this$0:Lcom/sec/android/app/sbrowser/download/DownloadSaveAsActivity;

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_0
    return-void
.end method
