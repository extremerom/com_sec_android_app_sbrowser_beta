.class public Lcom/sec/terrace/browser/shortcut_helper/TinShortcutHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/terrace/browser/shortcut_helper/TinShortcutHelper$TinShortcutHelperClient;,
        Lcom/sec/terrace/browser/shortcut_helper/TinShortcutHelper$Delegate;,
        Lcom/sec/terrace/browser/shortcut_helper/TinShortcutHelper$Natives;
    }
.end annotation


# static fields
.field private static sDelegate:Lcom/sec/terrace/browser/shortcut_helper/TinShortcutHelper$Delegate;

.field private static sFullScreenAction:Ljava/lang/String;

.field private static sGeneratedIconSize:I

.field private static sHomeIconSize:I

.field private static sShortcutHelperClient:Lcom/sec/terrace/browser/shortcut_helper/TinShortcutHelper$TinShortcutHelperClient;

.field private static sTitle:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/sec/terrace/browser/shortcut_helper/TinShortcutHelper$Delegate;

    invoke-direct {v0}, Lcom/sec/terrace/browser/shortcut_helper/TinShortcutHelper$Delegate;-><init>()V

    sput-object v0, Lcom/sec/terrace/browser/shortcut_helper/TinShortcutHelper;->sDelegate:Lcom/sec/terrace/browser/shortcut_helper/TinShortcutHelper$Delegate;

    return-void
.end method

.method public static bridge synthetic a()Lcom/sec/terrace/browser/shortcut_helper/TinShortcutHelper$Delegate;
    .locals 1

    sget-object v0, Lcom/sec/terrace/browser/shortcut_helper/TinShortcutHelper;->sDelegate:Lcom/sec/terrace/browser/shortcut_helper/TinShortcutHelper$Delegate;

    return-object v0
.end method

.method private static addShortcut(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;ZI)V
    .locals 11
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    invoke-static {}, Lcom/sec/terrace/TinTerraceInternals;->getCurrentTerraceActivity()Landroid/app/Activity;

    move-result-object v0

    const/16 v1, 0xc

    move/from16 v10, p6

    if-ne v10, v1, :cond_0

    invoke-static {}, Lcom/sec/terrace/TinTerraceInternals;->getLastTrackedFocusedActivity()Landroid/app/Activity;

    move-result-object v0

    :cond_0
    move-object v3, v0

    if-nez v3, :cond_1

    return-void

    :cond_1
    sget-object v2, Lcom/sec/terrace/browser/shortcut_helper/TinShortcutHelper;->sShortcutHelperClient:Lcom/sec/terrace/browser/shortcut_helper/TinShortcutHelper$TinShortcutHelperClient;

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    move-object v8, p4

    move/from16 v9, p5

    move/from16 v10, p6

    invoke-interface/range {v2 .. v10}, Lcom/sec/terrace/browser/shortcut_helper/TinShortcutHelper$TinShortcutHelperClient;->addShortcutWithRenameDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;ZI)V

    return-void
.end method

