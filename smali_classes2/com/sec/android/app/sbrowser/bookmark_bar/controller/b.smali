.class public final synthetic Lcom/sec/android/app/sbrowser/bookmark_bar/controller/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/bookmark_bar/model/DragPositionDelegate;
.implements Lcom/sec/android/app/sbrowser/bookmark_bar/model/BookmarkBarAnimationDelegate;


# instance fields
.field public final synthetic a:Lcom/sec/android/app/sbrowser/bookmark_bar/controller/BookmarkDragController$2;


# direct methods
.method public synthetic constructor <init>(Lcom/sec/android/app/sbrowser/bookmark_bar/controller/BookmarkDragController$2;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/controller/b;->a:Lcom/sec/android/app/sbrowser/bookmark_bar/controller/BookmarkDragController$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBookmarkButtonLocations()[Lcom/sec/android/app/sbrowser/bookmark_bar/model/BookmarkButtonLocation;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/controller/b;->a:Lcom/sec/android/app/sbrowser/bookmark_bar/controller/BookmarkDragController$2;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/bookmark_bar/controller/BookmarkDragController$2;->a(Lcom/sec/android/app/sbrowser/bookmark_bar/controller/BookmarkDragController$2;)[Lcom/sec/android/app/sbrowser/bookmark_bar/model/BookmarkButtonLocation;

    move-result-object p0

    return-object p0
.end method

.method public onPost()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/controller/b;->a:Lcom/sec/android/app/sbrowser/bookmark_bar/controller/BookmarkDragController$2;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/bookmark_bar/controller/BookmarkDragController$2;->b(Lcom/sec/android/app/sbrowser/bookmark_bar/controller/BookmarkDragController$2;)V

    return-void
.end method
