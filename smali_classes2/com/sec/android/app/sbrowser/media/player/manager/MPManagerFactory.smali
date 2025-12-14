.class public Lcom/sec/android/app/sbrowser/media/player/manager/MPManagerFactory;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static createMPManager(Lcom/sec/android/app/sbrowser/media/player/manager/MPManagerParams;)Lcom/sec/android/app/sbrowser/media/player/manager/MPManager;
    .locals 5

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/player/manager/MPManagerParams;->getParentActivityId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/media/common/MediaUtils;->isValidParentActivityId(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Lcom/sec/terrace/base/AssertUtil;->assertTrue(Z)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/player/manager/MPManagerParams;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/player/manager/MPManagerParams;->getParentActivityId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/player/manager/MPManagerParams;->getMediaInfo()Lcom/sec/android/app/sbrowser/media/common/MediaInfo;

    move-result-object v2

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/player/manager/MPManagerParams;->isIsStandAlone()Z

    move-result v3

    new-instance v4, Lcom/sec/android/app/sbrowser/media/player/video/MPTerraceVideoView;

    invoke-direct {v4, v0, v2}, Lcom/sec/android/app/sbrowser/media/player/video/MPTerraceVideoView;-><init>(Landroid/content/Context;Lcom/sec/android/app/sbrowser/media/common/MediaInfo;)V

    if-eqz v3, :cond_0

    new-instance v4, Lcom/sec/android/app/sbrowser/media/player/video/MPStandaloneVideoView;

    invoke-direct {v4, v0, v2, v1}, Lcom/sec/android/app/sbrowser/media/player/video/MPStandaloneVideoView;-><init>(Landroid/content/Context;Lcom/sec/android/app/sbrowser/media/common/MediaInfo;Ljava/lang/String;)V

    :cond_0
    new-instance v2, Lcom/sec/android/app/sbrowser/media/player/manager/MPManager;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/player/manager/MPManagerParams;->getDelegate()Lcom/sec/android/app/sbrowser/media/player/manager/MPManager$Delegate;

    move-result-object p0

    invoke-direct {v2, v0, v1, v4, p0}, Lcom/sec/android/app/sbrowser/media/player/manager/MPManager;-><init>(Landroid/app/Activity;Ljava/lang/String;Lcom/sec/android/app/sbrowser/media/player/video/IMPVideoView;Lcom/sec/android/app/sbrowser/media/player/manager/MPManager$Delegate;)V

    return-object v2
.end method
