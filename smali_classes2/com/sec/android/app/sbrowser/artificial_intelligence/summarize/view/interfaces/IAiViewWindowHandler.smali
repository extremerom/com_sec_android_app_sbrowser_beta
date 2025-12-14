.class public interface abstract Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/interfaces/IAiViewWindowHandler;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0007\n\u0002\u0008\u0008\n\u0002\u0010\u000b\n\u0002\u0008\u0007\u0008f\u0018\u00002\u00020\u0001R\u0016\u0010\u0005\u001a\u0004\u0018\u00010\u00028&X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0003\u0010\u0004R\u001c\u0010\u000b\u001a\u00020\u00068&@&X\u00a6\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\u0007\u0010\u0008\"\u0004\u0008\t\u0010\nR\u001c\u0010\u000e\u001a\u00020\u00068&@&X\u00a6\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\u000c\u0010\u0008\"\u0004\u0008\r\u0010\nR\u001c\u0010\u0010\u001a\u00020\u000f8&@&X\u00a6\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\u0010\u0010\u0011\"\u0004\u0008\u0012\u0010\u0013R\u001c\u0010\u0014\u001a\u00020\u000f8&@&X\u00a6\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\u0014\u0010\u0011\"\u0004\u0008\u0015\u0010\u0013\u00a8\u0006\u0016"
    }
    d2 = {
        "Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/interfaces/IAiViewWindowHandler;",
        "",
        "Landroid/view/View$OnTouchListener;",
        "getWindowHandlerTouchListener",
        "()Landroid/view/View$OnTouchListener;",
        "windowHandlerTouchListener",
        "",
        "getInitialRawY",
        "()F",
        "setInitialRawY",
        "(F)V",
        "initialRawY",
        "getInitialRawX",
        "setInitialRawX",
        "initialRawX",
        "",
        "isWindowHandlerDragEnabled",
        "()Z",
        "setWindowHandlerDragEnabled",
        "(Z)V",
        "isMinimized",
        "setMinimized",
        "SBrowser_highendBetaGlobal64Release"
    }
    k = 0x1
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# virtual methods
.method public abstract getInitialRawX()F
.end method

.method public abstract getInitialRawY()F
.end method

.method public abstract getWindowHandlerTouchListener()Landroid/view/View$OnTouchListener;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end method

.method public abstract isMinimized()Z
.end method

.method public abstract isWindowHandlerDragEnabled()Z
.end method

.method public abstract setInitialRawX(F)V
.end method

.method public abstract setMinimized(Z)V
.end method
