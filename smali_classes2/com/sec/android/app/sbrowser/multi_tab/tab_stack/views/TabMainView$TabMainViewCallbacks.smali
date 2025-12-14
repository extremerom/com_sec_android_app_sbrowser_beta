.class public interface abstract Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView$TabMainViewCallbacks;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/TabMainView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "TabMainViewCallbacks"
.end annotation


# virtual methods
.method public abstract onEnterAnimationEnded()V
.end method

.method public abstract onEnterEditMode(Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/ModeType;)V
.end method

.method public abstract onExitAnimationStarted(Z)V
.end method

.method public abstract onExitEditMode()V
.end method

.method public abstract onLongClickTab(I)V
.end method

.method public abstract onNewTabAnimationStarted()V
.end method

.method public abstract onRunningCloseTabAnimation(Z)V
.end method

.method public abstract onTabStackViewLoaded(Landroid/view/View;I)V
.end method

.method public abstract requestToolbarCapture()V
.end method
