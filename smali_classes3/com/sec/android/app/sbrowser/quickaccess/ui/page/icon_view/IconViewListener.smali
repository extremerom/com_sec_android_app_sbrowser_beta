.class public interface abstract Lcom/sec/android/app/sbrowser/quickaccess/ui/page/icon_view/IconViewListener;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract getCheckedItemCount()I
.end method

.method public abstract getScrollViewVisibleBottom()I
.end method

.method public getScrollViewVisibleTop()I
    .locals 1

    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "for QuickAccess 2.0"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getVisibleBottomBarHeight()I
    .locals 1

    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "for QuickAccess 2.0"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getVisibleToolbarHeight()I
    .locals 1

    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "for QuickAccess 2.0"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public abstract hideGoToTopButtonForLongClickEvent()V
.end method

.method public abstract onCheckedItemScrollRequested(I)V
.end method

.method public abstract onItemSelected(Ljava/lang/String;I)V
.end method

.method public abstract onOpenInNewTabRequested(Ljava/lang/String;)V
.end method

.method public abstract onOpenInNewWindowRequested(Ljava/lang/String;)V
.end method

.method public abstract onScrollRequestedWithDy(I)V
.end method

.method public abstract onScrollRequestedWithPosition(I)V
.end method

.method public onScrollStopped()V
    .locals 1

    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "for QuickAccess 2.0"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public abstract onUrlEditRequested(Landroid/view/View;)V
.end method
