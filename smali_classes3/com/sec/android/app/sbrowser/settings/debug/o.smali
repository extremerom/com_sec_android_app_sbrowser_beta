.class public final synthetic Lcom/sec/android/app/sbrowser/settings/debug/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lw2/n;
.implements Lcom/sec/android/app/sbrowser/common/function/Supplier;
.implements Lvd/b;
.implements Lcom/sec/terrace/browser/notifications/TinNotificationTriggerScheduler$Clock;
.implements Lcom/sec/terrace/browser/paintpreview/TinBitmapGenerator$CompositorFactory;
.implements Lorg/chromium/content_public/browser/WebContents$UserDataFactory;


# instance fields
.field public final synthetic a:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lcom/sec/android/app/sbrowser/settings/debug/o;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public c(Ljava/lang/String;)V
    .locals 0

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/wallpaper/data/ChangeWallpaperHttpClient;->a(Ljava/lang/String;)V

    return-void
.end method

.method public create(Lorg/chromium/url/GURL;Lcom/sec/terrace/browser/paintpreview/TinPaintPreviewCaptureService;Ljava/lang/String;JLorg/chromium/base/Callback;)Lcom/sec/terrace/browser/paintpreview/TinPaintPreviewCompositor;
    .locals 7

    new-instance p0, Lcom/sec/terrace/browser/paintpreview/TinPaintPreviewCompositor;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-wide v4, p4

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/sec/terrace/browser/paintpreview/TinPaintPreviewCompositor;-><init>(Lorg/chromium/url/GURL;Lorg/chromium/components/paintpreview/browser/NativePaintPreviewServiceProvider;Ljava/lang/String;JLorg/chromium/base/Callback;)V

    return-object p0
.end method

