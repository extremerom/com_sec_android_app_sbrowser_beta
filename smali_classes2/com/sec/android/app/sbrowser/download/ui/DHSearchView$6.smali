.class Lcom/sec/android/app/sbrowser/download/ui/DHSearchView$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/download/ui/DHSearchView;->showSearchView(Landroid/view/View;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/download/ui/DHSearchView;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/download/ui/DHSearchView;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/download/ui/DHSearchView$6;->this$0:Lcom/sec/android/app/sbrowser/download/ui/DHSearchView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 0

    const/16 p1, 0x14

    if-eq p2, p1, :cond_0

    const/16 p1, 0x3d

    if-eq p2, p1, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/download/ui/DHSearchView$6;->this$0:Lcom/sec/android/app/sbrowser/download/ui/DHSearchView;

    iget-object p1, p1, Lcom/sec/android/app/sbrowser/download/ui/DHSearchView;->mDownloadHistoryUi:Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUiController;

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUiController;->getEmptyScrollView()Landroidx/core/widget/NestedScrollView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHSearchView$6;->this$0:Lcom/sec/android/app/sbrowser/download/ui/DHSearchView;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHSearchView;->mDownloadHistoryUi:Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUiController;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUiController;->getEmptyScrollView()Landroidx/core/widget/NestedScrollView;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->requestFocus()Z

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHSearchView$6;->this$0:Lcom/sec/android/app/sbrowser/download/ui/DHSearchView;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHSearchView;->mDownloadHistoryUi:Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUiController;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUiController;->getDownloadHistoryListView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->requestFocus()Z

    :goto_0
    const/4 p0, 0x1

    return p0

    :cond_2
    :goto_1
    const/4 p0, 0x0

    return p0
.end method
