.class public final synthetic Lcom/sec/android/app/sbrowser/download/ui/s;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/window/OnBackInvokedCallback;


# instance fields
.field public final synthetic a:Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/download/ui/s;->a:Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryActivity;

    return-void
.end method


# virtual methods
.method public final onBackInvoked()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/download/ui/s;->a:Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryActivity;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryActivity;->onBackPressed()V

    return-void
.end method
