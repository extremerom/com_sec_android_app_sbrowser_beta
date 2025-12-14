.class public final synthetic Lcom/sec/android/app/sbrowser/sites/bookmark/view/show_bookmarks/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnHoverListener;


# instance fields
.field public final synthetic a:Lcom/sec/android/app/sbrowser/sites/bookmark/view/show_bookmarks/ShowBookmarkViewHolder;


# direct methods
.method public synthetic constructor <init>(Lcom/sec/android/app/sbrowser/sites/bookmark/view/show_bookmarks/ShowBookmarkViewHolder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/view/show_bookmarks/j;->a:Lcom/sec/android/app/sbrowser/sites/bookmark/view/show_bookmarks/ShowBookmarkViewHolder;

    return-void
.end method


# virtual methods
.method public final onHover(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/view/show_bookmarks/j;->a:Lcom/sec/android/app/sbrowser/sites/bookmark/view/show_bookmarks/ShowBookmarkViewHolder;

    invoke-static {p0, p1, p2}, Lcom/sec/android/app/sbrowser/sites/bookmark/view/show_bookmarks/ShowBookmarksViewAdapter;->a(Lcom/sec/android/app/sbrowser/sites/bookmark/view/show_bookmarks/ShowBookmarkViewHolder;Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method
