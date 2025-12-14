.class public interface abstract Lorg/chromium/ui/base/EventForwarder$Natives;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/ui/base/EventForwarder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Natives"
.end annotation


# virtual methods
.method public abstract cancelFling(JLorg/chromium/ui/base/EventForwarder;JZ)V
.end method

.method public abstract dispatchKeyEvent(JLorg/chromium/ui/base/EventForwarder;Landroid/view/KeyEvent;)Z
.end method

.method public abstract onDragEvent(JLorg/chromium/ui/base/EventForwarder;IFFFF[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract onGenericMotionEvent(JLorg/chromium/ui/base/EventForwarder;Landroid/view/MotionEvent;JJ)Z
.end method

.method public abstract onKeyUp(JLorg/chromium/ui/base/EventForwarder;Landroid/view/KeyEvent;I)Z
.end method

.method public abstract onMouseEvent(JLorg/chromium/ui/base/EventForwarder;JIFFIFFFIIII)V
.end method

.method public abstract onTouchEvent(JLorg/chromium/ui/base/EventForwarder;Landroid/view/MotionEvent;JJJIIIIFFFFIIFFFFFFFFFFIIIIIZ)Z
.end method

.method public abstract scrollBy(JLorg/chromium/ui/base/EventForwarder;FF)V
.end method

.method public abstract scrollTo(JLorg/chromium/ui/base/EventForwarder;FF)V
.end method

.method public abstract startFling(JLorg/chromium/ui/base/EventForwarder;JFFZZ)V
.end method
