.class public Lorg/chromium/components/paintpreview/player/frame/PlayerFrameCoordinator;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation


# instance fields
.field private mMediator:Lorg/chromium/components/paintpreview/player/frame/PlayerFrameMediator;

.field private mScrollController:Lorg/chromium/components/paintpreview/player/frame/PlayerFrameScrollController;

.field private mView:Lorg/chromium/components/paintpreview/player/frame/PlayerFrameView;


# virtual methods
.method public getMediator()Lorg/chromium/components/paintpreview/player/frame/PlayerFrameMediator;
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    iget-object p0, p0, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameCoordinator;->mMediator:Lorg/chromium/components/paintpreview/player/frame/PlayerFrameMediator;

    return-object p0
.end method

.method public getView()Lorg/chromium/components/paintpreview/player/frame/PlayerFrameView;
    .locals 0

    iget-object p0, p0, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameCoordinator;->mView:Lorg/chromium/components/paintpreview/player/frame/PlayerFrameView;

    return-object p0
.end method

.method public handleClickForAccessibility(IIZ)V
    .locals 0

    iget-object p0, p0, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameCoordinator;->mMediator:Lorg/chromium/components/paintpreview/player/frame/PlayerFrameMediator;

    invoke-virtual {p0, p1, p2, p3}, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameMediator;->onTap(IIZ)V

    return-void
.end method

.method public scrollToMakeRectVisibleForAccessibility(Landroid/graphics/Rect;)V
    .locals 0

    iget-object p0, p0, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameCoordinator;->mScrollController:Lorg/chromium/components/paintpreview/player/frame/PlayerFrameScrollController;

    invoke-virtual {p0, p1}, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameScrollController;->scrollToMakeRectVisibleForAccessibility(Landroid/graphics/Rect;)V

    return-void
.end method

.method public setOnScrollCallbackForAccessibility(Ljava/lang/Runnable;)V
    .locals 0

    iget-object p0, p0, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameCoordinator;->mScrollController:Lorg/chromium/components/paintpreview/player/frame/PlayerFrameScrollController;

    invoke-virtual {p0, p1}, Lorg/chromium/components/paintpreview/player/frame/PlayerFrameScrollController;->setOnScrollCallbackForAccessibility(Ljava/lang/Runnable;)V

    return-void
.end method
