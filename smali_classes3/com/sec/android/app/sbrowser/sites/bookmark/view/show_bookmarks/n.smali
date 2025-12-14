.class public final synthetic Lcom/sec/android/app/sbrowser/sites/bookmark/view/show_bookmarks/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# instance fields
.field public final synthetic a:Lcom/sec/android/app/sbrowser/sites/bookmark/view/show_bookmarks/ShowBookmarksViewHelper;

.field public final synthetic b:Lcom/sec/android/app/sbrowser/sites/bookmark/view/show_bookmarks/ShowBookmarksViewAdapter;

.field public final synthetic c:Lcom/sec/android/app/sbrowser/sites/bookmark/model/show_bookmarks/ShowBookmarksViewListener;

.field public final synthetic d:I

.field public final synthetic e:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Lcom/sec/android/app/sbrowser/sites/bookmark/view/show_bookmarks/ShowBookmarksViewHelper;Lcom/sec/android/app/sbrowser/sites/bookmark/view/show_bookmarks/ShowBookmarksViewAdapter;Lcom/sec/android/app/sbrowser/sites/bookmark/model/show_bookmarks/ShowBookmarksViewListener;ILjava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/view/show_bookmarks/n;->a:Lcom/sec/android/app/sbrowser/sites/bookmark/view/show_bookmarks/ShowBookmarksViewHelper;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/view/show_bookmarks/n;->b:Lcom/sec/android/app/sbrowser/sites/bookmark/view/show_bookmarks/ShowBookmarksViewAdapter;

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/view/show_bookmarks/n;->c:Lcom/sec/android/app/sbrowser/sites/bookmark/model/show_bookmarks/ShowBookmarksViewListener;

    iput p4, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/view/show_bookmarks/n;->d:I

    iput-object p5, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/view/show_bookmarks/n;->e:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 6

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/view/show_bookmarks/n;->b:Lcom/sec/android/app/sbrowser/sites/bookmark/view/show_bookmarks/ShowBookmarksViewAdapter;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/view/show_bookmarks/n;->c:Lcom/sec/android/app/sbrowser/sites/bookmark/model/show_bookmarks/ShowBookmarksViewListener;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/view/show_bookmarks/n;->a:Lcom/sec/android/app/sbrowser/sites/bookmark/view/show_bookmarks/ShowBookmarksViewHelper;

    iget v3, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/view/show_bookmarks/n;->d:I

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/view/show_bookmarks/n;->e:Ljava/util/List;

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/sec/android/app/sbrowser/sites/bookmark/view/show_bookmarks/ShowBookmarksViewHelper;->b(Lcom/sec/android/app/sbrowser/sites/bookmark/view/show_bookmarks/ShowBookmarksViewHelper;Lcom/sec/android/app/sbrowser/sites/bookmark/view/show_bookmarks/ShowBookmarksViewAdapter;Lcom/sec/android/app/sbrowser/sites/bookmark/model/show_bookmarks/ShowBookmarksViewListener;ILjava/util/List;Landroid/view/MenuItem;)Z

    move-result p0

    return p0
.end method
