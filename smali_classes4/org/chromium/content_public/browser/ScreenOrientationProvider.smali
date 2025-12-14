.class public interface abstract Lorg/chromium/content_public/browser/ScreenOrientationProvider;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation


# direct methods
.method public static getInstance()Lorg/chromium/content_public/browser/ScreenOrientationProvider;
    .locals 1

    invoke-static {}, Lorg/chromium/content/browser/ScreenOrientationProviderImpl;->getInstance()Lorg/chromium/content/browser/ScreenOrientationProviderImpl;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public abstract setOrientationDelegate(Lorg/chromium/content_public/browser/ScreenOrientationDelegate;)V
.end method
