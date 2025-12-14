.class public interface abstract Lcom/sec/android/app/sbrowser/tab_bar/ui/widget/TabBarChildViewDelegate;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract captureTabAsyncForPreview(ILcom/sec/android/app/sbrowser/common/model/general/GeneralCallback;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/sec/android/app/sbrowser/common/model/general/GeneralCallback<",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract existCurrentTabInGroup(Ljava/lang/String;)Z
.end method

.method public abstract getFavicon(I)Landroid/graphics/Bitmap;
.end method

.method public abstract getFirstTabButtonMargin()I
.end method

.method public abstract getFullscreenBitmapFromCache(I)Landroid/graphics/Bitmap;
.end method

.method public abstract getGroupColorId(Ljava/lang/String;)I
.end method

.method public abstract getGroupName(I)Ljava/lang/String;
.end method

.method public abstract getIndex(I)I
.end method

.method public abstract getIndexByGroup(Ljava/lang/String;)I
.end method

.method public abstract getOriginalUrl(I)Ljava/lang/String;
.end method

.method public abstract getScrollX()I
.end method

.method public abstract getTabColor(I)I
.end method

.method public abstract getTabHeight()I
.end method

.method public abstract getTabWidth()I
.end method

.method public abstract getThemeManager()Lcom/sec/android/app/sbrowser/tab_bar/theme/TabBarThemeManager;
.end method

.method public abstract getTitleOrUrl(I)Ljava/lang/String;
.end method

.method public abstract getUrl(I)Ljava/lang/String;
.end method

.method public abstract isCurrentTab(I)Z
.end method

.method public abstract isIncognitoTab(I)Z
.end method

.method public abstract isLockedTab(I)Z
.end method

.method public abstract isValidTab(I)Z
.end method

.method public abstract shouldFetchFaviconFromHistory(I)Z
.end method
