.class public Lcom/sec/android/app/sbrowser/bookmark_bar/model/BookmarkDragItem;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private mBookmarkButtonIndex:I

.field private mDraggingView:Landroid/view/View;

.field private mIsBookmarkItem:Z

.field private mIsMovingLeft:Z

.field private mTitle:Ljava/lang/String;

.field private mUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/model/BookmarkDragItem;->mIsBookmarkItem:Z

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/model/BookmarkDragItem;->mIsMovingLeft:Z

    return-void
.end method


# virtual methods
.method public getBookmarkButtonIndex()I
    .locals 0

    iget p0, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/model/BookmarkDragItem;->mBookmarkButtonIndex:I

    return p0
.end method

.method public getDraggingView()Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/model/BookmarkDragItem;->mDraggingView:Landroid/view/View;

    return-object p0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/model/BookmarkDragItem;->mTitle:Ljava/lang/String;

    return-object p0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/model/BookmarkDragItem;->mUrl:Ljava/lang/String;

    return-object p0
.end method

.method public isBookmarkItem()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/model/BookmarkDragItem;->mIsBookmarkItem:Z

    return p0
.end method

.method public setBookmarkButtonIndex(I)V
    .locals 0

    iput p1, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/model/BookmarkDragItem;->mBookmarkButtonIndex:I

    return-void
.end method

.method public setBookmarkItem(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/model/BookmarkDragItem;->mIsBookmarkItem:Z

    return-void
.end method

.method public setDraggingView(Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/model/BookmarkDragItem;->mDraggingView:Landroid/view/View;

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/model/BookmarkDragItem;->mTitle:Ljava/lang/String;

    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/model/BookmarkDragItem;->mUrl:Ljava/lang/String;

    return-void
.end method
