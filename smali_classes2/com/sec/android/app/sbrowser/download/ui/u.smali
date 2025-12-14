.class public final synthetic Lcom/sec/android/app/sbrowser/download/ui/u;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lt/w0;
.implements Lt/v0;
.implements Lcom/sec/android/app/sbrowser/download/ui/RenameDownloadDialog$Callback;


# instance fields
.field public final synthetic a:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/download/ui/u;->a:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lt/x0;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/download/ui/u;->a:Ljava/lang/Object;

    check-cast p0, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUi;

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUi;->h(Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUi;Lt/x0;)V

    return-void
.end method

.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/download/ui/u;->a:Ljava/lang/Object;

    check-cast p0, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUi;

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUi;->i(Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUi;Landroid/view/MenuItem;)Z

    move-result p0

    return p0
.end method

.method public onResult(I)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/download/ui/u;->a:Ljava/lang/Object;

    check-cast p0, Lcom/sec/android/app/sbrowser/download/ui/RenameDownloadDialog;

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/download/ui/RenameDownloadDialog;->c(Lcom/sec/android/app/sbrowser/download/ui/RenameDownloadDialog;I)V

    return-void
.end method
