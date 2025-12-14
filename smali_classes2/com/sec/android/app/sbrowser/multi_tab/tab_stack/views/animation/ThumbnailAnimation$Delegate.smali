.class public interface abstract Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/animation/ThumbnailAnimation$Delegate;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/animation/ThumbnailAnimation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Delegate"
.end annotation


# virtual methods
.method public abstract getAnimDuration()I
.end method

.method public abstract getHeaderHeight()I
.end method

.method public abstract getRecents()Landroid/view/View;
.end method

.method public abstract getTabLoader()Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabLoader;
.end method

.method public abstract getTabViewLocation(Landroid/view/View;)Landroid/graphics/Rect;
.end method

.method public abstract isHideStatusBarEnabled()Z
.end method

.method public abstract isMultiTabRemoving()Z
.end method

.method public abstract shouldUseDarkTheme()Z
.end method
