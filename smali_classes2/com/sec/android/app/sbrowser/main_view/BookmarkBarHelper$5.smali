.class Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/bookmark_bar/model/BookmarkBarContainerDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper$5;->this$0:Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isEditMode()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper$5;->this$0:Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;->G(Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;)Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->isEditMode()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public isMainViewShowing()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper$5;->this$0:Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;->o(Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;)Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->isMainViewShowing()Z

    move-result p0

    return p0
.end method

.method public isUrlEditMode()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper$5;->this$0:Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;->o(Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;)Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->isLocationBarEditMode()Z

    move-result p0

    return p0
.end method
