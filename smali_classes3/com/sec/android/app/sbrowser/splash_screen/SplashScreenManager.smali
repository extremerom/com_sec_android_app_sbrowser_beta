.class public Lcom/sec/android/app/sbrowser/splash_screen/SplashScreenManager;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private mBitmap:Landroid/graphics/Bitmap;

.field private mBitmapManager:Lcom/sec/android/app/sbrowser/splash_screen/SplashScreenBitmapManager;

.field private final mContext:Landroid/content/Context;

.field private mParentView:Landroid/view/ViewGroup;

.field private mSplashImageView:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/splash_screen/SplashScreenManager;->mContext:Landroid/content/Context;

    return-void
.end method

.method public static bridge synthetic a(Lcom/sec/android/app/sbrowser/splash_screen/SplashScreenManager;)Lcom/sec/android/app/sbrowser/splash_screen/SplashScreenBitmapManager;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/splash_screen/SplashScreenManager;->mBitmapManager:Lcom/sec/android/app/sbrowser/splash_screen/SplashScreenBitmapManager;

    return-object p0
.end method

.method public static bridge synthetic b(Lcom/sec/android/app/sbrowser/splash_screen/SplashScreenManager;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/splash_screen/SplashScreenManager;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static bridge synthetic c(Lcom/sec/android/app/sbrowser/splash_screen/SplashScreenManager;Lcom/sec/android/app/sbrowser/splash_screen/SplashScreenBitmapManager;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/splash_screen/SplashScreenManager;->mBitmapManager:Lcom/sec/android/app/sbrowser/splash_screen/SplashScreenBitmapManager;

    return-void
.end method

.method private captureBitmap(Landroid/view/View;)Landroid/graphics/Bitmap;
    .locals 5
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const-string p0, "SplashScreenManager"

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v1

    const/4 v2, 0x0

    if-lez v0, :cond_2

    if-gtz v1, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    sget-object v4, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v0, v1, v4}, Landroid/graphics/Bitmap;->createBitmap(Landroid/util/DisplayMetrics;IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v0, :cond_1

    const-string p1, "Bitmap.createBitmap failed!"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    :cond_1
    new-instance p0, Landroid/graphics/Canvas;

    invoke-direct {p0, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {p1, p0}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {p0, v2}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    return-object v0

    :catch_0
    move-exception p1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Bitmap.createBitmap failed! : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_0
    return-object v2
.end method

.method private clear()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/splash_screen/SplashScreenManager;->mBitmapManager:Lcom/sec/android/app/sbrowser/splash_screen/SplashScreenBitmapManager;

    if-nez v0, :cond_0

    new-instance v0, Lcom/sec/android/app/sbrowser/splash_screen/SplashScreenBitmapManager;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/splash_screen/SplashScreenManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/sec/android/app/sbrowser/splash_screen/SplashScreenBitmapManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/splash_screen/SplashScreenManager;->mBitmapManager:Lcom/sec/android/app/sbrowser/splash_screen/SplashScreenBitmapManager;

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/splash_screen/SplashScreenManager;->mBitmapManager:Lcom/sec/android/app/sbrowser/splash_screen/SplashScreenBitmapManager;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/splash_screen/SplashScreenBitmapManager;->clearBitmapCache()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/splash_screen/SplashScreenManager;->mParentView:Landroid/view/ViewGroup;

    return-void
.end method

.method private shouldSupport()Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/splash_screen/SplashScreenManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/device/TabletDeviceUtils;->isTablet(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/NetDeviceUtils;->isNetworkAvailable()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->isLandscape()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/SystemSettings;->isUltraPowerSavingMode()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/splash_screen/SplashScreenManager;->mContext:Landroid/content/Context;

    check-cast p0, Landroid/app/Activity;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/device/DeviceSettings;->isInMultiWindowMode(Landroid/app/Activity;)Z

    move-result p0

    if-nez p0, :cond_1

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DeviceFeatureUtils;->getInstance()Lcom/sec/android/app/sbrowser/common/device/DeviceFeatureUtils;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/device/DeviceFeatureUtils;->isFullScreenEnabled()Z

    move-result p0

    if-nez p0, :cond_1

    invoke-static {}, Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager;->getInstance()Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/multi_instance/MultiInstanceManager;->size()I

    move-result p0

    const/4 v0, 0x1

    if-gt p0, v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public hideSplashScreenIfNeeded()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/splash_screen/SplashScreenManager;->mSplashImageView:Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/splash_screen/SplashScreenManager;->mParentView:Landroid/view/ViewGroup;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "SplashScreenManager"

    const-string v1, "hideSplashScreen"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/splash_screen/SplashScreenManager;->mParentView:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/splash_screen/SplashScreenManager;->mSplashImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/splash_screen/SplashScreenManager;->mSplashImageView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/splash_screen/SplashScreenManager;->mSplashImageView:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/splash_screen/SplashScreenManager;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/splash_screen/SplashScreenManager;->mBitmap:Landroid/graphics/Bitmap;

    :cond_1
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/splash_screen/SplashScreenManager;->clear()V

    :cond_2
    :goto_0
    return-void
.end method

.method public prepare(Landroid/view/ViewGroup;)V
    .locals 2

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->getInstance()Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->getLastLocale()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/splash_screen/SplashScreenManager;->clear()V

    return-void

    :cond_0
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->getInstance()Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->getLastDarkMode()Z

    move-result v0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;->getInstance()Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;->isDarkModeEnabled()Z

    move-result v1

    if-eq v0, v1, :cond_1

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/splash_screen/SplashScreenManager;->clear()V

    return-void

    :cond_1
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->getInstance()Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->getLastUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/utils/UrlUtils;->isNativePageUrl(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/splash_screen/SplashScreenManager;->shouldSupport()Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    new-instance v0, Lcom/sec/android/app/sbrowser/splash_screen/SplashScreenBitmapManager;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/splash_screen/SplashScreenManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/sec/android/app/sbrowser/splash_screen/SplashScreenBitmapManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/splash_screen/SplashScreenManager;->mBitmapManager:Lcom/sec/android/app/sbrowser/splash_screen/SplashScreenBitmapManager;

    const-string v1, "SplashScreen"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/splash_screen/SplashScreenBitmapManager;->getBitmapFromCache(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/splash_screen/SplashScreenManager;->mBitmap:Landroid/graphics/Bitmap;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "getBitmapFromCache : bitmap = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/splash_screen/SplashScreenManager;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SplashScreenManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/splash_screen/SplashScreenManager;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_3

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/splash_screen/SplashScreenManager;->mParentView:Landroid/view/ViewGroup;

    :cond_3
    :goto_0
    return-void
.end method

.method public showSplashScreenIfReady()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/splash_screen/SplashScreenManager;->mParentView:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    new-instance v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/splash_screen/SplashScreenManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/splash_screen/SplashScreenManager;->mSplashImageView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/splash_screen/SplashScreenManager;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/splash_screen/SplashScreenManager;->mParentView:Landroid/view/ViewGroup;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/splash_screen/SplashScreenManager;->mSplashImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public storeSplashScreenIfNeeded(Landroid/view/ViewGroup;Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "delegate.isIncognitoMode() = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p2}, Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;->isIncognitoMode()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SplashScreenManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "delegate.isNativeInitialScreen() = "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p2}, Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;->isNativeInitialScreen()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {p2}, Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;->isIncognitoMode()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p2}, Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;->isNativeInitialScreen()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/splash_screen/SplashScreenManager;->shouldSupport()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/splash_screen/SplashScreenManager;->captureBitmap(Landroid/view/View;)Landroid/graphics/Bitmap;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "bitmap = "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_1

    new-instance p2, Ljava/lang/Thread;

    new-instance v0, Lcom/sec/android/app/sbrowser/splash_screen/SplashScreenManager$1;

    invoke-direct {v0, p0, p1}, Lcom/sec/android/app/sbrowser/splash_screen/SplashScreenManager$1;-><init>(Lcom/sec/android/app/sbrowser/splash_screen/SplashScreenManager;Landroid/graphics/Bitmap;)V

    invoke-direct {p2, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {p2}, Ljava/lang/Thread;->start()V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/splash_screen/SplashScreenManager;->mBitmapManager:Lcom/sec/android/app/sbrowser/splash_screen/SplashScreenBitmapManager;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/splash_screen/SplashScreenBitmapManager;->clearBitmapCache()V

    :cond_1
    :goto_0
    return-void
.end method
