.class public interface abstract Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeDelegate;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000V\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0016\u0008f\u0018\u00002\u00020\u0001J\u0011\u0010\u0003\u001a\u0004\u0018\u00010\u0002H&\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J\u0011\u0010\u0005\u001a\u0004\u0018\u00010\u0002H&\u00a2\u0006\u0004\u0008\u0005\u0010\u0004J\u0011\u0010\u0007\u001a\u0004\u0018\u00010\u0006H&\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\u0015\u0010\n\u001a\u0008\u0012\u0004\u0012\u00020\u00060\tH&\u00a2\u0006\u0004\u0008\n\u0010\u000bJ\u0017\u0010\u000e\u001a\u00020\r2\u0006\u0010\u000c\u001a\u00020\u0006H&\u00a2\u0006\u0004\u0008\u000e\u0010\u000fJ\u0019\u0010\u0011\u001a\u00020\u00102\u0008\u0010\u000c\u001a\u0004\u0018\u00010\u0006H&\u00a2\u0006\u0004\u0008\u0011\u0010\u0012J\u0019\u0010\u0014\u001a\u0004\u0018\u00010\u00132\u0006\u0010\u000c\u001a\u00020\u0006H&\u00a2\u0006\u0004\u0008\u0014\u0010\u0015J\'\u0010\u0018\u001a\u00020\u00102\u0006\u0010\u000c\u001a\u00020\u00062\u000e\u0010\u0017\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00130\u0016H&\u00a2\u0006\u0004\u0008\u0018\u0010\u0019J\u000f\u0010\u001b\u001a\u00020\u001aH&\u00a2\u0006\u0004\u0008\u001b\u0010\u001cJ\u0017\u0010 \u001a\u00020\u001f2\u0006\u0010\u001e\u001a\u00020\u001dH&\u00a2\u0006\u0004\u0008 \u0010!J\u0017\u0010\"\u001a\u00020\u001a2\u0006\u0010\u001e\u001a\u00020\u001dH&\u00a2\u0006\u0004\u0008\"\u0010#J\u0017\u0010$\u001a\u00020\u001a2\u0006\u0010\u001e\u001a\u00020\u001dH&\u00a2\u0006\u0004\u0008$\u0010#J\u000f\u0010%\u001a\u00020\u0010H&\u00a2\u0006\u0004\u0008%\u0010&J\u000f\u0010\'\u001a\u00020\u001aH&\u00a2\u0006\u0004\u0008\'\u0010\u001cJ\u000f\u0010(\u001a\u00020\u001aH&\u00a2\u0006\u0004\u0008(\u0010\u001cJ\u000f\u0010)\u001a\u00020\u001aH&\u00a2\u0006\u0004\u0008)\u0010\u001cJ\u000f\u0010*\u001a\u00020\rH&\u00a2\u0006\u0004\u0008*\u0010+J\u000f\u0010,\u001a\u00020\u001aH&\u00a2\u0006\u0004\u0008,\u0010\u001cJ\u000f\u0010-\u001a\u00020\u001aH&\u00a2\u0006\u0004\u0008-\u0010\u001cJ\u000f\u0010.\u001a\u00020\u001aH&\u00a2\u0006\u0004\u0008.\u0010\u001cJ\u0017\u0010/\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00020\tH&\u00a2\u0006\u0004\u0008/\u0010\u000bJ\u000f\u00100\u001a\u00020\u001aH&\u00a2\u0006\u0004\u00080\u0010\u001cJ\u000f\u00101\u001a\u00020\u001aH&\u00a2\u0006\u0004\u00081\u0010\u001cJ\u0017\u00102\u001a\u00020\r2\u0006\u0010\u000c\u001a\u00020\u0006H&\u00a2\u0006\u0004\u00082\u0010\u000fJ\u000f\u00103\u001a\u00020\u001aH&\u00a2\u0006\u0004\u00083\u0010\u001cJ\u000f\u00104\u001a\u00020\rH&\u00a2\u0006\u0004\u00084\u0010+\u00a8\u00065"
    }
    d2 = {
        "Lcom/sec/android/app/sbrowser/toolbar_swipe/ToolbarSwipeDelegate;",
        "",
        "Landroid/view/View;",
        "getToolbar",
        "()Landroid/view/View;",
        "getBottomBar",
        "Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;",
        "getCurrentTab",
        "()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;",
        "",
        "getTabs",
        "()Ljava/util/List;",
        "tab",
        "",
        "getTabCountInGroup",
        "(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)I",
        "Ldb/r;",
        "setCurrentTab",
        "(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)V",
        "Landroid/graphics/Bitmap;",
        "getTabThumbnail",
        "(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)Landroid/graphics/Bitmap;",
        "Lcom/sec/android/app/sbrowser/common/model/general/GeneralCallback;",
        "callback",
        "captureBitmapAsync",
        "(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;Lcom/sec/android/app/sbrowser/common/model/general/GeneralCallback;)V",
        "",
        "isSwipeAllowed",
        "()Z",
        "Landroid/view/MotionEvent;",
        "event",
        "",
        "getTouchedArea",
        "(Landroid/view/MotionEvent;)J",
        "isInToolbarArea",
        "(Landroid/view/MotionEvent;)Z",
        "isInControlBarArea",
        "resetDrawableStates",
        "()V",
        "isSecretMode",
        "isNightModeEnabled",
        "isHighContrastModeEnabled",
        "getOptionMenuBadgeCount",
        "()I",
        "isTabBarShowing",
        "isBookmarkBarShowing",
        "isTranslationBarShowing",
        "getTabBarButtons",
        "isContentDarkModeEnabled",
        "isKeyboardTurnedOn",
        "getTabIndex",
        "isNewQuickAccessPortrait",
        "getFixedToolbarHeight",
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
.method public abstract captureBitmapAsync(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;Lcom/sec/android/app/sbrowser/common/model/general/GeneralCallback;)V
    .param p1    # Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/sec/android/app/sbrowser/common/model/general/GeneralCallback;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
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

.method public abstract getBottomBar()Landroid/view/View;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end method

.method public abstract getCurrentTab()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end method

.method public abstract getFixedToolbarHeight()I
.end method

.method public abstract getOptionMenuBadgeCount()I
.end method

.method public abstract getTabBarButtons()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public abstract getTabCountInGroup(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)I
    .param p1    # Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method

.method public abstract getTabIndex(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)I
    .param p1    # Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method

.method public abstract getTabThumbnail(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)Landroid/graphics/Bitmap;
    .param p1    # Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end method

.method public abstract getTabs()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public abstract getToolbar()Landroid/view/View;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end method

.method public abstract getTouchedArea(Landroid/view/MotionEvent;)J
    .param p1    # Landroid/view/MotionEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method

.method public abstract isBookmarkBarShowing()Z
.end method

.method public abstract isContentDarkModeEnabled()Z
.end method

.method public abstract isHighContrastModeEnabled()Z
.end method

.method public abstract isInControlBarArea(Landroid/view/MotionEvent;)Z
    .param p1    # Landroid/view/MotionEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method

.method public abstract isInToolbarArea(Landroid/view/MotionEvent;)Z
    .param p1    # Landroid/view/MotionEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method

.method public abstract isKeyboardTurnedOn()Z
.end method

.method public abstract isNewQuickAccessPortrait()Z
.end method

.method public abstract isNightModeEnabled()Z
.end method

.method public abstract isSecretMode()Z
.end method

.method public abstract isSwipeAllowed()Z
.end method

.method public abstract isTabBarShowing()Z
.end method

.method public abstract isTranslationBarShowing()Z
.end method

.method public abstract resetDrawableStates()V
.end method

.method public abstract setCurrentTab(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)V
    .param p1    # Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
.end method
