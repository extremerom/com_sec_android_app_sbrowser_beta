.class Lcom/sec/android/app/sbrowser/download/ui/DHSearchView$4;
.super Landroidx/recyclerview/widget/O0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/download/ui/DHSearchView;
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

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/download/ui/DHSearchView$4;->this$0:Lcom/sec/android/app/sbrowser/download/ui/DHSearchView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V
    .locals 0

    const/4 p1, 0x1

    if-ne p2, p1, :cond_0

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/download/ui/DHSearchView$4;->this$0:Lcom/sec/android/app/sbrowser/download/ui/DHSearchView;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/download/ui/DHSearchView;->j(Lcom/sec/android/app/sbrowser/download/ui/DHSearchView;)Lcom/sec/android/app/sbrowser/download/ui/recent_search/RecentSearchFragment;

    move-result-object p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/download/ui/DHSearchView$4;->this$0:Lcom/sec/android/app/sbrowser/download/ui/DHSearchView;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/download/ui/DHSearchView;->k(Lcom/sec/android/app/sbrowser/download/ui/DHSearchView;)Landroid/widget/EditText;

    move-result-object p1

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/utils/ImeUtil;->hideKeyboard(Landroid/view/View;)Z

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHSearchView$4;->this$0:Lcom/sec/android/app/sbrowser/download/ui/DHSearchView;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHSearchView;->mDownloadHistoryUi:Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUiController;

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUiController;->notifyAppBarHeightChangedWithDelay(Ljava/lang/Boolean;)V

    :cond_0
    return-void
.end method

.method public onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Landroidx/recyclerview/widget/O0;->onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V

    return-void
.end method
