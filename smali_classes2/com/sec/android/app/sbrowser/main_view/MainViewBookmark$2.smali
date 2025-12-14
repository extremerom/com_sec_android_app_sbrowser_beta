.class Lcom/sec/android/app/sbrowser/main_view/MainViewBookmark$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/common/model/sites/DeleteBookmarkSnackbarDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/main_view/MainViewBookmark;->showMultiBookmarkDeletedSnackBar(Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkDeleteInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewBookmark;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/main_view/MainViewBookmark;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewBookmark$2;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewBookmark;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public checkPreCondition()Z
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewBookmark$2;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewBookmark;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/main_view/MainViewBookmark;->m(Lcom/sec/android/app/sbrowser/main_view/MainViewBookmark;)Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "si__MainViewBookmark"

    if-nez v0, :cond_0

    const-string p0, "showMultiBookmarkDeletedSnackBar, currentTab == null"

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewBookmark$2;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewBookmark;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewBookmark;->j(Lcom/sec/android/app/sbrowser/main_view/MainViewBookmark;)Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->isMainViewShowing()Z

    move-result p0

    if-nez p0, :cond_1

    const-string p0, "Cannot show MultiBookmarkSnackBar in MainActivity : MainView is not showing"

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public isIncognito()Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewBookmark$2;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewBookmark;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/main_view/MainViewBookmark;->m(Lcom/sec/android/app/sbrowser/main_view/MainViewBookmark;)Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewBookmark$2;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewBookmark;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewBookmark;->m(Lcom/sec/android/app/sbrowser/main_view/MainViewBookmark;)Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->isIncognito()Z

    move-result p0

    return p0
.end method

.method public onDestroy()V
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewBookmark$2;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewBookmark;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/sec/android/app/sbrowser/main_view/MainViewBookmark;->l(Lcom/sec/android/app/sbrowser/main_view/MainViewBookmark;LH6/o;)V

    return-void
.end method

.method public updateBookmarkSnackbar(LH6/o;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewBookmark$2;->this$0:Lcom/sec/android/app/sbrowser/main_view/MainViewBookmark;

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/main_view/MainViewBookmark;->l(Lcom/sec/android/app/sbrowser/main_view/MainViewBookmark;LH6/o;)V

    return-void
.end method
