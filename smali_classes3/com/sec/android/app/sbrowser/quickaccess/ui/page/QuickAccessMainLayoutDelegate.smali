.class public interface abstract Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayoutDelegate;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00006\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0007\n\u0002\u0010\u0007\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008f\u0018\u00002\u00020\u0001J\u0017\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H&\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J\u0017\u0010\u0007\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H&\u00a2\u0006\u0004\u0008\u0007\u0010\u0006J\u001f\u0010\t\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0008\u001a\u00020\u0002H&\u00a2\u0006\u0004\u0008\t\u0010\nJ\u001f\u0010\u000b\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0008\u001a\u00020\u0002H&\u00a2\u0006\u0004\u0008\u000b\u0010\nJ\u0019\u0010\u000e\u001a\u00020\u00042\u0008\u0010\r\u001a\u0004\u0018\u00010\u000cH&\u00a2\u0006\u0004\u0008\u000e\u0010\u000fJ!\u0010\u0012\u001a\u00020\u00042\u0008\u0010\r\u001a\u0004\u0018\u00010\u000c2\u0006\u0010\u0011\u001a\u00020\u0010H&\u00a2\u0006\u0004\u0008\u0012\u0010\u0013J\u000f\u0010\u0014\u001a\u00020\u0004H&\u00a2\u0006\u0004\u0008\u0014\u0010\u0015J\u0017\u0010\u0017\u001a\u00020\u00042\u0006\u0010\u0016\u001a\u00020\u0002H&\u00a2\u0006\u0004\u0008\u0017\u0010\u0006J\u001f\u0010\u001b\u001a\u00020\u00042\u0006\u0010\u0019\u001a\u00020\u00182\u0006\u0010\u001a\u001a\u00020\u0002H&\u00a2\u0006\u0004\u0008\u001b\u0010\u001cJ\u001f\u0010\u001d\u001a\u00020\u00042\u0006\u0010\u0019\u001a\u00020\u00182\u0006\u0010\u001a\u001a\u00020\u0002H&\u00a2\u0006\u0004\u0008\u001d\u0010\u001cJ\u000f\u0010\u001e\u001a\u00020\u0004H&\u00a2\u0006\u0004\u0008\u001e\u0010\u0015J\u000f\u0010\u001f\u001a\u00020\u0004H&\u00a2\u0006\u0004\u0008\u001f\u0010\u0015J\u000f\u0010 \u001a\u00020\u0004H&\u00a2\u0006\u0004\u0008 \u0010\u0015J\u0019\u0010#\u001a\u00020\u00042\u0008\u0010\"\u001a\u0004\u0018\u00010!H&\u00a2\u0006\u0004\u0008#\u0010$\u00a8\u0006%"
    }
    d2 = {
        "Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayoutDelegate;",
        "",
        "",
        "visible",
        "Ldb/r;",
        "onToolbarVisibilityChanged",
        "(Z)V",
        "onBottombarVisibilityChanged",
        "forceUpdate",
        "onToolbarShadowVisibilityChanged",
        "(ZZ)V",
        "onBottombarShadowVisibilityChanged",
        "",
        "url",
        "loadUrlInNewTab",
        "(Ljava/lang/String;)V",
        "",
        "transitionType",
        "loadUrl",
        "(Ljava/lang/String;I)V",
        "onEditModeEntered",
        "()V",
        "fromExternal",
        "onEditModeExited",
        "",
        "y",
        "animate",
        "setTranslationToolBarY",
        "(FZ)V",
        "setTranslationBottomBarY",
        "onReadyToShow",
        "onScrollStarted",
        "onScrollEnded",
        "Landroid/view/View;",
        "view",
        "requestUrlEditMode",
        "(Landroid/view/View;)V",
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
.method public abstract loadUrl(Ljava/lang/String;I)V
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
.end method

.method public abstract loadUrlInNewTab(Ljava/lang/String;)V
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
.end method

.method public abstract onBottombarShadowVisibilityChanged(ZZ)V
.end method

.method public abstract onBottombarVisibilityChanged(Z)V
.end method

.method public abstract onEditModeEntered()V
.end method

.method public abstract onEditModeExited(Z)V
.end method

.method public abstract onReadyToShow()V
.end method

.method public abstract onScrollEnded()V
.end method

.method public abstract onScrollStarted()V
.end method

.method public abstract onToolbarShadowVisibilityChanged(ZZ)V
.end method

.method public abstract onToolbarVisibilityChanged(Z)V
.end method

.method public abstract requestUrlEditMode(Landroid/view/View;)V
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
.end method

.method public abstract setTranslationBottomBarY(FZ)V
.end method

.method public abstract setTranslationToolBarY(FZ)V
.end method
