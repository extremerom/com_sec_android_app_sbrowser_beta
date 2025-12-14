.class public interface abstract Lorg/chromium/content/browser/input/ChromiumBaseInputConnection;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/inputmethod/InputConnection;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/content/browser/input/ChromiumBaseInputConnection$Factory;
    }
.end annotation

.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation


# virtual methods
.method public abstract getHandler()Landroid/os/Handler;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end method

.method public abstract onRestartInputOnUiThread()V
.end method

.method public abstract sendKeyEventOnUiThread(Landroid/view/KeyEvent;)Z
.end method

.method public abstract unblockOnUiThread()V
.end method

.method public abstract updateStateOnUiThread(Ljava/lang/CharSequence;IIIIZZ)V
.end method
