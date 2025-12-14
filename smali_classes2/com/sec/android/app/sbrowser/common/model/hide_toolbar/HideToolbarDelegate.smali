.class public interface abstract Lcom/sec/android/app/sbrowser/common/model/hide_toolbar/HideToolbarDelegate;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract getCurrentTab()Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;
.end method

.method public abstract getCurrentVisibleTab()Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;
.end method

.method public abstract getFixedBottombarHeight()I
.end method

.method public abstract getFixedToolbarHeight()I
.end method

.method public abstract getInstantTab()Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;
.end method

.method public abstract getTopControlsOffsetYPix()F
.end method

.method public abstract isBitmapToolbarHidden()Z
.end method

.method public abstract isFindOnPageRunning()Z
.end method

.method public abstract isFocused()Z
.end method

.method public abstract isLocationBarEditMode()Z
.end method

.method public abstract isMultiTabShowing()Z
.end method

.method public abstract isNewQuickAccessPage()Z
.end method

.method public abstract isNoTabsShowing()Z
.end method

.method public abstract isResultViewShowing()Z
.end method

.method public abstract isSplitTabMode()Z
.end method

.method public abstract isSwipeViewShowing()Z
.end method

.method public abstract isTabBarAnimating()Z
.end method

.method public abstract shouldBottomBarShow()Z
.end method

.method public abstract shouldBottomBitmapLayerEnabled()Z
.end method

.method public shouldEnableCustomHeader()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public abstract shouldTopBarShow()Z
.end method

.method public abstract shouldTopBitmapLayerEnabled()Z
.end method
