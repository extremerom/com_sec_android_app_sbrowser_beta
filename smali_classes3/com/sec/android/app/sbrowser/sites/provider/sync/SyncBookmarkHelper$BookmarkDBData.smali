.class Lcom/sec/android/app/sbrowser/sites/provider/sync/SyncBookmarkHelper$BookmarkDBData;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/sites/provider/sync/SyncBookmarkHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BookmarkDBData"
.end annotation


# instance fields
.field mCreated:J

.field mDBPosition:I

.field mID:J

.field mIsFolder:Z

.field mParentId:J

.field mPosition:I

.field mSync5:J

.field mTitle:Ljava/lang/String;

.field mUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>(IJJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/sec/android/app/sbrowser/sites/provider/sync/SyncBookmarkHelper$BookmarkDBData;->mPosition:I

    iput p1, p0, Lcom/sec/android/app/sbrowser/sites/provider/sync/SyncBookmarkHelper$BookmarkDBData;->mDBPosition:I

    iput-wide p2, p0, Lcom/sec/android/app/sbrowser/sites/provider/sync/SyncBookmarkHelper$BookmarkDBData;->mCreated:J

    iput-wide p4, p0, Lcom/sec/android/app/sbrowser/sites/provider/sync/SyncBookmarkHelper$BookmarkDBData;->mID:J

    return-void
.end method

.method public constructor <init>(JLjava/lang/String;Ljava/lang/String;ZJJJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/sec/android/app/sbrowser/sites/provider/sync/SyncBookmarkHelper$BookmarkDBData;->mID:J

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/sites/provider/sync/SyncBookmarkHelper$BookmarkDBData;->mTitle:Ljava/lang/String;

    iput-object p4, p0, Lcom/sec/android/app/sbrowser/sites/provider/sync/SyncBookmarkHelper$BookmarkDBData;->mUrl:Ljava/lang/String;

    iput-boolean p5, p0, Lcom/sec/android/app/sbrowser/sites/provider/sync/SyncBookmarkHelper$BookmarkDBData;->mIsFolder:Z

    iput-wide p6, p0, Lcom/sec/android/app/sbrowser/sites/provider/sync/SyncBookmarkHelper$BookmarkDBData;->mParentId:J

    iput-wide p8, p0, Lcom/sec/android/app/sbrowser/sites/provider/sync/SyncBookmarkHelper$BookmarkDBData;->mSync5:J

    iput-wide p10, p0, Lcom/sec/android/app/sbrowser/sites/provider/sync/SyncBookmarkHelper$BookmarkDBData;->mCreated:J

    return-void
.end method
