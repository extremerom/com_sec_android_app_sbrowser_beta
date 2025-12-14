.class public interface abstract Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/animation/ThumbnailOutroAnimation$Delegate;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/animation/ThumbnailAnimation$Delegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/animation/ThumbnailOutroAnimation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Delegate"
.end annotation


# virtual methods
.method public abstract getCurrentTab()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;
.end method

.method public abstract getTabViewById(I)Landroid/view/View;
.end method

.method public abstract isMultiTabAdded()Z
.end method

.method public abstract onExitAnimationStarted(Z)V
.end method

.method public abstract performEndAction(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;Ljava/lang/Runnable;)V
.end method

.method public abstract requestToolbarCapture()V
.end method

.method public abstract setMultiTabOutroAnimating(Z)V
.end method

.method public abstract setThumbnailInView(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;Lcom/sec/android/app/sbrowser/common/model/general/GeneralCallback;Landroid/os/Handler;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;",
            "Lcom/sec/android/app/sbrowser/common/model/general/GeneralCallback<",
            "Landroid/graphics/Bitmap;",
            ">;",
            "Landroid/os/Handler;",
            ")V"
        }
    .end annotation
.end method
