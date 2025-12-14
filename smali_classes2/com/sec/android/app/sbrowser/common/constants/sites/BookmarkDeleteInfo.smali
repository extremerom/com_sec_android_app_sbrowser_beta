.class public Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkDeleteInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public activityId:I

.field public isFolder:Z

.field public isSecretMode:Z

.field public isUrl:Z

.field public non_editable_count:I

.field public parentId:Ljava/lang/Long;

.field public parentName:Ljava/lang/String;

.field public success:Z

.field public success_count:I

.field public success_ids:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public total_count:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkDeleteInfo;->activityId:I

    return-void
.end method
