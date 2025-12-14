.class Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/Bookmarks$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/Bookmarks;->bookmarkAction(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/Bookmarks$AddBookmarkAction;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$title:Ljava/lang/String;

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/Bookmarks$4;->val$activity:Landroid/app/Activity;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/Bookmarks$4;->val$url:Ljava/lang/String;

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/Bookmarks$4;->val$title:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/Bookmarks$4;->val$activity:Landroid/app/Activity;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/Bookmarks$4;->val$url:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/Bookmarks;->isUrlBookmarked(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/Bookmarks$4;->val$url:Ljava/lang/String;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/Bookmarks$4;->val$title:Ljava/lang/String;

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/Bookmarks$4;->val$activity:Landroid/app/Activity;

    invoke-static {v4}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModelHelper;->getBookmarkContentUri(Landroid/app/Activity;)Landroid/net/Uri;

    move-result-object v5

    const/4 v9, 0x0

    const/4 v10, 0x1

    const/4 v3, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, -0x1

    invoke-static/range {v1 .. v10}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModificationUtil;->add(Ljava/lang/String;Ljava/lang/String;Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;Landroid/app/Activity;Landroid/net/Uri;ZZIZZ)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/Bookmarks$4;->val$activity:Landroid/app/Activity;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/Bookmarks$4;->val$url:Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkModificationUtil;->deleteBookmark(Landroid/app/Activity;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
