.class public final synthetic Lcom/sec/android/app/sbrowser/download/ui/r;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager$Listener;


# instance fields
.field public final synthetic a:Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/download/ui/r;->a:Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryActivity;

    return-void
.end method


# virtual methods
.method public final onSecretModeChanged(ZLandroid/os/Bundle;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/download/ui/r;->a:Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryActivity;

    invoke-static {p0, p1, p2}, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryActivity;->g(Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryActivity;ZLandroid/os/Bundle;)V

    return-void
.end method
