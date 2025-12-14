.class public Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkPCSyncInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public mPCBookmarkCount:I

.field public mPCSyncList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkPCSyncInfo;->mPCBookmarkCount:I

    return-void
.end method
