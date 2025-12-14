.class public final synthetic Lcom/sec/android/app/sbrowser/bookmark_bar/view/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field public final synthetic a:Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarContainer;

.field public final synthetic b:Landroid/graphics/Point;


# direct methods
.method public synthetic constructor <init>(Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarContainer;Landroid/graphics/Point;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/view/c;->a:Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarContainer;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/view/c;->b:Landroid/graphics/Point;

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/view/c;->b:Landroid/graphics/Point;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/view/c;->a:Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarContainer;

    invoke-static {p0, v0, p1, p2}, Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarContainer;->a(Lcom/sec/android/app/sbrowser/bookmark_bar/view/BookmarkBarContainer;Landroid/graphics/Point;Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method
