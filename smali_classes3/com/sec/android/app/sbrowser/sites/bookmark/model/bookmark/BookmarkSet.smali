.class public Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkSet;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public mFolder:I

.field public mParentId:Ljava/lang/Long;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkSet;->mParentId:Ljava/lang/Long;

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkSet;->mFolder:I

    return-void
.end method
