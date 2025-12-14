.class public Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/FeatureInfoUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static generate()Ljava/util/ArrayList;
    .locals 5
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/FeatureInfo;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/FeatureInfo;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v2}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/FeatureInfo;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/FeatureInfo;

    const/4 v2, 0x2

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/FeatureInfo;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/FeatureInfo;

    const/4 v4, 0x4

    invoke-direct {v1, v4, v2}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/FeatureInfo;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/FeatureInfo;

    const/4 v2, 0x3

    invoke-direct {v1, v3, v2}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/FeatureInfo;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/FeatureInfo;

    const/4 v2, 0x5

    invoke-direct {v1, v2, v4}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/FeatureInfo;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/FeatureInfo;

    const/4 v3, 0x6

    invoke-direct {v1, v3, v2}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/FeatureInfo;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/FeatureInfo;

    const/4 v2, 0x7

    invoke-direct {v1, v2, v3}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/FeatureInfo;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/FeatureInfo;

    const/16 v3, 0x8

    invoke-direct {v1, v3, v2}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/FeatureInfo;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/FeatureInfo;

    const/16 v2, 0x9

    invoke-direct {v1, v2, v3}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/FeatureInfo;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0
.end method
