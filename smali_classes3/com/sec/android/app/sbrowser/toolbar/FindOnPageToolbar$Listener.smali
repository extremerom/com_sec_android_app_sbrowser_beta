.class public interface abstract Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar$Listener;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/toolbar/FindOnPageToolbar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Listener"
.end annotation


# virtual methods
.method public abstract focusOutFromFindOnPage()V
.end method

.method public abstract onFindNext()V
.end method

.method public abstract onFindPrev()V
.end method

.method public abstract onFindText(Ljava/lang/String;)V
.end method

.method public abstract onFinishFindOnPage()V
.end method

.method public abstract onLaunchVoiceRecognizer()V
.end method

.method public abstract onStopFindText()V
.end method

.method public shouldFinishFindOnPage()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
