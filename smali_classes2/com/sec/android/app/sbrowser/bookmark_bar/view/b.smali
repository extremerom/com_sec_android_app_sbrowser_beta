.class public final synthetic Lcom/sec/android/app/sbrowser/bookmark_bar/view/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# instance fields
.field public final synthetic a:Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarContainer;

.field public final synthetic b:Landroid/graphics/Point;


# direct methods
.method public synthetic constructor <init>(Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarContainer;Landroid/graphics/Point;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/view/b;->a:Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarContainer;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/view/b;->b:Landroid/graphics/Point;

    return-void
.end method


# virtual methods
.method public final onLongClick(Landroid/view/View;)Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/view/b;->b:Landroid/graphics/Point;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/view/b;->a:Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarContainer;

    invoke-static {p0, v0, p1}, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarContainer;->e(Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarContainer;Landroid/graphics/Point;Landroid/view/View;)Z

    move-result p0

    return p0
.end method
