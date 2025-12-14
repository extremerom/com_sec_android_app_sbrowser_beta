.class public interface abstract Lorg/chromium/content_public/browser/SelectionPopupController;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation


# static fields
.field public static final UMA_MOBILE_ACTION_MODE_SHARE:Ljava/lang/String; = "MobileActionMode.Share"


# direct methods
.method public static fromWebContents(Lorg/chromium/content_public/browser/WebContents;)Lorg/chromium/content_public/browser/SelectionPopupController;
    .locals 0

    invoke-static {p0}, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->fromWebContents(Lorg/chromium/content_public/browser/WebContents;)Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;

    move-result-object p0

    return-object p0
.end method

.method public static needsSurfaceViewDuringSelection()Z
    .locals 1

    invoke-static {}, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->isMagnifierWithSurfaceControlSupported()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method


# virtual methods
.method public abstract getActionModeCallbackHelper()Lorg/chromium/content_public/browser/ActionModeCallbackHelper;
.end method

.method public abstract getResultCallback()Lorg/chromium/content_public/browser/SelectionClient$ResultCallback;
.end method