.method public create(Lorg/chromium/content_public/browser/WebContents;)Ljava/lang/Object;
    .locals 0

    iget p0, p0, Lcom/sec/android/app/sbrowser/settings/debug/o;->a:I

    packed-switch p0, :pswitch_data_0

    new-instance p0, Lcom/sec/terrace/content/browser/spen/TinSPenIntuitiveHoverController;

    invoke-direct {p0, p1}, Lcom/sec/terrace/content/browser/spen/TinSPenIntuitiveHoverController;-><init>(Lorg/chromium/content_public/browser/WebContents;)V

    return-object p0

    :pswitch_0
    new-instance p0, Lcom/sec/terrace/content/browser/spen/TinSPenHoverScroller;

    invoke-direct {p0, p1}, Lcom/sec/terrace/content/browser/spen/TinSPenHoverScroller;-><init>(Lorg/chromium/content_public/browser/WebContents;)V

    return-object p0

    :pswitch_1
    new-instance p0, Lcom/sec/terrace/content/browser/input/TinSelectPopup;

    invoke-direct {p0, p1}, Lcom/sec/terrace/content/browser/input/TinSelectPopup;-><init>(Lorg/chromium/content_public/browser/WebContents;)V

    return-object p0

    :pswitch_2
    new-instance p0, Lcom/sec/terrace/content/browser/input/TinImeAdapterImpl;

    invoke-direct {p0, p1}, Lcom/sec/terrace/content/browser/input/TinImeAdapterImpl;-><init>(Lorg/chromium/content_public/browser/WebContents;)V

    return-object p0

    :pswitch_3
    new-instance p0, Lcom/sec/terrace/content/browser/TinTapDisambiguator;

    invoke-direct {p0, p1}, Lcom/sec/terrace/content/browser/TinTapDisambiguator;-><init>(Lorg/chromium/content_public/browser/WebContents;)V

    return-object p0

    :pswitch_4
    new-instance p0, Lcom/sec/terrace/content/browser/TinSelectionPopupControllerImpl;

    invoke-direct {p0, p1}, Lcom/sec/terrace/content/browser/TinSelectionPopupControllerImpl;-><init>(Lorg/chromium/content_public/browser/WebContents;)V

    return-object p0

    :pswitch_5
    new-instance p0, Lcom/sec/terrace/content/browser/TinGestureListenerManagerImpl;

    invoke-direct {p0, p1}, Lcom/sec/terrace/content/browser/TinGestureListenerManagerImpl;-><init>(Lorg/chromium/content_public/browser/WebContents;)V

    return-object p0

    :pswitch_6
    new-instance p0, Lcom/sec/terrace/content/browser/TinDragDropHandler;

    invoke-direct {p0, p1}, Lcom/sec/terrace/content/browser/TinDragDropHandler;-><init>(Lorg/chromium/content_public/browser/WebContents;)V

    return-object p0

    :pswitch_7
    new-instance p0, Lcom/sec/terrace/content/browser/TinContentViewCore;

    invoke-direct {p0, p1}, Lcom/sec/terrace/content/browser/TinContentViewCore;-><init>(Lorg/chromium/content_public/browser/WebContents;)V

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x14
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public currentTimeMillis()J
    .locals 2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public get()Ljava/lang/Object;
    .locals 0

    iget p0, p0, Lcom/sec/android/app/sbrowser/settings/debug/o;->a:I

    packed-switch p0, :pswitch_data_0

    :pswitch_0
    invoke-static {}, Lcom/sec/android/app/sbrowser/background_task_scheduler/BackgroundTaskFactory;->a()Lcom/sec/android/app/sbrowser/background_task_scheduler/BackgroundTaskFactory;

    move-result-object p0

    return-object p0

    :pswitch_1
    invoke-static {}, Lcom/sec/android/app/sbrowser/web_dark_custom/WebDarkCustomData;->a()Lcom/sec/android/app/sbrowser/web_dark_custom/WebDarkCustomData;

    move-result-object p0

    return-object p0

    :pswitch_2
    invoke-static {}, Lcom/sec/android/app/sbrowser/tab/TabIdManager;->a()Lcom/sec/android/app/sbrowser/tab/TabIdManager;

    move-result-object p0

    return-object p0

    :pswitch_3
    new-instance p0, Lcom/sec/android/app/sbrowser/tab/AsyncTabManager;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/tab/AsyncTabManager;-><init>()V

    return-object p0

    :pswitch_4
    invoke-static {}, Lcom/sec/android/app/sbrowser/stub/AppUpdateManager;->a()Lcom/sec/android/app/sbrowser/stub/AppUpdateManager;

    move-result-object p0

    return-object p0

    :pswitch_5
    invoke-static {}, Lcom/sec/android/app/sbrowser/smp/SmpController;->a()Lcom/sec/android/app/sbrowser/smp/SmpController;

    move-result-object p0

    return-object p0

    :pswitch_6
    invoke-static {}, Lcom/sec/android/app/sbrowser/smart_protect/SmartProtectChecker;->a()Lcom/sec/android/app/sbrowser/smart_protect/SmartProtectChecker;

    move-result-object p0

    return-object p0

    :pswitch_7
    invoke-static {}, Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageThreadPool;->a()Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageThreadPool;

    move-result-object p0

    return-object p0

    :pswitch_8
    invoke-static {}, Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageMessageHandler;->a()Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageMessageHandler;

    move-result-object p0

    return-object p0

    :pswitch_9
    invoke-static {}, Lcom/sec/android/app/sbrowser/sites/common/search/model/SitesSmartSearchThread;->a()Lcom/sec/android/app/sbrowser/sites/common/search/model/SitesSmartSearchThread;

    move-result-object p0

    return-object p0

    :pswitch_a
    new-instance p0, Lcom/sec/android/app/sbrowser/sites/bookmark/view/show_bookmarks/BookmarksAccessibilityDelegate;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/sites/bookmark/view/show_bookmarks/BookmarksAccessibilityDelegate;-><init>()V

    return-object p0

    :pswitch_b
    invoke-static {}, Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkThread;->a()Lcom/sec/android/app/sbrowser/sites/bookmark/model/bookmark/BookmarkThread;

    move-result-object p0

    return-object p0

    :pswitch_c
    new-instance p0, Lcom/sec/android/app/sbrowser/si_log/scheduler/SILoggingScheduler;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/si_log/scheduler/SILoggingScheduler;-><init>()V

    return-object p0

    :pswitch_d
    invoke-static {}, Lcom/sec/android/app/sbrowser/si_log/model/client/SILogClient$Companion;->a()Lcom/sec/android/app/sbrowser/si_log/model/client/SILogClient;

    move-result-object p0

    return-object p0

    :pswitch_e
    invoke-static {}, Lcom/sec/android/app/sbrowser/si_log/model/SILogPreference;->a()Lcom/sec/android/app/sbrowser/si_log/model/SILogPreference;

    move-result-object p0

    return-object p0

    :pswitch_f
    invoke-static {}, Lcom/sec/android/app/sbrowser/settings/search/SettingSearchData;->a()Lcom/sec/android/app/sbrowser/settings/search/SettingSearchData;

    move-result-object p0

    return-object p0

    :pswitch_10
    invoke-static {}, Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchHandler;->a()Lcom/sec/android/app/sbrowser/settings/notifications/search/NotificationSearchHandler;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onPreferenceClick(Landroidx/preference/Preference;)Z
    .locals 0

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/settings/debug/QuickAccessSiteItemUpdaterDebugFragment;->i(Landroidx/preference/Preference;)Z

    move-result p0

    return p0
.end method
