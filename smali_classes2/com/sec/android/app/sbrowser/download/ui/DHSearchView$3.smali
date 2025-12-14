.class Lcom/sec/android/app/sbrowser/download/ui/DHSearchView$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnKeyListener;


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

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/download/ui/DHSearchView$3;->this$0:Lcom/sec/android/app/sbrowser/download/ui/DHSearchView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Landroid/view/View;)V
    .locals 0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/download/ui/DHSearchView$3;->lambda$onKey$0(Landroid/view/View;)V

    return-void
.end method

.method private static synthetic lambda$onKey$0(Landroid/view/View;)V
    .locals 1

    invoke-virtual {p0}, Landroid/view/View;->hasFocus()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->requestFocus()Z

    :cond_0
    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 2

    const/16 v0, 0x14

    const/4 v1, 0x1

    if-eq p2, v0, :cond_1

    const/16 v0, 0x42

    if-eq p2, v0, :cond_0

    const/16 v0, 0xa0

    if-eq p2, v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result p2

    if-ne p2, v1, :cond_3

    new-instance p2, Lcom/sec/android/app/sbrowser/download/ui/p;

    const/4 p3, 0x0

    invoke-direct {p2, p3, p1}, Lcom/sec/android/app/sbrowser/download/ui/p;-><init>(ILjava/lang/Object;)V

    const-wide/16 v0, 0x64

    invoke-virtual {p1, p2, v0, v1}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHSearchView$3;->this$0:Lcom/sec/android/app/sbrowser/download/ui/DHSearchView;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/download/ui/DHSearchView;->addRecentSearchAndDismissKeyBoard()V

    goto :goto_1

    :cond_1
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/download/ui/DHSearchView$3;->this$0:Lcom/sec/android/app/sbrowser/download/ui/DHSearchView;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/download/ui/DHSearchView;->j(Lcom/sec/android/app/sbrowser/download/ui/DHSearchView;)Lcom/sec/android/app/sbrowser/download/ui/recent_search/RecentSearchFragment;

    move-result-object p1

    if-nez p1, :cond_2

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHSearchView$3;->this$0:Lcom/sec/android/app/sbrowser/download/ui/DHSearchView;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHSearchView;->mDownloadHistoryUi:Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUiController;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUiController;->getDownloadHistoryListView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->requestFocus()Z

    goto :goto_0

    :cond_2
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHSearchView$3;->this$0:Lcom/sec/android/app/sbrowser/download/ui/DHSearchView;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/download/ui/DHSearchView;->j(Lcom/sec/android/app/sbrowser/download/ui/DHSearchView;)Lcom/sec/android/app/sbrowser/download/ui/recent_search/RecentSearchFragment;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/download/ui/recent_search/RecentSearchFragment;->requestFocus()Z

    :goto_0
    return v1

    :cond_3
    :goto_1
    const/4 p0, 0x0

    return p0
.end method
