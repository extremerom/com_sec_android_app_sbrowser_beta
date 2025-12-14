.class public interface abstract Lcom/sec/android/app/sbrowser/multi_tab/MultiTab$MultiTabDelegate;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/multi_tab/MultiTab;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "MultiTabDelegate"
.end annotation


# virtual methods
.method public abstract clearAllBitmapCache()V
.end method

.method public abstract clickMenuKey(Landroid/view/KeyEvent;)V
.end method

.method public abstract createNewTab(ZZZLjava/lang/String;)V
.end method

.method public abstract getBottombar()Lcom/sec/android/app/sbrowser/toolbar/Bottombar;
.end method

.method public abstract getFullscreenBitmapFromCache(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)Landroid/graphics/Bitmap;
.end method

.method public abstract getFullscreenBitmapFromDiskCache(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;Lcom/sec/android/app/sbrowser/common/model/general/GeneralCallback;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;",
            "Lcom/sec/android/app/sbrowser/common/model/general/GeneralCallback<",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract getFullscreenBitmapFromMemCache(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)Landroid/graphics/Bitmap;
.end method

.method public abstract getStatusBarColor()I
.end method

.method public abstract getTabManager()Lcom/sec/android/app/sbrowser/tab_manager/TabManager;
.end method

.method public abstract getThumbnailBitmapFromCache(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;Z)Landroid/graphics/Bitmap;
.end method

.method public abstract getThumbnailBitmapFromMemCache(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;Z)Landroid/graphics/Bitmap;
.end method

.method public abstract getTimeLaunchTabsRequested()J
.end method

.method public abstract getToolbar()Lcom/sec/android/app/sbrowser/toolbar/Toolbar;
.end method

.method public abstract isBmpCallbackReceived()Z
.end method

.method public abstract isHideStatusBarEnabled()Z
.end method

.method public abstract isInstanceStateSaved()Z
.end method

.method public abstract isLaunchedByBixby()Z
.end method

.method public abstract notifyToolbarColorChanged()V
.end method

.method public abstract onStartOutroAnimation()V
.end method

.method public abstract onTabGroupChanged(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation
.end method
