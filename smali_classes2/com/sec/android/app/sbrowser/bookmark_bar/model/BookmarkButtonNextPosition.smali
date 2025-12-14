.class public Lcom/sec/android/app/sbrowser/bookmark_bar/model/BookmarkButtonNextPosition;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private mIsFolder:Z

.field private mPosition:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/model/BookmarkButtonNextPosition;->mPosition:I

    return-void
.end method


# virtual methods
.method public getPosition()I
    .locals 0

    iget p0, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/model/BookmarkButtonNextPosition;->mPosition:I

    return p0
.end method

.method public isFolder()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/model/BookmarkButtonNextPosition;->mIsFolder:Z

    return p0
.end method

.method public setPosition(I)V
    .locals 0

    iput p1, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/model/BookmarkButtonNextPosition;->mPosition:I

    return-void
.end method
