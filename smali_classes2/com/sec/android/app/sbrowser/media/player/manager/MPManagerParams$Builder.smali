.class public final Lcom/sec/android/app/sbrowser/media/player/manager/MPManagerParams$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/media/player/manager/MPManagerParams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mDelegate:Lcom/sec/android/app/sbrowser/media/player/manager/MPManager$Delegate;

.field private mIsStandAlone:Z

.field private mMediaInfo:Lcom/sec/android/app/sbrowser/media/common/MediaInfo;

.field private mParentActivityId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Lcom/sec/android/app/sbrowser/media/player/manager/MPManagerParams;
    .locals 7

    new-instance v6, Lcom/sec/android/app/sbrowser/media/player/manager/MPManagerParams;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/media/player/manager/MPManagerParams$Builder;->mActivity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/media/player/manager/MPManagerParams$Builder;->mParentActivityId:Ljava/lang/String;

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/media/player/manager/MPManagerParams$Builder;->mMediaInfo:Lcom/sec/android/app/sbrowser/media/common/MediaInfo;

    iget-boolean v4, p0, Lcom/sec/android/app/sbrowser/media/player/manager/MPManagerParams$Builder;->mIsStandAlone:Z

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/media/player/manager/MPManagerParams$Builder;->mDelegate:Lcom/sec/android/app/sbrowser/media/player/manager/MPManager$Delegate;

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/sbrowser/media/player/manager/MPManagerParams;-><init>(Landroid/app/Activity;Ljava/lang/String;Lcom/sec/android/app/sbrowser/media/common/MediaInfo;ZLcom/sec/android/app/sbrowser/media/player/manager/MPManager$Delegate;)V

    return-object v6
.end method

.method public setActivity(Landroid/app/Activity;)Lcom/sec/android/app/sbrowser/media/player/manager/MPManagerParams$Builder;
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/media/player/manager/MPManagerParams$Builder;->mActivity:Landroid/app/Activity;

    return-object p0
.end method

.method public setDelegate(Lcom/sec/android/app/sbrowser/media/player/manager/MPManager$Delegate;)Lcom/sec/android/app/sbrowser/media/player/manager/MPManagerParams$Builder;
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/media/player/manager/MPManagerParams$Builder;->mDelegate:Lcom/sec/android/app/sbrowser/media/player/manager/MPManager$Delegate;

    return-object p0
.end method

.method public setIsStandAlone(Z)Lcom/sec/android/app/sbrowser/media/player/manager/MPManagerParams$Builder;
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/media/player/manager/MPManagerParams$Builder;->mIsStandAlone:Z

    return-object p0
.end method

.method public setMediaInfo(Lcom/sec/android/app/sbrowser/media/common/MediaInfo;)Lcom/sec/android/app/sbrowser/media/player/manager/MPManagerParams$Builder;
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/media/player/manager/MPManagerParams$Builder;->mMediaInfo:Lcom/sec/android/app/sbrowser/media/common/MediaInfo;

    return-object p0
.end method

.method public setParentActivityId(Ljava/lang/String;)Lcom/sec/android/app/sbrowser/media/player/manager/MPManagerParams$Builder;
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/media/player/manager/MPManagerParams$Builder;->mParentActivityId:Ljava/lang/String;

    return-object p0
.end method
