.class Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenFeatureView$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IFeatureItem$ClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenFeatureView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenFeatureView;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenFeatureView;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenFeatureView$1;->this$0:Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenFeatureView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IFeatureItem;)V
    .locals 6

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenFeatureView$1;->this$0:Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenFeatureView;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenBase;->getController()Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IMPFullscreenMainController;->onItemClickForExtractText(Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IFeatureItem;)V

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IFeatureItem;->shouldRemoveOnClickListener()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenFeatureView$1;->this$0:Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenFeatureView;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenFeatureView;->b(Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenFeatureView;)[Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IFeatureItem;

    move-result-object v0

    array-length v2, v0

    move v3, v1

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v0, v3

    if-eqz v4, :cond_0

    const/4 v5, 0x0

    invoke-interface {v4, v5}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IFeatureItem;->setOnClickListener(Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IFeatureItem$ClickListener;)V

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IFeatureItem;->id()I

    move-result v0

    const/4 v2, 0x7

    if-ne v0, v2, :cond_2

    invoke-interface {p1, v1}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/model/IFeatureItem;->setHoverPopupEnabled(Z)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenFeatureView$1;->this$0:Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenFeatureView;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenFeatureView;->c(Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenFeatureView;)Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenFeatureTopView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenFeatureTopView;->showMoreMenu()V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenFeatureView$1;->this$0:Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenFeatureView;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/view/MPFullscreenBase;->getHandler()Landroid/os/Handler;

    move-result-object p0

    if-eqz p0, :cond_2

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->removeMessages(I)V

    const/16 p1, 0x9

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_2
    return-void
.end method
