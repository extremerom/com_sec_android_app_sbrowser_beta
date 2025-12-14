.class public final synthetic Lcom/sec/android/app/sbrowser/sites/bookmark/view/show_bookmarks/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field public final synthetic a:Lcom/sec/android/app/sbrowser/sites/bookmark/view/show_bookmarks/ShowBookmarkViewHolder;

.field public final synthetic b:Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;

.field public final synthetic c:Landroid/view/View;


# direct methods
.method public synthetic constructor <init>(Landroid/view/View;Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;Lcom/sec/android/app/sbrowser/sites/bookmark/view/show_bookmarks/ShowBookmarkViewHolder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/view/show_bookmarks/f;->a:Lcom/sec/android/app/sbrowser/sites/bookmark/view/show_bookmarks/ShowBookmarkViewHolder;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/view/show_bookmarks/f;->b:Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/view/show_bookmarks/f;->c:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/view/show_bookmarks/f;->c:Landroid/view/View;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/view/show_bookmarks/f;->a:Lcom/sec/android/app/sbrowser/sites/bookmark/view/show_bookmarks/ShowBookmarkViewHolder;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/view/show_bookmarks/f;->b:Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;

    invoke-static {v1, p0, v0, p1, p2}, Lcom/sec/android/app/sbrowser/sites/bookmark/view/show_bookmarks/ShowBookmarkViewHolder;->b(Lcom/sec/android/app/sbrowser/sites/bookmark/view/show_bookmarks/ShowBookmarkViewHolder;Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;Landroid/view/View;Landroid/widget/CompoundButton;Z)V

    return-void
.end method
