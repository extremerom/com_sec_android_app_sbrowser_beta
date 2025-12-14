.class public final synthetic Lcom/sec/android/app/sbrowser/download/ui/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# instance fields
.field public final synthetic a:Lcom/sec/android/app/sbrowser/download/ui/DHMainView;

.field public final synthetic b:Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryItemWrapper;


# direct methods
.method public synthetic constructor <init>(Lcom/sec/android/app/sbrowser/download/ui/DHMainView;Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryItemWrapper;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/download/ui/j;->a:Lcom/sec/android/app/sbrowser/download/ui/DHMainView;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/download/ui/j;->b:Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryItemWrapper;

    return-void
.end method


# virtual methods
.method public final onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/ui/j;->a:Lcom/sec/android/app/sbrowser/download/ui/DHMainView;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/download/ui/j;->b:Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryItemWrapper;

    invoke-static {v0, p0, p1}, Lcom/sec/android/app/sbrowser/download/ui/DHMainView;->c(Lcom/sec/android/app/sbrowser/download/ui/DHMainView;Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryItemWrapper;Landroid/view/MenuItem;)Z

    move-result p0

    return p0
.end method
