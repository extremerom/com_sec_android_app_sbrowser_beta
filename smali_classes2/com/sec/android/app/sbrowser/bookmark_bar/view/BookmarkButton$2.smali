.class Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkButton$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkButton;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkButton;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkButton$2;->this$0:Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkButton$2;->this$0:Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkButton;

    iget-boolean v1, v0, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkButton;->mShouldConsumeTouchEvent:Z

    if-eqz v1, :cond_0

    return-void

    :cond_0
    invoke-static {v0}, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkButton;->b(Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkButton;)Lcom/sec/android/app/sbrowser/bookmark_bar/model/BookmarkButtonListener;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkButton$2;->this$0:Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkButton;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkButton;->e(Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkButton;)Lcom/sec/android/app/sbrowser/bookmark_bar/model/BookmarkContainerDelegate;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkButton$2;->this$0:Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkButton;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkButton;->e(Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkButton;)Lcom/sec/android/app/sbrowser/bookmark_bar/model/BookmarkContainerDelegate;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/bookmark_bar/model/BookmarkContainerDelegate;->isBookmarkBarEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkButton$2;->this$0:Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkButton;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkButton;->b(Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkButton;)Lcom/sec/android/app/sbrowser/bookmark_bar/model/BookmarkButtonListener;

    move-result-object v1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkButton$2;->this$0:Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkButton;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkButton;->h(Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkButton;)J

    move-result-wide v2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkButton$2;->this$0:Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkButton;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkButton;->i(Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkButton;)Z

    move-result v4

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkButton$2;->this$0:Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkButton;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkButton;->j(Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkButton;)Ljava/lang/String;

    move-result-object v5

    move-object v6, p1

    invoke-interface/range {v1 .. v6}, Lcom/sec/android/app/sbrowser/bookmark_bar/model/BookmarkButtonListener;->onClickBookmarkButton(JZLjava/lang/String;Landroid/view/View;)V

    :cond_2
    :goto_0
    return-void
.end method
