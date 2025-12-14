.class public final synthetic Lcom/sec/android/app/sbrowser/sites/bookmark/view/show_bookmarks/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/sec/android/app/sbrowser/sites/bookmark/view/show_bookmarks/ShowBookmarkDndHandler$1;

.field public final synthetic b:Landroid/view/View;

.field public final synthetic c:Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;


# direct methods
.method public synthetic constructor <init>(Lcom/sec/android/app/sbrowser/sites/bookmark/view/show_bookmarks/ShowBookmarkDndHandler$1;Landroid/view/View;Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/view/show_bookmarks/d;->a:Lcom/sec/android/app/sbrowser/sites/bookmark/view/show_bookmarks/ShowBookmarkDndHandler$1;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/view/show_bookmarks/d;->b:Landroid/view/View;

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/view/show_bookmarks/d;->c:Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/view/show_bookmarks/d;->c:Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/view/show_bookmarks/d;->a:Lcom/sec/android/app/sbrowser/sites/bookmark/view/show_bookmarks/ShowBookmarkDndHandler$1;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/view/show_bookmarks/d;->b:Landroid/view/View;

    invoke-static {v1, p0, v0}, Lcom/sec/android/app/sbrowser/sites/bookmark/view/show_bookmarks/ShowBookmarkDndHandler$1;->a(Lcom/sec/android/app/sbrowser/sites/bookmark/view/show_bookmarks/ShowBookmarkDndHandler$1;Landroid/view/View;Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;)V

    return-void
.end method
