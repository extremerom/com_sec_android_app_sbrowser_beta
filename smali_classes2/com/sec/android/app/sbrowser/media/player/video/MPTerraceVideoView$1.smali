.class Lcom/sec/android/app/sbrowser/media/player/video/MPTerraceVideoView$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/media/player/video/MPBackgroundView$Delegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/media/player/video/MPTerraceVideoView;-><init>(Landroid/content/Context;Lcom/sec/android/app/sbrowser/media/common/MediaInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/media/player/video/MPTerraceVideoView;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/media/player/video/MPTerraceVideoView;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/media/player/video/MPTerraceVideoView$1;->this$0:Lcom/sec/android/app/sbrowser/media/player/video/MPTerraceVideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getVideoRect()Landroid/graphics/Rect;
    .locals 1

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/player/video/MPTerraceVideoView$1;->this$0:Lcom/sec/android/app/sbrowser/media/player/video/MPTerraceVideoView;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/media/player/video/MPTerraceVideoView;->getVideoRect(Landroid/graphics/Rect;)V

    return-object v0
.end method

.method public isStandAloneVideo()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
