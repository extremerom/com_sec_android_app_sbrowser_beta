.class Lcom/sec/android/app/sbrowser/sites/provider/sync/SBrowserSyncDbUtility$PermanentFolderData;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/sites/provider/sync/SBrowserSyncDbUtility;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PermanentFolderData"
.end annotation


# instance fields
.field mCreated:J

.field mID:J

.field mIsFolder:Z

.field mSync4:Ljava/lang/String;

.field mSync5:J


# direct methods
.method public constructor <init>(JZLjava/lang/String;JJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/sec/android/app/sbrowser/sites/provider/sync/SBrowserSyncDbUtility$PermanentFolderData;->mID:J

    iput-boolean p3, p0, Lcom/sec/android/app/sbrowser/sites/provider/sync/SBrowserSyncDbUtility$PermanentFolderData;->mIsFolder:Z

    iput-object p4, p0, Lcom/sec/android/app/sbrowser/sites/provider/sync/SBrowserSyncDbUtility$PermanentFolderData;->mSync4:Ljava/lang/String;

    iput-wide p5, p0, Lcom/sec/android/app/sbrowser/sites/provider/sync/SBrowserSyncDbUtility$PermanentFolderData;->mSync5:J

    iput-wide p7, p0, Lcom/sec/android/app/sbrowser/sites/provider/sync/SBrowserSyncDbUtility$PermanentFolderData;->mCreated:J

    return-void
.end method
