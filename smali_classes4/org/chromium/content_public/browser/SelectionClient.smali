.class public interface abstract Lorg/chromium/content_public/browser/SelectionClient;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/content_public/browser/SelectionClient$ResultCallback;,
        Lorg/chromium/content_public/browser/SelectionClient$SurroundingTextCallback;,
        Lorg/chromium/content_public/browser/SelectionClient$Result;
    }
.end annotation

.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation


# direct methods
.method public static createSmartSelectionClient(Lorg/chromium/content_public/browser/WebContents;)Lorg/chromium/content_public/browser/SelectionClient;
    .locals 1

    invoke-static {p0}, Lorg/chromium/content_public/browser/SelectionPopupController;->fromWebContents(Lorg/chromium/content_public/browser/WebContents;)Lorg/chromium/content_public/browser/SelectionPopupController;

    move-result-object v0

    invoke-static {v0}, Lorg/chromium/build/NullUtil;->assumeNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v0}, Lorg/chromium/content_public/browser/SelectionPopupController;->getResultCallback()Lorg/chromium/content_public/browser/SelectionClient$ResultCallback;

    move-result-object v0

    invoke-static {v0, p0}, Lorg/chromium/content/browser/selection/SmartSelectionClient;->fromWebContents(Lorg/chromium/content_public/browser/SelectionClient$ResultCallback;Lorg/chromium/content_public/browser/WebContents;)Lorg/chromium/content/browser/selection/SmartSelectionClient;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public abstract cancelAllRequests()V
.end method

.method public getSelectionEventProcessor()Lorg/chromium/content_public/browser/SelectionEventProcessor;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public isSmartClassificationTaskInProgress()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public abstract onSelectionChanged(Ljava/lang/String;)V
.end method

.method public abstract onSelectionEvent(IFF)V
.end method

.method public abstract requestSelectionPopupUpdates(Z)Z
.end method

.method public abstract selectAroundCaretAck(Lorg/chromium/content_public/browser/SelectAroundCaretResult;)V
.end method
