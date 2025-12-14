.class Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarContainer$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/bookmark_bar/model/BookmarkButtonListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarContainer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarContainer;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarContainer;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarContainer$2;->this$0:Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarContainer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClickBookmarkButton(JZLjava/lang/String;Landroid/view/View;)V
    .locals 6

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarContainer$2;->this$0:Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarContainer;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarContainer;->i(Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarContainer;)Lcom/sec/android/app/sbrowser/bookmark_bar/model/BookmarkBarListener;

    move-result-object v0

    if-eqz v0, :cond_1

    const-wide/16 v0, -0x3e7

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarContainer$2;->this$0:Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarContainer;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarContainer;->i(Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarContainer;)Lcom/sec/android/app/sbrowser/bookmark_bar/model/BookmarkBarListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/bookmark_bar/model/BookmarkBarListener;->onAddBookmarkBarButtonClicked()V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarContainer$2;->this$0:Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarContainer;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarContainer;->i(Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarContainer;)Lcom/sec/android/app/sbrowser/bookmark_bar/model/BookmarkBarListener;

    move-result-object v0

    move-wide v1, p1

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/sec/android/app/sbrowser/bookmark_bar/model/BookmarkBarListener;->onBookmarkItemClicked(JZLjava/lang/String;Landroid/view/View;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onFocusOutTop()Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarContainer$2;->this$0:Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarContainer;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarContainer;->i(Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarContainer;)Lcom/sec/android/app/sbrowser/bookmark_bar/model/BookmarkBarListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarContainer$2;->this$0:Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarContainer;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarContainer;->i(Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarContainer;)Lcom/sec/android/app/sbrowser/bookmark_bar/model/BookmarkBarListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/bookmark_bar/model/BookmarkBarListener;->onFocusOutTop()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public onLongClickBookmarkButton(JZZLjava/lang/String;Landroid/view/View;)V
    .locals 7

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarContainer$2;->this$0:Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarContainer;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarContainer;->i(Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarContainer;)Lcom/sec/android/app/sbrowser/bookmark_bar/model/BookmarkBarListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarContainer$2;->this$0:Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarContainer;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarContainer;->i(Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarContainer;)Lcom/sec/android/app/sbrowser/bookmark_bar/model/BookmarkBarListener;

    move-result-object v0

    move-wide v1, p1

    move v3, p3

    move v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-interface/range {v0 .. v6}, Lcom/sec/android/app/sbrowser/bookmark_bar/model/BookmarkBarListener;->onBookmarkItemLongClicked(JZZLjava/lang/String;Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public onTouchBookmarkButton(JZLjava/lang/String;Landroid/view/View;)V
    .locals 6

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarContainer$2;->this$0:Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarContainer;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarContainer;->i(Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarContainer;)Lcom/sec/android/app/sbrowser/bookmark_bar/model/BookmarkBarListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarContainer$2;->this$0:Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarContainer;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarContainer;->i(Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarContainer;)Lcom/sec/android/app/sbrowser/bookmark_bar/model/BookmarkBarListener;

    move-result-object v0

    move-wide v1, p1

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/sec/android/app/sbrowser/bookmark_bar/model/BookmarkBarListener;->onBookmarkBarItemTouched(JZLjava/lang/String;Landroid/view/View;)V

    :cond_0
    return-void
.end method
