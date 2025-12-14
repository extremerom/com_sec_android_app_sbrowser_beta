.class public Lcom/sec/android/app/sbrowser/media/player/manager/MPManagerParams;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/media/player/manager/MPManagerParams$Builder;
    }
.end annotation


# instance fields
.field private final mActivity:Landroid/app/Activity;

.field private final mDelegate:Lcom/sec/android/app/sbrowser/media/player/manager/MPManager$Delegate;

.field private final mIsStandAlone:Z

.field private final mMediaInfo:Lcom/sec/android/app/sbrowser/media/common/MediaInfo;

.field private final mParentActivityId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;Lcom/sec/android/app/sbrowser/media/common/MediaInfo;ZLcom/sec/android/app/sbrowser/media/player/manager/MPManager$Delegate;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/media/player/manager/MPManagerParams;->mActivity:Landroid/app/Activity;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/media/player/manager/MPManagerParams;->mParentActivityId:Ljava/lang/String;

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/media/player/manager/MPManagerParams;->mMediaInfo:Lcom/sec/android/app/sbrowser/media/common/MediaInfo;

    iput-boolean p4, p0, Lcom/sec/android/app/sbrowser/media/player/manager/MPManagerParams;->mIsStandAlone:Z

    iput-object p5, p0, Lcom/sec/android/app/sbrowser/media/player/manager/MPManagerParams;->mDelegate:Lcom/sec/android/app/sbrowser/media/player/manager/MPManager$Delegate;

    return-void
.end method


# virtual methods
.method public getActivity()Landroid/app/Activity;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/player/manager/MPManagerParams;->mActivity:Landroid/app/Activity;

    return-object p0
.end method

.method public getDelegate()Lcom/sec/android/app/sbrowser/media/player/manager/MPManager$Delegate;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/player/manager/MPManagerParams;->mDelegate:Lcom/sec/android/app/sbrowser/media/player/manager/MPManager$Delegate;

    return-object p0
.end method

.method public getMediaInfo()Lcom/sec/android/app/sbrowser/media/common/MediaInfo;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/player/manager/MPManagerParams;->mMediaInfo:Lcom/sec/android/app/sbrowser/media/common/MediaInfo;

    return-object p0
.end method

.method public getParentActivityId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/player/manager/MPManagerParams;->mParentActivityId:Ljava/lang/String;

    return-object p0
.end method

.method public isIsStandAlone()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/media/player/manager/MPManagerParams;->mIsStandAlone:Z

    return p0
.end method
