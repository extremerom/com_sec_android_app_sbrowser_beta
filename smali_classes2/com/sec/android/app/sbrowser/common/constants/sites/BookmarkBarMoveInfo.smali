.class public Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkBarMoveInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkBarMoveInfo$MovedType;
    }
.end annotation


# instance fields
.field public activityId:I

.field public movedType:Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkBarMoveInfo$MovedType;

.field public parentID:Ljava/lang/Long;

.field public success:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkBarMoveInfo;->success:Ljava/util/ArrayList;

    sget-object v0, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkBarMoveInfo$MovedType;->MOVED:Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkBarMoveInfo$MovedType;

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkBarMoveInfo;->movedType:Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkBarMoveInfo$MovedType;

    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkBarMoveInfo;->activityId:I

    return-void
.end method
