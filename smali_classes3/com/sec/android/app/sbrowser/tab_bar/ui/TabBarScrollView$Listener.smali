.class public interface abstract Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarScrollView$Listener;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarScrollView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Listener"
.end annotation


# virtual methods
.method public abstract onDraggingEnded()V
.end method

.method public abstract onScrollChanged(I)V
.end method

.method public abstract onScrollEnd()V
.end method

.method public abstract onTabButtonGrouped(ILjava/lang/String;)V
.end method

.method public abstract onTabButtonSwapped(II)V
.end method

.method public abstract onTabButtonUngrouped(ILjava/lang/String;)V
.end method

.method public abstract onTabGroupSwapped(Ljava/lang/String;IZ)V
.end method

.method public abstract onTabTearingStarted()V
.end method

.method public abstract onTouchEnded()V
.end method
