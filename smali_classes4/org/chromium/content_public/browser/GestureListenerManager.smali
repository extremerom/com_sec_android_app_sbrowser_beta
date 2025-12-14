.class public interface abstract Lorg/chromium/content_public/browser/GestureListenerManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation


# direct methods
.method public static fromWebContents(Lorg/chromium/content_public/browser/WebContents;)Lorg/chromium/content_public/browser/GestureListenerManager;
    .locals 0

    invoke-static {p0}, Lorg/chromium/content/browser/GestureListenerManagerImpl;->fromWebContents(Lorg/chromium/content_public/browser/WebContents;)Lorg/chromium/content/browser/GestureListenerManagerImpl;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public abstract addListener(Lorg/chromium/content_public/browser/GestureStateListener;)V
.end method
