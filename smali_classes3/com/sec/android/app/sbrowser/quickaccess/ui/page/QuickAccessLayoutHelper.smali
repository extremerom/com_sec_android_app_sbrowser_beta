.class public interface abstract Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessLayoutHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u0007\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u000c\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008f\u0018\u00002\u00020\u0001J\u000f\u0010\u0003\u001a\u00020\u0002H&\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J\u001f\u0010\n\u001a\u00020\t2\u0006\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0008\u001a\u00020\u0007H&\u00a2\u0006\u0004\u0008\n\u0010\u000bJ\u000f\u0010\u000c\u001a\u00020\u0007H&\u00a2\u0006\u0004\u0008\u000c\u0010\rJ\u000f\u0010\u000e\u001a\u00020\u0007H&\u00a2\u0006\u0004\u0008\u000e\u0010\rJ\u000f\u0010\u000f\u001a\u00020\u0007H&\u00a2\u0006\u0004\u0008\u000f\u0010\rJ\u000f\u0010\u0010\u001a\u00020\tH&\u00a2\u0006\u0004\u0008\u0010\u0010\u0011J\u000f\u0010\u0012\u001a\u00020\u0007H&\u00a2\u0006\u0004\u0008\u0012\u0010\rJ\u0017\u0010\u0014\u001a\u00020\t2\u0006\u0010\u0013\u001a\u00020\u0007H&\u00a2\u0006\u0004\u0008\u0014\u0010\u0015J\u0011\u0010\u0017\u001a\u0004\u0018\u00010\u0016H&\u00a2\u0006\u0004\u0008\u0017\u0010\u0018\u00a8\u0006\u0019"
    }
    d2 = {
        "Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessLayoutHelper;",
        "",
        "",
        "getLastTranslatedToolbarY",
        "()F",
        "",
        "y",
        "",
        "animate",
        "Ldb/r;",
        "translationMainToolbarY",
        "(IZ)V",
        "isHeaderCompletelyVisible",
        "()Z",
        "isScrollBottomReached",
        "isScrollTopReached",
        "scrollToHeader",
        "()V",
        "isEditMode",
        "hidden",
        "setToolbarHiddenWhileScrolling",
        "(Z)V",
        "Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayoutDelegate;",
        "getDelegate",
        "()Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayoutDelegate;",
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
.method public abstract getDelegate()Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayoutDelegate;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end method

.method public abstract getLastTranslatedToolbarY()F
.end method

.method public abstract isEditMode()Z
.end method

.method public abstract isHeaderCompletelyVisible()Z
.end method

.method public abstract isScrollBottomReached()Z
.end method

.method public abstract isScrollTopReached()Z
.end method

.method public abstract scrollToHeader()V
.end method

.method public abstract setToolbarHiddenWhileScrolling(Z)V
.end method

.method public abstract translationMainToolbarY(IZ)V
.end method
