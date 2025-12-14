.class public Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkFolderNavigationItem;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private mId:J

.field private mIsMarked:Z

.field private mPid:J

.field private mTitle:Ljava/lang/String;


# direct methods
.method public constructor <init>(J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkFolderNavigationItem;->mId:J

    return-void
.end method

.method public constructor <init>(JJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkFolderNavigationItem;->mId:J

    iput-wide p3, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkFolderNavigationItem;->mPid:J

    return-void
.end method

.method public constructor <init>(JJLjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkFolderNavigationItem;->mId:J

    iput-wide p3, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkFolderNavigationItem;->mPid:J

    iput-object p5, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkFolderNavigationItem;->mTitle:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    instance-of v0, p1, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkFolderNavigationItem;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-wide v2, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkFolderNavigationItem;->mId:J

    check-cast p1, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkFolderNavigationItem;

    iget-wide p0, p1, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkFolderNavigationItem;->mId:J

    cmp-long p0, v2, p0

    if-nez p0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public getId()J
    .locals 2

    iget-wide v0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkFolderNavigationItem;->mId:J

    return-wide v0
.end method

.method public getPid()J
    .locals 2

    iget-wide v0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkFolderNavigationItem;->mPid:J

    return-wide v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkFolderNavigationItem;->mTitle:Ljava/lang/String;

    return-object p0
.end method

.method public hashCode()I
    .locals 3

    iget-wide v0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkFolderNavigationItem;->mPid:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iget-wide v1, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkFolderNavigationItem;->mId:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    filled-new-array {v0, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public isMarked()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkFolderNavigationItem;->mIsMarked:Z

    return p0
.end method

.method public setId(J)V
    .locals 0

    iput-wide p1, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkFolderNavigationItem;->mId:J

    return-void
.end method

.method public setMarked(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkFolderNavigationItem;->mIsMarked:Z

    return-void
.end method

.method public setPid(J)V
    .locals 0

    iput-wide p1, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkFolderNavigationItem;->mPid:J

    return-void
.end method
