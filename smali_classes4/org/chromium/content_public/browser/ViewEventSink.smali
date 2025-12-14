.class public interface abstract Lorg/chromium/content_public/browser/ViewEventSink;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/content_public/browser/ViewEventSink$InternalAccessDelegate;
    }
.end annotation

.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation


# direct methods
.method public static from(Lorg/chromium/content_public/browser/WebContents;)Lorg/chromium/content_public/browser/ViewEventSink;
    .locals 0

    invoke-static {p0}, Lorg/chromium/content/browser/ViewEventSinkImpl;->from(Lorg/chromium/content_public/browser/WebContents;)Lorg/chromium/content/browser/ViewEventSinkImpl;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public abstract onAttachedToWindow()V
.end method

.method public abstract onConfigurationChanged(Landroid/content/res/Configuration;)V
.end method

.method public abstract onDetachedFromWindow()V
.end method

.method public abstract onViewFocusChanged(Z)V
.end method

.method public abstract onWindowFocusChanged(Z)V
.end method

.method public abstract setHideKeyboardOnBlur(Z)V
.end method
