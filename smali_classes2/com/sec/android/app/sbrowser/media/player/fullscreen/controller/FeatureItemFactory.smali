.class Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/FeatureItemFactory;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static create(ILandroid/view/View;Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;Landroid/os/Handler;)Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IFeatureItem;
    .locals 0

    packed-switch p0, :pswitch_data_0

    invoke-static {}, Lcom/sec/terrace/base/AssertUtil;->assertNotReached()V

    const/4 p0, 0x0

    return-object p0

    :pswitch_0
    new-instance p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/FeatureClosedCaptions;

    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/FeatureClosedCaptions;-><init>(Landroid/view/View;Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;Landroid/os/Handler;)V

    return-object p0

    :pswitch_1
    new-instance p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/FeatureLiveText;

    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/FeatureLiveText;-><init>(Landroid/view/View;Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;Landroid/os/Handler;)V

    return-object p0

    :pswitch_2
    new-instance p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/FeatureMore;

    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/FeatureMore;-><init>(Landroid/view/View;Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;Landroid/os/Handler;)V

    return-object p0

    :pswitch_3
    new-instance p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/FeatureSmartView;

    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/FeatureSmartView;-><init>(Landroid/view/View;Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;Landroid/os/Handler;)V

    return-object p0

    :pswitch_4
    new-instance p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/FeaturePlaybackSpeed;

    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/FeaturePlaybackSpeed;-><init>(Landroid/view/View;Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;Landroid/os/Handler;)V

    return-object p0

    :pswitch_5
    new-instance p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/FeatureLock;

    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/FeatureLock;-><init>(Landroid/view/View;Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;Landroid/os/Handler;)V

    return-object p0

    :pswitch_6
    new-instance p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/FeatureVolume;

    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/FeatureVolume;-><init>(Landroid/view/View;Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;Landroid/os/Handler;)V

    return-object p0

    :pswitch_7
    new-instance p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/FeatureVideoRatio;

    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/FeatureVideoRatio;-><init>(Landroid/view/View;Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;Landroid/os/Handler;)V

    return-object p0

    :pswitch_8
    new-instance p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/FeatureRotate;

    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/FeatureRotate;-><init>(Landroid/view/View;Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;Landroid/os/Handler;)V

    return-object p0

    :pswitch_9
    new-instance p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/FeaturePopupVideo;

    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/FeaturePopupVideo;-><init>(Landroid/view/View;Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;Landroid/os/Handler;)V

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