.method private static addShortcutWithShortcutManager(Ljava/lang/String;Landroid/graphics/Bitmap;ZLandroid/content/Intent;Landroid/content/Context;)V
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x1a
    .end annotation

    const-string v0, "addShortcutWithShortcutManager supported for Android O"

    const-string v1, "TinShortcutHelper"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "com.sec.terrace.browser.webapp_id"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz p2, :cond_0

    invoke-static {p1}, Landroid/graphics/drawable/Icon;->createWithAdaptiveBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Icon;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-static {p1}, Landroid/graphics/drawable/Icon;->createWithBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Icon;

    move-result-object p1

    :goto_0
    new-instance p2, Landroid/content/pm/ShortcutInfo$Builder;

    invoke-direct {p2, p4, v0}, Landroid/content/pm/ShortcutInfo$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {p2, p0}, Landroid/content/pm/ShortcutInfo$Builder;->setShortLabel(Ljava/lang/CharSequence;)Landroid/content/pm/ShortcutInfo$Builder;

    move-result-object p2

    invoke-virtual {p2, p0}, Landroid/content/pm/ShortcutInfo$Builder;->setLongLabel(Ljava/lang/CharSequence;)Landroid/content/pm/ShortcutInfo$Builder;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/pm/ShortcutInfo$Builder;->setIcon(Landroid/graphics/drawable/Icon;)Landroid/content/pm/ShortcutInfo$Builder;

    move-result-object p0

    invoke-virtual {p0, p3}, Landroid/content/pm/ShortcutInfo$Builder;->setIntent(Landroid/content/Intent;)Landroid/content/pm/ShortcutInfo$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/pm/ShortcutInfo$Builder;->build()Landroid/content/pm/ShortcutInfo;

    move-result-object p0

    :try_start_0
    const-class p1, Landroid/content/pm/ShortcutManager;

    invoke-virtual {p4, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/pm/ShortcutManager;

    const/4 p2, 0x0

    invoke-virtual {p1, p0, p2}, Landroid/content/pm/ShortcutManager;->requestPinShortcut(Landroid/content/pm/ShortcutInfo;Landroid/content/IntentSender;)Z
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    const-string p0, " Caught IllegalStateException, shortcut will not be added."

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method

.method private static addWebapp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;ZIIIJJJ)V
    .locals 20
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    move-object/from16 v4, p0

    move-object/from16 v3, p1

    move-object/from16 v16, p2

    move-object/from16 v2, p3

    move-object/from16 v17, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v13, p7

    move-object/from16 v1, p8

    move/from16 v14, p9

    move/from16 v7, p10

    move/from16 v8, p11

    move/from16 v15, p12

    move-wide/from16 v9, p13

    move-wide/from16 v11, p15

    move-wide/from16 v18, p17

    new-instance v0, Lcom/sec/terrace/browser/shortcut_helper/TinShortcutHelper$1;

    move-object/from16 p0, v0

    invoke-direct/range {v0 .. v19}, Lcom/sec/terrace/browser/shortcut_helper/TinShortcutHelper$1;-><init>(Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIJJLjava/lang/String;ZILjava/lang/String;Ljava/lang/String;J)V

    sget-object v0, Lorg/chromium/base/task/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    move-object/from16 v1, p0

    invoke-virtual {v1, v0}, Lorg/chromium/base/task/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;)Lorg/chromium/base/task/AsyncTask;

    return-void
.end method

.method public static bridge synthetic b(Ljava/lang/String;Landroid/graphics/Bitmap;ZLandroid/content/Intent;Landroid/app/Activity;)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/sec/terrace/browser/shortcut_helper/TinShortcutHelper;->addShortcutWithShortcutManager(Ljava/lang/String;Landroid/graphics/Bitmap;ZLandroid/content/Intent;Landroid/content/Context;)V

    return-void
.end method

