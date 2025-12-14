.class public interface abstract Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/animation/ThumbnailIntroAnimation$Delegate;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/animation/ThumbnailAnimation$Delegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/animation/ThumbnailIntroAnimation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Delegate"
.end annotation


# virtual methods
.method public abstract changeTabViewVisibility(I)V
.end method

.method public abstract getCurrentTab()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;
.end method

.method public abstract isMultiTabDetached()Z
.end method

.method public abstract isSecretModeEnabled()Z
.end method

.method public abstract onEnterAnimationEnded()V
.end method

.method public abstract onEnterAnimationStarted()V
.end method

.method public abstract setFirstIntroAnimation(Z)V
.end method

.method public abstract showNoTabViewIfNeeded()V
.end method

.method public abstract startTabViewIntroAnimation(I)V
.end method

.method public abstract updateUnloadedTabThumbnails()V
.end method
