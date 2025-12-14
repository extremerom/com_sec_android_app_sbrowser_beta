.class public interface abstract Lcom/sec/terrace/ui/base/TinEventForwarder$TinInternalAccessDelegate;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/terrace/ui/base/TinEventForwarder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "TinInternalAccessDelegate"
.end annotation


# virtual methods
.method public abstract cancelMouseClickOnGoToTop(Landroid/view/MotionEvent;)Z
.end method

.method public abstract clearMotionEventOffset(Landroid/view/MotionEvent;)V
.end method

.method public abstract getTinTapDisambiguator()Lcom/sec/terrace/content/browser/TinTapDisambiguator;
.end method

.method public abstract onHoverEvent(Landroid/view/MotionEvent;)Z
.end method

.method public abstract onTouchEvent(Landroid/view/MotionEvent;)Z
.end method

.method public abstract updateMotionEventOffset(Landroid/view/MotionEvent;)V
.end method