.method public static bridge synthetic c(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;Landroid/content/Intent;)Landroid/content/Intent;
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/sec/terrace/browser/shortcut_helper/TinShortcutHelper;->createAddToHomeIntent(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method private static createAddToHomeIntent(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;Landroid/content/Intent;)Landroid/content/Intent;
    .locals 3

    const-string v0, "createAddToHomeIntent"

    const-string v1, "TinShortcutHelper"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sput-object p1, Lcom/sec/terrace/browser/shortcut_helper/TinShortcutHelper;->sTitle:Ljava/lang/String;

    new-instance p1, Landroid/content/Intent;

    const-string v0, "com.android.launcher.action.INSTALL_SHORTCUT"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v0, "android.intent.extra.shortcut.INTENT"

    invoke-virtual {p1, v0, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v0, "android.intent.extra.shortcut.NAME"

    sget-object v2, Lcom/sec/terrace/browser/shortcut_helper/TinShortcutHelper;->sTitle:Ljava/lang/String;

    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "android.intent.extra.shortcut.ICON"

    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    if-nez p0, :cond_1

    :cond_0
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p0

    if-nez p0, :cond_1

    const-string p0, "urlBookmark is null"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    return-object p1
.end method

.method private static createHomeScreenIconBitmap(Landroid/content/Context;)Landroid/graphics/Bitmap;
    .locals 2

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/sec/terrace/R$dimen;->shortcut_home_icon_size_dp:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/terrace/browser/shortcut_helper/TinShortcutHelper;->sHomeIconSize:I

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcom/sec/terrace/R$dimen;->shortcut_gen_icon_size_dp:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p0

    float-to-int p0, p0

    sput p0, Lcom/sec/terrace/browser/shortcut_helper/TinShortcutHelper;->sGeneratedIconSize:I

    :try_start_0
    sget p0, Lcom/sec/terrace/browser/shortcut_helper/TinShortcutHelper;->sHomeIconSize:I

    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p0, p0, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const-string p0, "TinShortcutHelper"

    const-string v0, "OutOfMemoryError while creating bitmap for home screen icon."

    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method public static createHomeScreenIconFromWebIcon(Landroid/graphics/Bitmap;Z)Landroid/graphics/Bitmap;
    .locals 2
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    if-eqz p1, :cond_0

    invoke-static {p0}, Lcom/sec/terrace/browser/shortcut_helper/TinShortcutHelper;->createHomeScreenIconFromWebIconForMaskable(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-static {}, Lorg/chromium/base/ContextUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/sec/terrace/browser/shortcut_helper/TinShortcutHelper;->createHomeScreenIconBitmap(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object p1

    if-nez p1, :cond_1

    return-object p0

    :cond_1
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, p1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-static {}, Lorg/chromium/base/ContextUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p0, v0}, Lcom/sec/terrace/browser/shortcut_helper/TinShortcutHelper;->drawTouchIconToCanvas(Landroid/content/Context;Landroid/graphics/Bitmap;Landroid/graphics/Canvas;)V

    return-object p1
.end method

.method private static createHomeScreenIconFromWebIconForMaskable(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 5

    invoke-static {}, Lorg/chromium/base/ContextUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "activity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    invoke-virtual {v0}, Landroid/app/ActivityManager;->getLauncherLargeIconSize()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x3fa00000    # 1.25f

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    new-instance v1, Landroid/graphics/Rect;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v2, v0, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    const v2, 0x3e1e412c

    int-to-float v3, v0

    mul-float/2addr v3, v2

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v2

    mul-int/lit8 v3, v2, 0x2

    add-int/2addr v3, v0

    invoke-virtual {v1, v2, v2}, Landroid/graphics/Rect;->offset(II)V

    :try_start_0
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v3, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    new-instance v3, Landroid/graphics/Paint;

    const/4 v4, 0x1

    invoke-direct {v3, v4}, Landroid/graphics/Paint;-><init>(I)V

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    const/4 v4, 0x0

    invoke-virtual {v2, p0, v4, v1, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    return-object v0

    :catch_0
    const-string v0, "TinShortcutHelper"

    const-string v1, "OutOfMemoryError while creating bitmap for home screen icon."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0
.end method

.method public static createWebappShortcutIntent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIJJZZ)Landroid/content/Intent;
    .locals 5

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    invoke-static {}, Lorg/chromium/base/ContextUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    move-object v2, p1

    invoke-virtual {v1, p1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "com.sec.terrace.browser.webapp_id"

    move-object v3, p0

    invoke-virtual {v1, v2, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "com.sec.terrace.browser.webapp_url"

    move-object v3, p2

    invoke-virtual {v1, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "com.sec.terrace.browser.webapp_scope"

    move-object v3, p3

    invoke-virtual {v1, v2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "com.sec.terrace.browser.webapp_name"

    move-object v3, p4

    invoke-virtual {v1, v2, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "com.sec.terrace.browser.webapp_short_name"

    move-object v3, p5

    invoke-virtual {v1, v2, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "com.sec.terrace.browser.webapp_icon"

    move-object v3, p6

    invoke-virtual {v1, v2, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "com.sec.terrace.browser.webapp_shortcut_version"

    move v3, p7

    invoke-virtual {v1, v2, p7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "com.sec.terrace.browser.webapp_display_mode"

    move v3, p8

    invoke-virtual {v1, v2, p8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "org.chromium.content_public.common.orientation"

    move v3, p9

    invoke-virtual {v1, v2, p9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "com.sec.terrace.browser.theme_color"

    move-wide v3, p10

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "com.sec.terrace.browser.background_color"

    move-wide/from16 v3, p12

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "com.sec.terrace.browser.is_icon_generated"

    move/from16 v3, p14

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "com.sec.terrace.browser.webapp_icon_adaptive"

    move/from16 v3, p15

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    return-object v0
.end method

.method public static createWebappShortcutIntentForTesting(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    .locals 16
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    invoke-static/range {p1 .. p1}, Lcom/sec/terrace/browser/shortcut_helper/TinShortcutHelper;->getScopeFromUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/4 v1, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x2

    const/4 v8, 0x3

    const/4 v9, 0x0

    const-wide/16 v10, 0x0

    const-wide/16 v12, 0x0

    move-object/from16 v0, p0

    move-object/from16 v2, p1

    invoke-static/range {v0 .. v15}, Lcom/sec/terrace/browser/shortcut_helper/TinShortcutHelper;->createWebappShortcutIntent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIJJZZ)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public static bridge synthetic d(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lcom/sec/terrace/browser/shortcut_helper/TinShortcutHelper;->getEncodedMac(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static decodeBitmapFromString(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 2

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p0

    array-length v1, p0

    invoke-static {p0, v0, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static doesOriginContainAnyInstalledWebApk(Ljava/lang/String;)Z
    .locals 2
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    invoke-static {}, Lcom/sec/terrace/browser/webapps/TerraceWebappRegistry;->getInstance()Lcom/sec/terrace/browser/webapps/TerraceWebappRegistry;

    move-result-object v0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/sec/terrace/browser/webapps/TerraceWebappRegistry;->hasAtLeastOneWebApkForOrigin(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private static drawTouchIconToCanvas(Landroid/content/Context;Landroid/graphics/Bitmap;Landroid/graphics/Canvas;)V
    .locals 4

    sget p0, Lcom/sec/terrace/browser/shortcut_helper/TinShortcutHelper;->sHomeIconSize:I

    sget v0, Lcom/sec/terrace/browser/shortcut_helper/TinShortcutHelper;->sGeneratedIconSize:I

    sub-int/2addr p0, v0

    div-int/lit8 p0, p0, 0x2

    new-instance v0, Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    const/4 v3, 0x0

    invoke-direct {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v1, Landroid/graphics/Rect;

    sget v2, Lcom/sec/terrace/browser/shortcut_helper/TinShortcutHelper;->sGeneratedIconSize:I

    add-int v3, v2, p0

    add-int/2addr v2, p0

    invoke-direct {v1, p0, p0, v3, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance p0, Landroid/graphics/Paint;

    const/4 v2, 0x1

    invoke-direct {p0, v2}, Landroid/graphics/Paint;-><init>(I)V

    invoke-virtual {p0, v2}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    invoke-virtual {p2, p1, v0, v1, p0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    return-void
.end method

.method public static bridge synthetic e(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lcom/sec/terrace/browser/shortcut_helper/TinShortcutHelper;->getUrlDomainName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static encodeBitmapAsString(Landroid/graphics/Bitmap;)Ljava/lang/String;
    .locals 3

    if-nez p0, :cond_0

    const-string p0, ""

    return-object p0

    :cond_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v2, 0x64

    invoke-virtual {p0, v1, v2, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic f(Landroid/app/Activity;)Z
    .locals 0

    invoke-static {p0}, Lcom/sec/terrace/browser/shortcut_helper/TinShortcutHelper;->isRequestPinShortcutSupported(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method public static generateHomeScreenIcon(Ljava/lang/String;III)Landroid/graphics/Bitmap;
    .locals 11
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    invoke-static {}, Lorg/chromium/base/ContextUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/terrace/browser/shortcut_helper/TinShortcutHelper;->createHomeScreenIconBitmap(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    sget v3, Lcom/sec/terrace/browser/shortcut_helper/TinShortcutHelper;->sHomeIconSize:I

    sget v4, Lcom/sec/terrace/browser/shortcut_helper/TinShortcutHelper;->sGeneratedIconSize:I

    sub-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    invoke-static {}, Lorg/chromium/base/ContextUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/sec/terrace/R$dimen;->shortcut_gen_icon_font_size_dp:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    invoke-static {p1, p2, p3}, Landroid/graphics/Color;->rgb(III)I

    move-result v9

    new-instance p1, Lcom/sec/terrace/browser/widget/TinRoundedIconGenerator;

    sget v7, Lcom/sec/terrace/browser/shortcut_helper/TinShortcutHelper;->sGeneratedIconSize:I

    const/4 v8, 0x0

    int-to-float v10, v4

    move-object v5, p1

    move v6, v7

    invoke-direct/range {v5 .. v10}, Lcom/sec/terrace/browser/widget/TinRoundedIconGenerator;-><init>(IIIIF)V

    invoke-virtual {p1, p0}, Lcom/sec/terrace/browser/widget/TinRoundedIconGenerator;->generateIconForUrl(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p0

    if-nez p0, :cond_1

    return-object v1

    :cond_1
    int-to-float p1, v3

    invoke-virtual {v2, p0, p1, p1, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    return-object v0
.end method

.method private static getEncodedMac(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lcom/sec/terrace/browser/webapps/TinWebappAuthenticator;->getMacForUrl(Ljava/lang/String;)[B

    move-result-object p0

    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static getIconSizes()[I
    .locals 1
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    invoke-static {}, Lorg/chromium/base/ContextUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/terrace/browser/shortcut_helper/TinShortcutHelper;->getIdealHomescreenIconSizeInPx(Landroid/content/Context;)I

    move-result v0

    filled-new-array {v0}, [I

    move-result-object v0

    return-object v0
.end method

.method public static getIdealHomescreenIconSizeInPx(Landroid/content/Context;)I
    .locals 1

    sget v0, Lcom/sec/terrace/R$dimen;->webapp_home_screen_icon_size:I

    invoke-static {p0, v0}, Lcom/sec/terrace/browser/shortcut_helper/TinShortcutHelper;->getSizeFromResourceInPx(Landroid/content/Context;I)I

    move-result p0

    return p0
.end method

.method public static getOriginsWithInstalledWebApksOrTwas()[Ljava/lang/String;
    .locals 2
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    invoke-static {}, Lcom/sec/terrace/browser/webapps/TerraceWebappRegistry;->getInstance()Lcom/sec/terrace/browser/webapps/TerraceWebappRegistry;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/terrace/browser/webapps/TerraceWebappRegistry;->getOriginsWithInstalledApp()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method public static getScopeFromUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    invoke-virtual {p0}, Landroid/net/Uri;->getEncodedPath()Ljava/lang/String;

    move-result-object v0

    const-string v1, "/"

    if-nez v0, :cond_0

    const/4 v2, -0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    :goto_0
    if-gez v2, :cond_1

    move-object v0, v1

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v2, v1, :cond_2

    const/4 v1, 0x0

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :cond_2
    :goto_1
    invoke-virtual {p0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/net/Uri$Builder;->encodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    const-string v0, ""

    invoke-virtual {p0, v0}, Landroid/net/Uri$Builder;->fragment(Ljava/lang/String;)Landroid/net/Uri$Builder;

    invoke-virtual {p0, v0}, Landroid/net/Uri$Builder;->query(Ljava/lang/String;)Landroid/net/Uri$Builder;

    invoke-virtual {p0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p0

    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static getSizeFromResourceInPx(Landroid/content/Context;I)I
    .locals 0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p0

    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    return p0
.end method

.method private static getUrlDomainName(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const-string v0, ""

    if-eqz p0, :cond_4

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    const-string v1, "://"

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    add-int/lit8 v1, v1, 0x3

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    move-object v1, p0

    :goto_0
    const/16 v3, 0x2f

    invoke-virtual {v1, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    if-eq v3, v2, :cond_2

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    :cond_2
    const-string v2, "^www.*?\\."

    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "www."

    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "m."

    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "mobile."

    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_3

    return-object v0

    :cond_3
    return-object p0

    :cond_4
    :goto_1
    return-object v0
.end method

.method private static isIconLargeEnoughForLauncher(II)Z
    .locals 2
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    invoke-static {}, Lorg/chromium/base/ContextUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "activity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    invoke-virtual {v0}, Landroid/app/ActivityManager;->getLauncherLargeIconSize()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    if-lt p0, v0, :cond_0

    if-lt p1, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static isRequestPinShortcutSupported(Landroid/content/Context;)Z
    .locals 2

    const-string v0, "TinShortcutHelper"

    const-string v1, "isRequestPinShortcutSupported"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-class v0, Landroid/content/pm/ShortcutManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/pm/ShortcutManager;

    invoke-virtual {p0}, Landroid/content/pm/ShortcutManager;->isRequestPinShortcutSupported()Z

    move-result p0

    return p0
.end method

.method private static queryWebApkPackage(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    invoke-static {}, Lorg/chromium/base/ContextUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/sec/terrace/browser/webapps/TinWebApkValidator;->queryWebApkPackage(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static setClient(Lcom/sec/terrace/browser/shortcut_helper/TinShortcutHelper$TinShortcutHelperClient;)V
    .locals 0

    sput-object p0, Lcom/sec/terrace/browser/shortcut_helper/TinShortcutHelper;->sShortcutHelperClient:Lcom/sec/terrace/browser/shortcut_helper/TinShortcutHelper$TinShortcutHelperClient;

    return-void
.end method

.method public static setDelegate(Lcom/sec/terrace/browser/shortcut_helper/TinShortcutHelper$Delegate;)V
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    sput-object p0, Lcom/sec/terrace/browser/shortcut_helper/TinShortcutHelper;->sDelegate:Lcom/sec/terrace/browser/shortcut_helper/TinShortcutHelper$Delegate;

    return-void
.end method

.method public static setFullScreenAction(Ljava/lang/String;)V
    .locals 0

    sput-object p0, Lcom/sec/terrace/browser/shortcut_helper/TinShortcutHelper;->sFullScreenAction:Ljava/lang/String;

    return-void
.end method

.method private static storeWebappSplashImage(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 2
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    invoke-static {}, Lcom/sec/terrace/browser/webapps/TerraceWebappRegistry;->getInstance()Lcom/sec/terrace/browser/webapps/TerraceWebappRegistry;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/sec/terrace/browser/webapps/TerraceWebappRegistry;->register(Ljava/lang/String;Lcom/sec/terrace/browser/webapps/TerraceWebappRegistry$FetchWebappDataStorageCallback;)V

    invoke-static {}, Lcom/sec/terrace/browser/webapps/TerraceWebappRegistry;->getInstance()Lcom/sec/terrace/browser/webapps/TerraceWebappRegistry;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sec/terrace/browser/webapps/TerraceWebappRegistry;->getWebappDataStorage(Ljava/lang/String;)Lcom/sec/terrace/browser/webapps/TerraceWebappDataStorage;

    move-result-object p0

    if-eqz p0, :cond_0

    new-instance v0, Lcom/sec/terrace/browser/shortcut_helper/TinShortcutHelper$2;

    invoke-direct {v0, p1, p0}, Lcom/sec/terrace/browser/shortcut_helper/TinShortcutHelper$2;-><init>(Landroid/graphics/Bitmap;Lcom/sec/terrace/browser/webapps/TerraceWebappDataStorage;)V

    sget-object p0, Lorg/chromium/base/task/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    invoke-virtual {v0, p0}, Lorg/chromium/base/task/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;)Lorg/chromium/base/task/AsyncTask;

    :cond_0
    return-void
.end method
