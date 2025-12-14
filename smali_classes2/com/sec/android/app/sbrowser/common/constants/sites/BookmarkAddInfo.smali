.class public Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkAddInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public activityId:I

.field public from:I

.field public isCrossApp:Z

.field public isDND:Z

.field public item:Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkItem;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkAddInfo;->activityId:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkAddInfo;->isCrossApp:Z

    return-void
.end method
