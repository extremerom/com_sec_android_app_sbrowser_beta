.class public Lcom/sec/android/app/sbrowser/bookmark_bar/model/BookmarkButtonLocation;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private mIsFolder:Z

.field private mLeftX:I

.field private mRightX:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getMiddlePoint()I
    .locals 1

    iget v0, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/model/BookmarkButtonLocation;->mLeftX:I

    iget p0, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/model/BookmarkButtonLocation;->mRightX:I

    add-int/2addr v0, p0

    div-int/lit8 v0, v0, 0x2

    return v0
.end method

.method public setFolder(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/model/BookmarkButtonLocation;->mIsFolder:Z

    return-void
.end method

.method public setLeftX(I)V
    .locals 0

    iput p1, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/model/BookmarkButtonLocation;->mLeftX:I

    return-void
.end method

.method public setRightX(I)V
    .locals 0

    iput p1, p0, Lcom/sec/android/app/sbrowser/bookmark_bar/model/BookmarkButtonLocation;->mRightX:I

    return-void
.end method
