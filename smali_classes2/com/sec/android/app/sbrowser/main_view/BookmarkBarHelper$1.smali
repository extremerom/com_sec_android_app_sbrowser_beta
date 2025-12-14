.class Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/common/model/bookmark_bar/BookmarkBarDragListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;->updateBookmarkDragController()V
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

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper$1;->this$0:Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationFinished()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper$1;->this$0:Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;->o(Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;)Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->getHideToolbarManager()Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;->postCaptureTopBar()V

    return-void
.end method

.method public onDragStart()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper$1;->this$0:Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;->o(Lcom/sec/android/app/sbrowser/main_view/BookmarkBarHelper;)Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->finishFindOnPage()Z

    return-void
.end method
