.class public Lcom/sec/android/app/sbrowser/customtabs/CustomTabIntentDataProvider;
.super Lcom/sec/terrace/browser/browserservices/intents/TerraceBrowserServicesIntentDataProvider;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/customtabs/CustomTabIntentDataProvider$LaunchSourceType;,
        Lcom/sec/android/app/sbrowser/customtabs/CustomTabIntentDataProvider$BackgroundInteractBehavior;,
        Lcom/sec/android/app/sbrowser/customtabs/CustomTabIntentDataProvider$ShareOptionLocation;
    }
.end annotation


# instance fields
.field private final mActivityType:I

.field private final mAnimationBundle:Landroid/os/Bundle;

.field private final mAutoTranslateLanguage:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private mBottombarButtons:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sec/terrace/browser/browserservices/intents/TerraceCustomButtonParams;",
            ">;"
        }
    .end annotation
.end field

.field private final mBreakPointDp:I

.field private final mClickableViewIds:[I

.field private mCloseButtonIcon:Landroid/graphics/drawable/Drawable;

.field private final mColorProvider:Lcom/sec/terrace/browser/browserservices/intents/TerraceColorProvider;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final mContentScrollMayResizeTab:Z

.field private mCustomButtonParams:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sec/terrace/browser/browserservices/intents/TerraceCustomButtonParams;",
            ">;"
        }
    .end annotation
.end field

.field private final mDefaultOrientation:I

.field private final mDisableDownload:Z

.field private final mDisableStar:Z

.field private final mEnableEmbeddedMediaExperience:Z

.field private mEnableUrlBarHiding:Z

.field private final mGsaExperimentIds:[I
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final mInitialActivityHeight:I
    .annotation build Landroidx/annotation/Px;
    .end annotation
.end field

.field private final mInitialActivityWidth:I
    .annotation build Landroidx/annotation/Px;
    .end annotation
.end field

.field private final mIntent:Landroid/content/Intent;

.field private mInteractWithBackground:Z

.field private final mIsFromMediaLauncherActivity:Z

.field private final mIsOpenedBySBrowser:Z

.field private final mIsPartialCustomTabFixedHeight:Z

.field private mIsShareIntent:Z

.field private final mIsTrustedIntent:Z

.field private final mKeepAliveServiceIntent:Landroid/content/Intent;

.field private final mMediaViewerUrl:Ljava/lang/String;

.field private mMenuEntries:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Landroid/app/PendingIntent;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mNetwork:Landroid/net/Network;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final mPartialTabToolbarCornerRadius:I
    .annotation build Landroidx/annotation/Px;
    .end annotation
.end field

.field private mRemoteViews:Landroid/widget/RemoteViews;

.field private final mRemoteViewsPendingIntent:Landroid/app/PendingIntent;

.field private final mSecondaryToolbarSwipeUpPendingIntent:Landroid/app/PendingIntent;

.field private final mSession:LH/y;

.field private mShareData:LK/a;

.field private mShareTarget:Lcom/sec/terrace/browser/browserservices/intents/TerraceWebApkShareTarget;

.field private mShowShareItemInMenu:Z

.field private final mSideSheetDecorationType:I

.field private mSideSheetRoundedCornersPosition:I

.field private final mTitleVisibilityState:I

.field private mToolbarButtons:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sec/terrace/browser/browserservices/intents/TerraceCustomButtonParams;",
            ">;"
        }
    .end annotation
.end field

.field private final mTranslateLanguage:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final mTrustedWebActivityAdditionalOrigins:Ljava/util/List;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mTrustedWebActivityDisplayMode:LI/f;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final mUiType:I

.field private mUrlToLoad:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Intent;Landroid/content/Context;I)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    invoke-direct/range {p0 .. p0}, Lcom/sec/terrace/browser/browserservices/intents/TerraceBrowserServicesIntentDataProvider;-><init>()V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, v0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabIntentDataProvider;->mMenuEntries:Ljava/util/List;

    new-instance v4, Ljava/util/ArrayList;

    const/4 v5, 0x1

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v4, v0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabIntentDataProvider;->mToolbarButtons:Ljava/util/List;

    new-instance v4, Ljava/util/ArrayList;

    const/4 v6, 0x2

    invoke-direct {v4, v6}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v4, v0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabIntentDataProvider;->mBottombarButtons:Ljava/util/List;

    iput-object v1, v0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabIntentDataProvider;->mIntent:Landroid/content/Intent;

    invoke-static/range {p1 .. p1}, LH/y;->a(Landroid/content/Intent;)LH/y;

    move-result-object v4

    iput-object v4, v0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabIntentDataProvider;->mSession:LH/y;

    invoke-static {v1, v4}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabIntentDataProvider;->isTrustedCustomTab(Landroid/content/Intent;LH/y;)Z

    move-result v7

    iput-boolean v7, v0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabIntentDataProvider;->mIsTrustedIntent:Z

    const-string v7, "android.support.customtabs.extra.EXIT_ANIMATION_BUNDLE"

    invoke-static {v1, v7}, Lcom/sec/android/app/sbrowser/common/utils/SBrowserIntentUtils;->safeGetBundleExtra(Landroid/content/Intent;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v7

    iput-object v7, v0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabIntentDataProvider;->mAnimationBundle:Landroid/os/Bundle;

    const-string v7, "android.support.customtabs.extra.KEEP_ALIVE"

    invoke-static {v1, v7}, Lcom/sec/android/app/sbrowser/common/utils/SBrowserIntentUtils;->safeGetParcelableExtra(Landroid/content/Intent;Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v7

    check-cast v7, Landroid/content/Intent;

    iput-object v7, v0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabIntentDataProvider;->mKeepAliveServiceIntent:Landroid/content/Intent;

    const-string v7, "androidx.browser.customtabs.extra.NETWORK"

    invoke-static {v1, v7}, Lcom/sec/android/app/sbrowser/common/utils/SBrowserIntentUtils;->safeGetParcelableExtra(Landroid/content/Intent;Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v7

    check-cast v7, Landroid/net/Network;

    iput-object v7, v0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabIntentDataProvider;->mNetwork:Landroid/net/Network;

    invoke-static/range {p1 .. p1}, Lcom/sec/android/app/sbrowser/externalnav/SBrowserIntentHandler;->wasIntentSenderSBrowser(Landroid/content/Intent;)Z

    move-result v7

    iput-boolean v7, v0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabIntentDataProvider;->mIsOpenedBySBrowser:Z

    const-string v7, "com.sec.android.app.sbrowser.beta.customtabs.EXTRA_UI_TYPE"

    const/4 v8, 0x0

    invoke-static {v1, v7, v8}, Lcom/sec/android/app/sbrowser/common/utils/SBrowserIntentUtils;->safeGetIntExtra(Landroid/content/Intent;Ljava/lang/String;I)I

    move-result v7

    invoke-direct {v0, v7}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabIntentDataProvider;->verifiedUiType(I)I

    move-result v7

    iput v7, v0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabIntentDataProvider;->mUiType:I

    new-instance v7, Lcom/sec/android/app/sbrowser/customtabs/CustomTabColorProviderImpl;

    invoke-direct {v7, v1, v2, v3}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabColorProviderImpl;-><init>(Landroid/content/Intent;Landroid/content/Context;I)V

    iput-object v7, v0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabIntentDataProvider;->mColorProvider:Lcom/sec/terrace/browser/browserservices/intents/TerraceColorProvider;

    invoke-direct/range {p0 .. p2}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabIntentDataProvider;->retrieveCustomButtons(Landroid/content/Intent;Landroid/content/Context;)V

    const-string v7, "android.support.customtabs.extra.ENABLE_URLBAR_HIDING"

    invoke-static {v1, v7, v8}, Lcom/sec/android/app/sbrowser/common/utils/SBrowserIntentUtils;->safeGetBooleanExtra(Landroid/content/Intent;Ljava/lang/String;Z)Z

    move-result v7

    iput-boolean v7, v0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabIntentDataProvider;->mEnableUrlBarHiding:Z

    invoke-static/range {p1 .. p1}, Lcom/sec/android/app/sbrowser/customtabs/features/partialcustomtab/PartialCustomTabIntentUtils;->getContentScrollMayResizeTab(Landroid/content/Intent;)Z

    move-result v7

    iput-boolean v7, v0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabIntentDataProvider;->mContentScrollMayResizeTab:Z

    const-string v7, "android.support.customtabs.extra.CLOSE_BUTTON_ICON"

    invoke-static {v1, v7}, Lcom/sec/android/app/sbrowser/common/utils/SBrowserIntentUtils;->safeGetParcelableExtra(Landroid/content/Intent;Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v9

    check-cast v9, Landroid/graphics/Bitmap;

    if-eqz v9, :cond_0

    invoke-direct {v0, v2, v9}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabIntentDataProvider;->checkCloseButtonSize(Landroid/content/Context;Landroid/graphics/Bitmap;)Z

    move-result v11

    if-nez v11, :cond_0

    invoke-static {v1, v7}, Lcom/sec/android/app/sbrowser/common/utils/SBrowserIntentUtils;->safeRemoveExtra(Landroid/content/Intent;Ljava/lang/String;)V

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->recycle()V

    const/4 v9, 0x0

    :cond_0
    if-eqz v9, :cond_1

    new-instance v7, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    invoke-direct {v7, v11, v9}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    iput-object v7, v0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabIntentDataProvider;->mCloseButtonIcon:Landroid/graphics/drawable/Drawable;

    :cond_1
    const-string v7, "android.support.customtabs.extra.MENU_ITEMS"

    invoke-static {v1, v7}, Lcom/sec/android/app/sbrowser/common/utils/SBrowserIntentUtils;->safeGetParcelableArrayListExtra(Landroid/content/Intent;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-direct {v0, v7}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabIntentDataProvider;->updateExtraMenuItems(Ljava/util/List;)V

    invoke-direct/range {p0 .. p2}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabIntentDataProvider;->addShareOption(Landroid/content/Intent;Landroid/content/Context;)V

    if-eqz v4, :cond_2

    const-string v4, "android.support.customtabs.extra.LAUNCH_AS_TRUSTED_WEB_ACTIVITY"

    invoke-static {v1, v4, v8}, Lcom/sec/android/app/sbrowser/common/utils/SBrowserIntentUtils;->safeGetBooleanExtra(Landroid/content/Intent;Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_2

    move v4, v6

    goto :goto_0

    :cond_2
    move v4, v5

    :goto_0
    iput v4, v0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabIntentDataProvider;->mActivityType:I

    const-string v4, "android.support.customtabs.extra.ADDITIONAL_TRUSTED_ORIGINS"

    invoke-static {v1, v4}, Lcom/sec/android/app/sbrowser/common/utils/SBrowserIntentUtils;->safeGetStringArrayListExtra(Landroid/content/Intent;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    iput-object v4, v0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabIntentDataProvider;->mTrustedWebActivityAdditionalOrigins:Ljava/util/List;

    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabIntentDataProvider;->resolveTwaDisplayMode()LI/f;

    move-result-object v4

    iput-object v4, v0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabIntentDataProvider;->mTrustedWebActivityDisplayMode:LI/f;

    const-string v4, "android.support.customtabs.extra.TITLE_VISIBILITY"

    invoke-static {v1, v4, v8}, Lcom/sec/android/app/sbrowser/common/utils/SBrowserIntentUtils;->safeGetIntExtra(Landroid/content/Intent;Ljava/lang/String;I)I

    move-result v4

    iput v4, v0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabIntentDataProvider;->mTitleVisibilityState:I

    const-string v4, "android.support.customtabs.extra.EXTRA_REMOTEVIEWS"

    invoke-static {v1, v4}, Lcom/sec/android/app/sbrowser/common/utils/SBrowserIntentUtils;->safeGetParcelableExtra(Landroid/content/Intent;Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Landroid/widget/RemoteViews;

    iput-object v4, v0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabIntentDataProvider;->mRemoteViews:Landroid/widget/RemoteViews;

    const-string v4, "android.support.customtabs.extra.EXTRA_REMOTEVIEWS_VIEW_IDS"

    invoke-static {v1, v4}, Lcom/sec/android/app/sbrowser/common/utils/SBrowserIntentUtils;->safeGetIntArrayExtra(Landroid/content/Intent;Ljava/lang/String;)[I

    move-result-object v4

    iput-object v4, v0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabIntentDataProvider;->mClickableViewIds:[I

    const-string v4, "android.support.customtabs.extra.EXTRA_REMOTEVIEWS_PENDINGINTENT"

    invoke-static {v1, v4}, Lcom/sec/android/app/sbrowser/common/utils/SBrowserIntentUtils;->safeGetParcelableExtra(Landroid/content/Intent;Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Landroid/app/PendingIntent;

    iput-object v4, v0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabIntentDataProvider;->mRemoteViewsPendingIntent:Landroid/app/PendingIntent;

    invoke-static/range {p1 .. p1}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabIntentDataProvider;->getSecondaryToolbarSwipeUpGesture(Landroid/content/Intent;)Landroid/app/PendingIntent;

    move-result-object v4

    iput-object v4, v0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabIntentDataProvider;->mSecondaryToolbarSwipeUpPendingIntent:Landroid/app/PendingIntent;

    invoke-virtual/range {p0 .. p0}, Lcom/sec/terrace/browser/browserservices/intents/TerraceBrowserServicesIntentDataProvider;->isMediaViewer()Z

    move-result v4

    if-eqz v4, :cond_3

    const-string v4, "com.sec.android.app.sbrowser.beta.customtabs.MEDIA_VIEWER_URL"

    invoke-static {v1, v4}, Lcom/sec/android/app/sbrowser/common/utils/SBrowserIntentUtils;->safeGetStringExtra(Landroid/content/Intent;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    :cond_3
    const/4 v4, 0x0

    :goto_1
    iput-object v4, v0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabIntentDataProvider;->mMediaViewerUrl:Ljava/lang/String;

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabIntentDataProvider;->isTrustedIntent()Z

    move-result v4

    if-eqz v4, :cond_4

    const-string v4, "com.sec.android.app.sbrowser.beta.customtabs.EXTRA_ENABLE_EMBEDDED_MEDIA_EXPERIENCE"

    invoke-static {v1, v4, v8}, Lcom/sec/android/app/sbrowser/common/utils/SBrowserIntentUtils;->safeGetBooleanExtra(Landroid/content/Intent;Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_4

    move v4, v5

    goto :goto_2

    :cond_4
    move v4, v8

    :goto_2
    iput-boolean v4, v0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabIntentDataProvider;->mEnableEmbeddedMediaExperience:Z

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabIntentDataProvider;->isTrustedIntent()Z

    move-result v4

    if-eqz v4, :cond_5

    const-string v4, "com.sec.android.app.sbrowser.beta.customtabs.EXTRA_BROWSER_LAUNCH_SOURCE"

    const/4 v7, -0x1

    invoke-static {v1, v4, v7}, Lcom/sec/android/app/sbrowser/common/utils/SBrowserIntentUtils;->safeGetIntExtra(Landroid/content/Intent;Ljava/lang/String;I)I

    move-result v4

    const/4 v7, 0x3

    if-ne v4, v7, :cond_5

    move v4, v5

    goto :goto_3

    :cond_5
    move v4, v8

    :goto_3
    iput-boolean v4, v0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabIntentDataProvider;->mIsFromMediaLauncherActivity:Z

    const-string v4, "org.chromium.chrome.browser.customtabs.EXTRA_DISABLE_STAR_BUTTON"

    invoke-virtual {v1, v4, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, v0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabIntentDataProvider;->mDisableStar:Z

    const-string v4, "org.chromium.chrome.browser.customtabs.EXTRA_DISABLE_DOWNLOAD_BUTTON"

    invoke-virtual {v1, v4, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, v0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabIntentDataProvider;->mDisableDownload:Z

    invoke-static/range {p1 .. p1}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabIntentDataProvider;->getTranslateLanguage(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabIntentDataProvider;->mTranslateLanguage:Ljava/lang/String;

    const-string v4, "androidx.browser.customtabs.extra.AUTO_TRANSLATE_LANGUAGE"

    invoke-static {v1, v4}, Lcom/sec/android/app/sbrowser/common/utils/SBrowserIntentUtils;->safeGetStringExtra(Landroid/content/Intent;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabIntentDataProvider;->mAutoTranslateLanguage:Ljava/lang/String;

    const-string v4, "androidx.browser.trusted.extra.SCREEN_ORIENTATION"

    invoke-static {v1, v4, v8}, Lcom/sec/android/app/sbrowser/common/utils/SBrowserIntentUtils;->safeGetIntExtra(Landroid/content/Intent;Ljava/lang/String;I)I

    move-result v4

    invoke-static {v4}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabIntentDataProvider;->convertOrientationType(I)I

    move-result v4

    iput v4, v0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabIntentDataProvider;->mDefaultOrientation:I

    const-string v4, "org.chromium.chrome.browser.customtabs.AGA_EXPERIMENT_IDS"

    invoke-static {v1, v4}, Lcom/sec/android/app/sbrowser/common/utils/SBrowserIntentUtils;->safeGetIntArrayExtra(Landroid/content/Intent;Ljava/lang/String;)[I

    move-result-object v4

    iput-object v4, v0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabIntentDataProvider;->mGsaExperimentIds:[I

    invoke-static {}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabsConnection;->getInstance()Lcom/sec/android/app/sbrowser/customtabs/CustomTabsConnection;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabsConnection;->setupDynamicFeatures(Landroid/content/Intent;)Z

    move-result v4

    invoke-static/range {p1 .. p1}, Lcom/sec/android/app/sbrowser/customtabs/features/partialcustomtab/PartialCustomTabIntentUtils;->getActivityBreakPointFromIntent(Landroid/content/Intent;)I

    move-result v7

    iput v7, v0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabIntentDataProvider;->mBreakPointDp:I

    invoke-static/range {p1 .. p1}, Lcom/sec/android/app/sbrowser/customtabs/features/partialcustomtab/PartialCustomTabIntentUtils;->getInitialActivityHeightFromIntent(Landroid/content/Intent;)I

    move-result v7

    iput v7, v0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabIntentDataProvider;->mInitialActivityHeight:I

    invoke-static/range {p1 .. p1}, Lcom/sec/android/app/sbrowser/customtabs/features/partialcustomtab/PartialCustomTabIntentUtils;->getInitialActivityWidthFromIntent(Landroid/content/Intent;)I

    move-result v7

    iput v7, v0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabIntentDataProvider;->mInitialActivityWidth:I

    invoke-static {v2, v1}, Lcom/sec/android/app/sbrowser/customtabs/features/partialcustomtab/PartialCustomTabIntentUtils;->getToolbarCornerRadiusFromIntent(Landroid/content/Context;Landroid/content/Intent;)I

    move-result v2

    iput v2, v0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabIntentDataProvider;->mPartialTabToolbarCornerRadius:I

    const-string v2, "androidx.browser.customtabs.extra.ACTIVITY_HEIGHT_RESIZE_BEHAVIOR"

    invoke-static {v1, v2, v8}, Lcom/sec/android/app/sbrowser/common/utils/SBrowserIntentUtils;->safeGetIntExtra(Landroid/content/Intent;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v6, :cond_6

    move v2, v5

    goto :goto_4

    :cond_6
    move v2, v8

    :goto_4
    iput-boolean v2, v0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabIntentDataProvider;->mIsPartialCustomTabFixedHeight:Z

    const-string v2, "androidx.browser.customtabs.extra.DISABLE_BACKGROUND_INTERACTION"

    invoke-virtual {v1, v2, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    xor-int/2addr v2, v5

    iput-boolean v2, v0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabIntentDataProvider;->mInteractWithBackground:Z

    invoke-static/range {p1 .. p1}, Lcom/sec/android/app/sbrowser/customtabs/features/partialcustomtab/PartialCustomTabIntentUtils;->hasBackgroundInteractBehavior(Landroid/content/Intent;)Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-static/range {p1 .. p1}, Lcom/sec/android/app/sbrowser/customtabs/features/partialcustomtab/PartialCustomTabIntentUtils;->getBackgroundInteractBehavior(Landroid/content/Intent;)I

    move-result v2

    if-eq v2, v6, :cond_7

    move v8, v5

    :cond_7
    iput-boolean v8, v0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabIntentDataProvider;->mInteractWithBackground:Z

    :cond_8
    invoke-static/range {p1 .. p1}, Lcom/sec/android/app/sbrowser/customtabs/features/partialcustomtab/PartialCustomTabIntentUtils;->getActivitySideSheetDecorationTypeFromIntent(Landroid/content/Intent;)I

    move-result v2

    iput v2, v0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabIntentDataProvider;->mSideSheetDecorationType:I

    invoke-static/range {p1 .. p1}, Lcom/sec/android/app/sbrowser/customtabs/features/partialcustomtab/PartialCustomTabIntentUtils;->getActivitySideSheetRoundedCornersPositionFromIntent(Landroid/content/Intent;)I

    move-result v2

    iput v2, v0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabIntentDataProvider;->mSideSheetRoundedCornersPosition:I

    invoke-virtual/range {p0 .. p0}, Lcom/sec/terrace/browser/browserservices/intents/TerraceBrowserServicesIntentDataProvider;->isTrustedWebActivity()Z

    move-result v2

    const-string v6, "CustomTabIntentDataProvider"

    if-eqz v2, :cond_12

    const-string v2, "androidx.browser.trusted.extra.SHARE_TARGET"

    invoke-static {v1, v2}, Lcom/sec/android/app/sbrowser/common/utils/SBrowserIntentUtils;->safeGetBundleExtra(Landroid/content/Intent;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    if-eqz v2, :cond_11

    const-string v7, "androidx.browser.trusted.sharing.KEY_ACTION"

    invoke-virtual {v2, v7}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "androidx.browser.trusted.sharing.KEY_METHOD"

    invoke-virtual {v2, v8}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "androidx.browser.trusted.sharing.KEY_ENCTYPE"

    invoke-virtual {v2, v9}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v11, "androidx.browser.trusted.sharing.KEY_PARAMS"

    invoke-virtual {v2, v11}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    const-string v11, "androidx.browser.trusted.sharing.KEY_TEXT"

    const-string v12, "androidx.browser.trusted.sharing.KEY_TITLE"

    if-nez v2, :cond_9

    const/4 v5, 0x0

    goto :goto_8

    :cond_9
    const-string v13, "androidx.browser.trusted.sharing.KEY_FILES"

    invoke-virtual {v2, v13}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v13

    if-eqz v13, :cond_d

    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_5
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_e

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/os/Bundle;

    if-nez v15, :cond_b

    :cond_a
    :goto_6
    const/4 v15, 0x0

    goto :goto_7

    :cond_b
    const-string v10, "androidx.browser.trusted.sharing.KEY_FILE_NAME"

    invoke-virtual {v15, v10}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v5, "androidx.browser.trusted.sharing.KEY_ACCEPTED_TYPES"

    invoke-virtual {v15, v5}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v5

    if-eqz v10, :cond_a

    if-nez v5, :cond_c

    goto :goto_6

    :cond_c
    new-instance v15, LK/b;

    invoke-direct {v15, v10, v5}, LK/b;-><init>(Ljava/lang/String;Ljava/util/ArrayList;)V

    :goto_7
    invoke-virtual {v14, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v5, 0x1

    goto :goto_5

    :cond_d
    const/4 v14, 0x0

    :cond_e
    new-instance v5, Lo3/t;

    invoke-virtual {v2, v12}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v11}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/16 v13, 0xc

    invoke-direct {v5, v10, v13, v2, v14}, Lo3/t;-><init>(Ljava/lang/Object;ILjava/lang/Object;Ljava/lang/Object;)V

    :goto_8
    if-eqz v7, :cond_10

    if-nez v5, :cond_f

    goto :goto_9

    :cond_f
    new-instance v10, LK/c;

    invoke-direct {v10, v7, v8, v9, v5}, LK/c;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lo3/t;)V

    goto :goto_a

    :cond_10
    :goto_9
    const/4 v10, 0x0

    :goto_a
    invoke-direct {v0, v10}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabIntentDataProvider;->retrieveShareTarget(LK/c;)Lcom/sec/terrace/browser/browserservices/intents/TerraceWebApkShareTarget;

    move-result-object v2

    iput-object v2, v0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabIntentDataProvider;->mShareTarget:Lcom/sec/terrace/browser/browserservices/intents/TerraceWebApkShareTarget;

    const-string v2, "androidx.browser.trusted.extra.SHARE_DATA"

    invoke-static {v1, v2}, Lcom/sec/android/app/sbrowser/common/utils/SBrowserIntentUtils;->safeGetBundleExtra(Landroid/content/Intent;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    if-eqz v2, :cond_11

    new-instance v5, LK/a;

    invoke-virtual {v2, v12}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v11}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "androidx.browser.trusted.sharing.KEY_URIS"

    invoke-virtual {v2, v9}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-direct {v5, v7, v8, v2}, LK/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V

    iput-object v5, v0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabIntentDataProvider;->mShareData:LK/a;

    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabIntentDataProvider;->mIsShareIntent:Z

    :cond_11
    const-string v2, "isTrustedWebActivity = true"

    invoke-static {v6, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_12
    invoke-direct {v0, v1, v3, v4}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabIntentDataProvider;->logCustomTabFeatures(Landroid/content/Intent;IZ)V

    iget-object v1, v0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabIntentDataProvider;->mIntent:Landroid/content/Intent;

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabIntentDataProvider;->mSession:LH/y;

    invoke-static {v1, v0}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabIntentDataProvider;->getClientPackageNameFromSessionOrCallingActivity(Landroid/content/Intent;LH/y;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "hasNonSpoofablePackageName = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v2, 0x1

    xor-int/2addr v0, v2

    invoke-static {v6, v1, v0}, Lcom/sec/android/app/sbrowser/autofill/password/k;->A(Ljava/lang/String;Ljava/lang/StringBuilder;Z)V

    return-void
.end method

.method private addShareOption(Landroid/content/Intent;Landroid/content/Context;)V
    .locals 3

    const-string v0, "androidx.browser.customtabs.extra.SHARE_STATE"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lcom/sec/android/app/sbrowser/common/utils/SBrowserIntentUtils;->safeGetIntExtra(Landroid/content/Intent;Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x1

    if-nez v0, :cond_2

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabIntentDataProvider;->mToolbarButtons:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabIntentDataProvider;->mToolbarButtons:Ljava/util/List;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabIntentDataProvider;->getColorProvider()Lcom/sec/terrace/browser/browserservices/intents/TerraceColorProvider;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/terrace/browser/browserservices/intents/TerraceColorProvider;->getToolbarColor()I

    move-result v0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabIntentDataProvider;->getColorProvider()Lcom/sec/terrace/browser/browserservices/intents/TerraceColorProvider;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/terrace/browser/browserservices/intents/TerraceColorProvider;->hasCustomToolbarColor()Z

    move-result p0

    invoke-static {p2, v0, p0}, Lcom/sec/android/app/sbrowser/customtabs/CustomButtonParamsImpl;->createShareButton(Landroid/content/Context;IZ)Lcom/sec/terrace/browser/browserservices/intents/TerraceCustomButtonParams;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabIntentDataProvider;->logShareOptionLocation(I)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabIntentDataProvider;->mMenuEntries:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_1

    iput-boolean v2, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabIntentDataProvider;->mShowShareItemInMenu:Z

    const/4 p0, 0x2

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabIntentDataProvider;->logShareOptionLocation(I)V

    goto :goto_0

    :cond_1
    const/4 p0, 0x3

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabIntentDataProvider;->logShareOptionLocation(I)V

    goto :goto_0

    :cond_2
    if-ne v0, v2, :cond_4

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabIntentDataProvider;->mToolbarButtons:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabIntentDataProvider;->mToolbarButtons:Ljava/util/List;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabIntentDataProvider;->getColorProvider()Lcom/sec/terrace/browser/browserservices/intents/TerraceColorProvider;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/terrace/browser/browserservices/intents/TerraceColorProvider;->getToolbarColor()I

    move-result v0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabIntentDataProvider;->getColorProvider()Lcom/sec/terrace/browser/browserservices/intents/TerraceColorProvider;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/terrace/browser/browserservices/intents/TerraceColorProvider;->hasCustomToolbarColor()Z

    move-result p0

    invoke-static {p2, v0, p0}, Lcom/sec/android/app/sbrowser/customtabs/CustomButtonParamsImpl;->createShareButton(Landroid/content/Context;IZ)Lcom/sec/terrace/browser/browserservices/intents/TerraceCustomButtonParams;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabIntentDataProvider;->logShareOptionLocation(I)V

    goto :goto_0

    :cond_3
    iput-boolean v2, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabIntentDataProvider;->mShowShareItemInMenu:Z

    invoke-static {v2}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabIntentDataProvider;->logShareOptionLocation(I)V

    goto :goto_0

    :cond_4
    iget-boolean p2, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabIntentDataProvider;->mIsOpenedBySBrowser:Z

    if-eqz p2, :cond_5

    iget p2, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabIntentDataProvider;->mUiType:I

    if-nez p2, :cond_5

    move v1, v2

    :cond_5
    const-string p2, "android.support.customtabs.extra.SHARE_MENU_ITEM"

    invoke-static {p1, p2, v1}, Lcom/sec/android/app/sbrowser/common/utils/SBrowserIntentUtils;->safeGetBooleanExtra(Landroid/content/Intent;Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabIntentDataProvider;->mShowShareItemInMenu:Z

    if-eqz p1, :cond_6

    invoke-static {v2}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabIntentDataProvider;->logShareOptionLocation(I)V

    goto :goto_0

    :cond_6
    const/4 p0, 0x4

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabIntentDataProvider;->logShareOptionLocation(I)V

    :goto_0
    return-void
.end method

.method private checkCloseButtonSize(Landroid/content/Context;Landroid/graphics/Bitmap;)Z
    .locals 0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x7f070239

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p1

    if-ne p1, p0, :cond_0

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p1

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static configureIntentForResizableCustomTab(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    invoke-static {p1}, LH/y;->a(Landroid/content/Intent;)LH/y;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabIntentDataProvider;->isTrustedCustomTab(Landroid/content/Intent;LH/y;)Z

    move-result v1

    invoke-static {p1, v0}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabIntentDataProvider;->getClientPackageNameFromSessionOrCallingActivity(Landroid/content/Intent;LH/y;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabIntentDataProvider;->isAllowedThirdParty(Ljava/lang/String;)Z

    move-result v0

    invoke-static {p0, p1, v1, v0}, Lcom/sec/android/app/sbrowser/customtabs/features/partialcustomtab/PartialCustomTabIntentUtils;->configureIntentForResizableCustomTab(Landroid/content/Context;Landroid/content/Intent;ZZ)V

    return-void
.end method

.method private static convertOrientationType(I)I
    .locals 3

    const/4 v0, 0x0

    packed-switch p0, :pswitch_data_0

    const-string v1, "The provided orientation is not supported, orientation = "

    const-string v2, "CustomTabIntentDataProvider"

    invoke-static {p0, v1, v2}, LV0/c;->y(ILjava/lang/String;Ljava/lang/String;)V

    return v0

    :pswitch_0
    const/16 p0, 0x8

    return p0

    :pswitch_1
    const/4 p0, 0x7

    return p0

    :pswitch_2
    const/4 p0, 0x6

    return p0

    :pswitch_3
    const/4 p0, 0x5

    return p0

    :pswitch_4
    const/4 p0, 0x4

    return p0

    :pswitch_5
    const/4 p0, 0x3

    return p0

    :pswitch_6
    const/4 p0, 0x2

    return p0

    :pswitch_7
    const/4 p0, 0x1

    return p0

    :pswitch_8
    return v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
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

.method private static getClientPackageNameFromSessionOrCallingActivity(Landroid/content/Intent;LH/y;)Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    invoke-static {}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabsConnection;->getInstance()Lcom/sec/android/app/sbrowser/customtabs/CustomTabsConnection;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabsConnection;->getClientPackageNameForSession(LH/y;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p1

    :cond_0
    const-string p1, "com.sec.android.app.sbrowser.beta.calling_activity_package"

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/common/utils/SBrowserIntentUtils;->safeGetStringExtra(Landroid/content/Intent;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private getMaxCustomToolbarItems()I
    .locals 0

    const/4 p0, 0x2

    return p0
.end method

.method private static getSecondaryToolbarSwipeUpGesture(Landroid/content/Intent;)Landroid/app/PendingIntent;
    .locals 1

    const-string v0, "androidx.browser.customtabs.extra.SECONDARY_TOOLBAR_SWIPE_UP_GESTURE"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/app/PendingIntent;

    if-nez v0, :cond_0

    const-string v0, "androidx.browser.customtabs.extra.SECONDARY_TOOLBAR_SWIPE_UP_ACTION"

    invoke-static {p0, v0}, Lcom/sec/android/app/sbrowser/common/utils/SBrowserIntentUtils;->safeGetParcelableExtra(Landroid/content/Intent;Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p0

    move-object v0, p0

    check-cast v0, Landroid/app/PendingIntent;

    :cond_0
    return-object v0
.end method

.method private static getTranslateLanguage(Landroid/content/Intent;)Ljava/lang/String;
    .locals 2

    invoke-static {p0}, LH/l;->a(Landroid/content/Intent;)Ljava/util/Locale;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabIntentDataProvider;->toLanguageTag(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v0, "androidx.browser.customtabs.extra.TRANSLATE_LANGUAGE"

    invoke-static {p0, v0}, Lcom/sec/android/app/sbrowser/common/utils/SBrowserIntentUtils;->safeGetStringExtra(Landroid/content/Intent;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method private static getUpdatedLanguageForChromium(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, -0x1

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v1, "gom"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x5

    goto :goto_0

    :sswitch_1
    const-string v1, "tl"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x4

    goto :goto_0

    :sswitch_2
    const-string v1, "jw"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x3

    goto :goto_0

    :sswitch_3
    const-string v1, "ji"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v0, 0x2

    goto :goto_0

    :sswitch_4
    const-string v1, "iw"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    goto :goto_0

    :cond_4
    const/4 v0, 0x1

    goto :goto_0

    :sswitch_5
    const-string v1, "in"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    goto :goto_0

    :cond_5
    const/4 v0, 0x0

    :goto_0
    packed-switch v0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    const-string p0, "kok"

    goto :goto_1

    :pswitch_1
    const-string p0, "fil"

    goto :goto_1

    :pswitch_2
    const-string p0, "jv"

    goto :goto_1

    :pswitch_3
    const-string p0, "yi"

    goto :goto_1

    :pswitch_4
    const-string p0, "he"

    goto :goto_1

    :pswitch_5
    const-string p0, "id"

    :goto_1
    return-object p0

    nop

    :sswitch_data_0
    .sparse-switch
        0xd25 -> :sswitch_5
        0xd2e -> :sswitch_4
        0xd3f -> :sswitch_3
        0xd4d -> :sswitch_2
        0xe78 -> :sswitch_1
        0x19085 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static isAllowedThirdParty(Ljava/lang/String;)Z
    .locals 0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method private isPageInsightsHubEnabled()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public static isTrustedCustomTab(Landroid/content/Intent;LH/y;)Z
    .locals 2

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/externalnav/SBrowserIntentHandler;->wasIntentSenderSBrowser(Landroid/content/Intent;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "com.sec.android.app.sbrowser.beta.customtabs.EXTRA_LAUNCH_WITH_READ_ARTICLES_ALOUD"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/sec/android/app/sbrowser/common/utils/SBrowserIntentUtils;->safeGetBooleanExtra(Landroid/content/Intent;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabIntentDataProvider;->getClientPackageNameFromSessionOrCallingActivity(Landroid/content/Intent;LH/y;)Ljava/lang/String;

    move-result-object p0

    invoke-static {}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabsConnection;->getInstance()Lcom/sec/android/app/sbrowser/customtabs/CustomTabsConnection;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabsConnection;->isFirstParty(Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_1
    :goto_0
    const-string p0, "CustomTabIntentDataProvider"

    const-string p1, "isTrustedIntentFromSelf : true"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    return p0
.end method

.method private logCustomTabFeatures(Landroid/content/Intent;IZ)V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "WrongConstant"
        }
    .end annotation

    invoke-static {}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabsFeatureUsage;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabsFeatureUsage;

    invoke-direct {v0}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabsFeatureUsage;-><init>()V

    const-string v1, "android.support.customtabs.extra.TINT_ACTION_BUTTON"

    invoke-static {p1, v1}, Lcom/sec/android/app/sbrowser/common/utils/SBrowserIntentUtils;->safeHasExtra(Landroid/content/Intent;Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x2

    if-eqz v1, :cond_1

    invoke-virtual {v0, v2}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabsFeatureUsage;->log(I)V

    :cond_1
    const-string v1, "com.sec.android.app.sbrowser.beta.customtabs.EXTRA_INITIAL_BACKGROUND_COLOR"

    invoke-static {p1, v1}, Lcom/sec/android/app/sbrowser/common/utils/SBrowserIntentUtils;->safeHasExtra(Landroid/content/Intent;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabsFeatureUsage;->log(I)V

    :cond_2
    iget-boolean v1, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabIntentDataProvider;->mInteractWithBackground:Z

    if-eqz v1, :cond_3

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabsFeatureUsage;->log(I)V

    :cond_3
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabIntentDataProvider;->mCloseButtonIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_4

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabsFeatureUsage;->log(I)V

    :cond_4
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabIntentDataProvider;->getCloseButtonPosition()I

    move-result v1

    if-eqz v1, :cond_5

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabsFeatureUsage;->log(I)V

    :cond_5
    if-ne p2, v2, :cond_6

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabsFeatureUsage;->log(I)V

    :cond_6
    const/4 v1, 0x1

    if-ne p2, v1, :cond_7

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabsFeatureUsage;->log(I)V

    :cond_7
    const-string v1, "androidx.browser.customtabs.extra.COLOR_SCHEME"

    invoke-static {p1, v1}, Lcom/sec/android/app/sbrowser/common/utils/SBrowserIntentUtils;->safeHasExtra(Landroid/content/Intent;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabsFeatureUsage;->log(I)V

    :cond_8
    if-nez p2, :cond_9

    const/16 p2, 0xa

    invoke-virtual {v0, p2}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabsFeatureUsage;->log(I)V

    :cond_9
    iget-boolean p2, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabIntentDataProvider;->mDisableDownload:Z

    if-eqz p2, :cond_a

    const/16 p2, 0xb

    invoke-virtual {v0, p2}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabsFeatureUsage;->log(I)V

    :cond_a
    iget-boolean p2, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabIntentDataProvider;->mDisableStar:Z

    if-eqz p2, :cond_b

    const/16 p2, 0xc

    invoke-virtual {v0, p2}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabsFeatureUsage;->log(I)V

    :cond_b
    iget-object p2, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabIntentDataProvider;->mAnimationBundle:Landroid/os/Bundle;

    if-eqz p2, :cond_c

    const/16 p2, 0xd

    invoke-virtual {v0, p2}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabsFeatureUsage;->log(I)V

    :cond_c
    iget-object p2, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabIntentDataProvider;->mGsaExperimentIds:[I

    if-eqz p2, :cond_d

    const/16 p2, 0xe

    invoke-virtual {v0, p2}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabsFeatureUsage;->log(I)V

    :cond_d
    invoke-static {p1}, Lcom/sec/android/app/sbrowser/customtabs/features/partialcustomtab/PartialCustomTabIntentUtils;->hasInitialActivityHeightPx(Landroid/content/Intent;)Z

    move-result p2

    if-eqz p2, :cond_e

    const/16 p2, 0x10

    invoke-virtual {v0, p2}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabsFeatureUsage;->log(I)V

    :cond_e
    iget-boolean p2, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabIntentDataProvider;->mEnableEmbeddedMediaExperience:Z

    if-eqz p2, :cond_f

    const/16 p2, 0x11

    invoke-virtual {v0, p2}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabsFeatureUsage;->log(I)V

    :cond_f
    iget-boolean p2, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabIntentDataProvider;->mIsFromMediaLauncherActivity:Z

    if-eqz p2, :cond_10

    const/16 p2, 0x12

    invoke-virtual {v0, p2}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabsFeatureUsage;->log(I)V

    :cond_10
    iget-object p2, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabIntentDataProvider;->mMediaViewerUrl:Ljava/lang/String;

    if-eqz p2, :cond_11

    const/16 p2, 0x13

    invoke-virtual {v0, p2}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabsFeatureUsage;->log(I)V

    :cond_11
    iget-object p2, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabIntentDataProvider;->mMenuEntries:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    if-lez p2, :cond_12

    const/16 p2, 0x14

    invoke-virtual {v0, p2}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabsFeatureUsage;->log(I)V

    :cond_12
    const-string p2, "com.sec.android.app.sbrowser.beta.calling_activity_package"

    invoke-static {p1, p2}, Lcom/sec/android/app/sbrowser/common/utils/SBrowserIntentUtils;->safeHasExtra(Landroid/content/Intent;Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_13

    const/16 p2, 0x15

    invoke-virtual {v0, p2}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabsFeatureUsage;->log(I)V

    :cond_13
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabIntentDataProvider;->getClientPackageName()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_14

    const/16 p2, 0x16

    invoke-virtual {v0, p2}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabsFeatureUsage;->log(I)V

    :cond_14
    invoke-static {p1}, Lcom/sec/android/app/sbrowser/customtabs/features/partialcustomtab/PartialCustomTabIntentUtils;->hasToolbarCornerRadiusDp(Landroid/content/Intent;)Z

    move-result p2

    if-eqz p2, :cond_15

    const/16 p2, 0x17

    invoke-virtual {v0, p2}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabsFeatureUsage;->log(I)V

    :cond_15
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabIntentDataProvider;->isPartialHeightCustomTab()Z

    move-result p2

    if-eqz p2, :cond_16

    const/16 p2, 0x18

    invoke-virtual {v0, p2}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabsFeatureUsage;->log(I)V

    :cond_16
    iget-object p2, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabIntentDataProvider;->mRemoteViewsPendingIntent:Landroid/app/PendingIntent;

    if-eqz p2, :cond_17

    const/16 p2, 0x19

    invoke-virtual {v0, p2}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabsFeatureUsage;->log(I)V

    :cond_17
    iget-object p2, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabIntentDataProvider;->mClickableViewIds:[I

    if-eqz p2, :cond_18

    const/16 p2, 0x1b

    invoke-virtual {v0, p2}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabsFeatureUsage;->log(I)V

    :cond_18
    iget-object p2, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabIntentDataProvider;->mRemoteViews:Landroid/widget/RemoteViews;

    if-eqz p2, :cond_19

    const/16 p2, 0x1c

    invoke-virtual {v0, p2}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabsFeatureUsage;->log(I)V

    :cond_19
    iget-boolean p2, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabIntentDataProvider;->mIsPartialCustomTabFixedHeight:Z

    if-nez p2, :cond_1a

    const/16 p2, 0x1d

    invoke-virtual {v0, p2}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabsFeatureUsage;->log(I)V

    :cond_1a
    iget p2, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabIntentDataProvider;->mDefaultOrientation:I

    if-eqz p2, :cond_1b

    const/16 p2, 0x1e

    invoke-virtual {v0, p2}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabsFeatureUsage;->log(I)V

    :cond_1b
    iget-boolean p2, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabIntentDataProvider;->mIsOpenedBySBrowser:Z

    if-eqz p2, :cond_1c

    const/16 p2, 0x1f

    invoke-virtual {v0, p2}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabsFeatureUsage;->log(I)V

    :cond_1c
    iget-object p2, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabIntentDataProvider;->mKeepAliveServiceIntent:Landroid/content/Intent;

    if-eqz p2, :cond_1d

    const/16 p2, 0x20

    invoke-virtual {v0, p2}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabsFeatureUsage;->log(I)V

    :cond_1d
    iget-boolean p2, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabIntentDataProvider;->mShowShareItemInMenu:Z

    if-eqz p2, :cond_1e

    const/16 p2, 0x21

    invoke-virtual {v0, p2}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabsFeatureUsage;->log(I)V

    :cond_1e
    const-string p2, "androidx.browser.customtabs.extra.SHARE_STATE"

    invoke-static {p1, p2}, Lcom/sec/android/app/sbrowser/common/utils/SBrowserIntentUtils;->safeHasExtra(Landroid/content/Intent;Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_1f

    const/16 p2, 0x22

    invoke-virtual {v0, p2}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabsFeatureUsage;->log(I)V

    :cond_1f
    iget p2, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabIntentDataProvider;->mTitleVisibilityState:I

    if-eqz p2, :cond_20

    const/16 p2, 0x23

    invoke-virtual {v0, p2}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabsFeatureUsage;->log(I)V

    :cond_20
    const-string p2, "android.support.customtabs.extra.TOOLBAR_ITEMS"

    invoke-static {p1, p2}, Lcom/sec/android/app/sbrowser/common/utils/SBrowserIntentUtils;->safeHasExtra(Landroid/content/Intent;Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_21

    const/16 p2, 0x24

    invoke-virtual {v0, p2}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabsFeatureUsage;->log(I)V

    :cond_21
    iget-object p2, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabIntentDataProvider;->mTranslateLanguage:Ljava/lang/String;

    if-eqz p2, :cond_22

    const/16 p2, 0x25

    invoke-virtual {v0, p2}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabsFeatureUsage;->log(I)V

    :cond_22
    const-string p2, "androidx.browser.trusted.extra.DISPLAY_MODE"

    invoke-static {p1, p2}, Lcom/sec/android/app/sbrowser/common/utils/SBrowserIntentUtils;->safeHasExtra(Landroid/content/Intent;Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_23

    const/16 p2, 0x26

    invoke-virtual {v0, p2}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabsFeatureUsage;->log(I)V

    :cond_23
    iget p2, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabIntentDataProvider;->mActivityType:I

    if-ne p2, v2, :cond_24

    const/16 p2, 0x27

    invoke-virtual {v0, p2}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabsFeatureUsage;->log(I)V

    :cond_24
    iget-object p2, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabIntentDataProvider;->mTrustedWebActivityAdditionalOrigins:Ljava/util/List;

    if-eqz p2, :cond_25

    const/16 p2, 0x28

    invoke-virtual {v0, p2}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabsFeatureUsage;->log(I)V

    :cond_25
    iget-boolean p2, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabIntentDataProvider;->mEnableUrlBarHiding:Z

    if-eqz p2, :cond_26

    const/16 p2, 0x29

    invoke-virtual {v0, p2}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabsFeatureUsage;->log(I)V

    :cond_26
    iget-object p2, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabIntentDataProvider;->mAutoTranslateLanguage:Ljava/lang/String;

    if-eqz p2, :cond_27

    const/16 p2, 0x2a

    invoke-virtual {v0, p2}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabsFeatureUsage;->log(I)V

    :cond_27
    if-eqz p3, :cond_28

    const/16 p2, 0x2b

    invoke-virtual {v0, p2}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabsFeatureUsage;->log(I)V

    :cond_28
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabIntentDataProvider;->isPartialWidthCustomTab()Z

    move-result p2

    if-eqz p2, :cond_29

    const/16 p2, 0x2c

    invoke-virtual {v0, p2}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabsFeatureUsage;->log(I)V

    :cond_29
    const-string p2, "androidx.browser.customtabs.extra.ACTIVITY_SIDE_SHEET_BREAKPOINT_DP"

    invoke-static {p1, p2}, Lcom/sec/android/app/sbrowser/common/utils/SBrowserIntentUtils;->safeHasExtra(Landroid/content/Intent;Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_2a

    const/16 p2, 0x2d

    invoke-virtual {v0, p2}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabsFeatureUsage;->log(I)V

    :cond_2a
    const-string p2, "androidx.browser.customtabs.extra.INITIAL_ACTIVITY_WIDTH_PX"

    invoke-static {p1, p2}, Lcom/sec/android/app/sbrowser/common/utils/SBrowserIntentUtils;->safeHasExtra(Landroid/content/Intent;Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_2b

    const/16 p2, 0x2e

    invoke-virtual {v0, p2}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabsFeatureUsage;->log(I)V

    :cond_2b
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabIntentDataProvider;->showSideSheetMaximizeButton()Z

    move-result p2

    if-eqz p2, :cond_2c

    const/16 p2, 0x2f

    invoke-virtual {v0, p2}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabsFeatureUsage;->log(I)V

    :cond_2c
    iget-object p2, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabIntentDataProvider;->mSecondaryToolbarSwipeUpPendingIntent:Landroid/app/PendingIntent;

    if-eqz p2, :cond_2d

    const/16 p2, 0x30

    invoke-virtual {v0, p2}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabsFeatureUsage;->log(I)V

    :cond_2d
    const-string p2, "androidx.browser.customtabs.extra.ACTIVITY_SIDE_SHEET_DECORATION_TYPE"

    invoke-static {p1, p2}, Lcom/sec/android/app/sbrowser/common/utils/SBrowserIntentUtils;->safeHasExtra(Landroid/content/Intent;Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_2e

    const/16 p2, 0x31

    invoke-virtual {v0, p2}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabsFeatureUsage;->log(I)V

    :cond_2e
    const-string p2, "androidx.browser.customtabs.extra.ACTIVITY_SIDE_SHEET_POSITION"

    invoke-static {p1, p2}, Lcom/sec/android/app/sbrowser/common/utils/SBrowserIntentUtils;->safeHasExtra(Landroid/content/Intent;Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_2f

    const/16 p2, 0x32

    invoke-virtual {v0, p2}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabsFeatureUsage;->log(I)V

    :cond_2f
    const-string p2, "androidx.browser.customtabs.extra.ACTIVITY_SIDE_SHEET_ROUNDED_CORNERS_POSITION"

    invoke-static {p1, p2}, Lcom/sec/android/app/sbrowser/common/utils/SBrowserIntentUtils;->safeHasExtra(Landroid/content/Intent;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_30

    const/16 p1, 0x34

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabsFeatureUsage;->log(I)V

    :cond_30
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabIntentDataProvider;->mNetwork:Landroid/net/Network;

    if-eqz p0, :cond_31

    const/16 p0, 0x3a

    invoke-virtual {v0, p0}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabsFeatureUsage;->log(I)V

    :cond_31
    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabsFeatureUsage;->printLog()V

    return-void
.end method

.method private static logShareOptionLocation(I)V
    .locals 2

    const-string v0, "logShareOptionLocation() : "

    const-string v1, "CustomTabIntentDataProvider"

    invoke-static {p0, v0, v1}, Landroidx/recyclerview/widget/P;->i(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private resolveTwaDisplayMode()LI/f;
    .locals 4
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabIntentDataProvider;->mIntent:Landroid/content/Intent;

    const-string v0, "androidx.browser.trusted.extra.DISPLAY_MODE"

    invoke-static {p0, v0}, Lcom/sec/android/app/sbrowser/common/utils/SBrowserIntentUtils;->safeGetBundleExtra(Landroid/content/Intent;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    :try_start_0
    const-string v1, "androidx.browser.trusted.displaymode.KEY_ID"

    invoke-virtual {p0, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    new-instance p0, Lz7/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto :goto_0

    :cond_1
    new-instance v1, LI/e;

    const-string v2, "androidx.browser.trusted.displaymode.KEY_STICKY"

    invoke-virtual {p0, v2}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    const-string v3, "androidx.browser.trusted.displaymode.KEY_CUTOUT_MODE"

    invoke-virtual {p0, v3}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result p0

    invoke-direct {v1, v2, p0}, LI/e;-><init>(ZI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object p0, v1

    :goto_0
    return-object p0

    :catchall_0
    return-object v0
.end method

.method private resolveUrlToLoad(Landroid/content/Intent;)Ljava/lang/String;
    .locals 2

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/externalnav/SBrowserIntentHandler;->getUrlFromIntent(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/sec/terrace/browser/browserservices/intents/TerraceBrowserServicesIntentDataProvider;->isMediaViewer()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabIntentDataProvider;->getMediaViewerUrl()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const-string v1, "file"

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object p1, p0

    :cond_0
    return-object p1
.end method

.method private retrieveCustomButtons(Landroid/content/Intent;Landroid/content/Context;)V
    .locals 2
    .param p1    # Landroid/content/Intent;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-static {p2, p1}, Lcom/sec/android/app/sbrowser/customtabs/CustomButtonParamsImpl;->fromIntent(Landroid/content/Context;Landroid/content/Intent;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabIntentDataProvider;->mCustomButtonParams:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/sec/terrace/browser/browserservices/intents/TerraceCustomButtonParams;

    invoke-interface {p2}, Lcom/sec/terrace/browser/browserservices/intents/TerraceCustomButtonParams;->showOnToolbar()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabIntentDataProvider;->mBottombarButtons:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabIntentDataProvider;->mToolbarButtons:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabIntentDataProvider;->getMaxCustomToolbarItems()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabIntentDataProvider;->mToolbarButtons:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabIntentDataProvider;->getMaxCustomToolbarItems()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    const-string v0, "Only %d items are allowed in the toolbar"

    invoke-static {v0, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "CustomTabIntentDataProvider"

    invoke-static {v0, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    return-void
.end method

.method private retrieveShareTarget(LK/c;)Lcom/sec/terrace/browser/browserservices/intents/TerraceWebApkShareTarget;
    .locals 12

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget-object p0, p1, LK/c;->d:Lo3/t;

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p1, LK/c;->b:Ljava/lang/String;

    if-eqz v2, :cond_1

    const-string v3, "POST"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    move v8, v0

    goto :goto_0

    :cond_1
    move v8, v1

    :goto_0
    iget-object v2, p1, LK/c;->c:Ljava/lang/String;

    if-eqz v2, :cond_2

    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v2, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "multipart/form-data"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    move v9, v0

    goto :goto_1

    :cond_2
    move v9, v1

    :goto_1
    iget-object v0, p0, Lo3/t;->d:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    if-nez v0, :cond_3

    move v2, v1

    goto :goto_2

    :cond_3
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    :goto_2
    new-array v10, v2, [Ljava/lang/String;

    new-array v11, v2, [[Ljava/lang/String;

    :goto_3
    if-ge v1, v2, :cond_4

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, LK/b;

    iget-object v4, v3, LK/b;->a:Ljava/lang/String;

    aput-object v4, v10, v1

    iget-object v3, v3, LK/b;->b:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    new-array v4, v4, [Ljava/lang/String;

    invoke-interface {v3, v4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    aput-object v3, v11, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_4
    new-instance v0, Lcom/sec/terrace/browser/browserservices/intents/TerraceWebApkShareTarget;

    iget-object v4, p1, LK/c;->a:Ljava/lang/String;

    iget-object p1, p0, Lo3/t;->c:Ljava/lang/Object;

    move-object v6, p1

    check-cast v6, Ljava/lang/String;

    iget-object p0, p0, Lo3/t;->b:Ljava/lang/Object;

    move-object v5, p0

    check-cast v5, Ljava/lang/String;

    const/4 v7, 0x0

    move-object v3, v0

    invoke-direct/range {v3 .. v11}, Lcom/sec/terrace/browser/browserservices/intents/TerraceWebApkShareTarget;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ[Ljava/lang/String;[[Ljava/lang/String;)V

    return-object v0
.end method

.method private static toLanguageTag(Ljava/util/Locale;)Ljava/lang/String;
    .locals 3

    invoke-virtual {p0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabIntentDataProvider;->getUpdatedLanguageForChromium(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v1

    const-string v2, "no"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "NO"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Ljava/util/Locale;->getVariant()Ljava/lang/String;

    move-result-object p0

    const-string v2, "NY"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "nn-NO"

    return-object p0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    const-string p0, "-"

    invoke-static {v0, p0, v1}, Lt/b;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method private updateExtraMenuItems(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/os/Bundle;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabIntentDataProvider;->isPageInsightsHubEnabled()Z

    move-result v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabIntentDataProvider;->mIntent:Landroid/content/Intent;

    const-string v2, "org.chromium.chrome.browser.customtabs.extra.PAGE_INSIGHTS_OVERFLOW_ITEM_TITLE"

    invoke-static {v1, v2}, Lcom/sec/android/app/sbrowser/common/utils/SBrowserIntentUtils;->safeGetStringExtra(Landroid/content/Intent;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x7

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    if-ge v2, v3, :cond_3

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Bundle;

    const-string v4, "android.support.customtabs.customaction.MENU_ITEM_TITLE"

    invoke-static {v3, v4}, Lcom/sec/android/app/sbrowser/common/utils/SBrowserIntentUtils;->safeGetString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "android.support.customtabs.customaction.PENDING_INTENT"

    invoke-static {v3, v5}, Lcom/sec/android/app/sbrowser/common/utils/SBrowserIntentUtils;->safeGetParcelable(Landroid/os/Bundle;Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/app/PendingIntent;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    if-eqz v3, :cond_2

    if-eqz v0, :cond_1

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    goto :goto_1

    :cond_1
    iget-object v5, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabIntentDataProvider;->mMenuEntries:Ljava/util/List;

    new-instance v6, Landroid/util/Pair;

    invoke-direct {v6, v4, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method private verifiedUiType(I)I
    .locals 0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabIntentDataProvider;->isTrustedIntent()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    return p1
.end method


# virtual methods
.method public canInteractWithBackground()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabIntentDataProvider;->mInteractWithBackground:Z

    return p0
.end method

.method public clickMenuItemWithUrlAndTitle(Landroid/app/Activity;ILjava/lang/String;Ljava/lang/String;)V
    .locals 10

    const-string v0, "CustomTabIntentDataProvider"

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    invoke-static {p3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p3

    invoke-virtual {v1, p3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const-string p3, "android.intent.extra.SUBJECT"

    invoke-virtual {v1, p3, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :try_start_0
    iget-object p3, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabIntentDataProvider;->mMenuEntries:Ljava/util/List;

    invoke-interface {p3, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/util/Pair;

    iget-object p3, p3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p3, Ljava/lang/String;

    iget-object p4, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabIntentDataProvider;->mMenuEntries:Ljava/util/List;

    invoke-interface {p4, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/util/Pair;

    iget-object p2, p2, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object v2, p2

    check-cast v2, Landroid/app/PendingIntent;

    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object p2

    invoke-static {p2}, Lcom/sec/terrace/base/TerraceApiCompatibilityUtils;->setActivityOptionsBackgroundActivityStartAllowAlways(Landroid/app/ActivityOptions;)V

    invoke-virtual {p0}, Lcom/sec/terrace/browser/browserservices/intents/TerraceBrowserServicesIntentDataProvider;->isMediaViewer()Z

    move-result p4

    if-eqz p4, :cond_0

    const/4 v1, 0x0

    :cond_0
    move-object v5, v1

    invoke-virtual {p2}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v9

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v3, p1

    invoke-virtual/range {v2 .. v9}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;Landroid/app/PendingIntent$OnFinished;Landroid/os/Handler;Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabIntentDataProvider;->shouldEnableEmbeddedMediaExperience()Z

    move-result p0

    if-eqz p0, :cond_1

    const p0, 0x7f140461

    invoke-virtual {p1, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p3, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_1

    const-string p0, "clickMenuItemWithUrlAndTitle.DownloadsUI.OpenWith"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p0, "Custom tab in Chrome failed to send pending intent."

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void
.end method

.method public contentScrollMayResizeTab()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabIntentDataProvider;->mContentScrollMayResizeTab:Z

    return p0
.end method

.method public getActivityBreakPoint()I
    .locals 0

    iget p0, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabIntentDataProvider;->mBreakPointDp:I

    return p0
.end method

.method public getActivitySideSheetDecorationType()I
    .locals 0

    iget p0, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabIntentDataProvider;->mSideSheetDecorationType:I

    return p0
.end method

.method public getActivitySideSheetRoundedCornersPosition()I
    .locals 0

    iget p0, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabIntentDataProvider;->mSideSheetRoundedCornersPosition:I

    return p0
.end method

.method public getActivityType()I
    .locals 0

    iget p0, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabIntentDataProvider;->mActivityType:I

    return p0
.end method

.method public getAllCustomButtons()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/sec/terrace/browser/browserservices/intents/TerraceCustomButtonParams;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabIntentDataProvider;->mCustomButtonParams:Ljava/util/List;

    return-object p0
.end method

.method public getAnimationEnterRes()I
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabIntentDataProvider;->shouldAnimateOnFinish()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabIntentDataProvider;->mAnimationBundle:Landroid/os/Bundle;

    const-string v0, "android:activity.animEnterRes"

    invoke-virtual {p0, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public getAnimationExitRes()I
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabIntentDataProvider;->shouldAnimateOnFinish()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabIntentDataProvider;->mAnimationBundle:Landroid/os/Bundle;

    const-string v0, "android:activity.animExitRes"

    invoke-virtual {p0, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public getBottomBarRemoteViews()Landroid/widget/RemoteViews;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabIntentDataProvider;->mRemoteViews:Landroid/widget/RemoteViews;

    return-object p0
.end method

.method public getClickableViewIDs()[I
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabIntentDataProvider;->mClickableViewIds:[I

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0}, [I->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [I

    return-object p0
.end method

.method public getClientPackageName()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabIntentDataProvider;->mIntent:Landroid/content/Intent;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabIntentDataProvider;->mSession:LH/y;

    invoke-static {v0, p0}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabIntentDataProvider;->getClientPackageNameFromSessionOrCallingActivity(Landroid/content/Intent;LH/y;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getCloseButtonDrawable()Landroid/graphics/drawable/Drawable;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabIntentDataProvider;->mCloseButtonIcon:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public getCloseButtonPosition()I
    .locals 2

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabIntentDataProvider;->mIntent:Landroid/content/Intent;

    const-string v0, "androidx.browser.customtabs.extra.CLOSE_BUTTON_POSITION"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/sec/android/app/sbrowser/common/utils/SBrowserIntentUtils;->safeGetIntExtra(Landroid/content/Intent;Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public getColorProvider()Lcom/sec/terrace/browser/browserservices/intents/TerraceColorProvider;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabIntentDataProvider;->mColorProvider:Lcom/sec/terrace/browser/browserservices/intents/TerraceColorProvider;

    return-object p0
.end method

.method public getCustomButtonsOnBottombar()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/sec/terrace/browser/browserservices/intents/TerraceCustomButtonParams;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabIntentDataProvider;->mBottombarButtons:Ljava/util/List;

    return-object p0
.end method

.method public getCustomButtonsOnToolbar()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/sec/terrace/browser/browserservices/intents/TerraceCustomButtonParams;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabIntentDataProvider;->mToolbarButtons:Ljava/util/List;

    return-object p0
.end method

.method public getExtraFullScreenMode()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getExtraTitle()Ljava/lang/String;
    .locals 0

    const-string p0, ""

    return-object p0
.end method

.method public getExtraTitleColor()I
    .locals 0

    const/4 p0, -0x1

    return p0
.end method

.method public getExtraTitleSize()F
    .locals 0

    const/high16 p0, -0x40800000    # -1.0f

    return p0
.end method

.method public getInitialActivityHeight()I
    .locals 2
    .annotation build Landroidx/annotation/Px;
    .end annotation

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabIntentDataProvider;->mIsTrustedIntent:Z

    iget v1, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabIntentDataProvider;->mInitialActivityHeight:I

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabIntentDataProvider;->getClientPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabIntentDataProvider;->isAllowedThirdParty(Ljava/lang/String;)Z

    move-result p0

    invoke-static {v0, v1, p0}, Lcom/sec/android/app/sbrowser/customtabs/features/partialcustomtab/PartialCustomTabIntentUtils;->getInitialActivityHeight(ZIZ)I

    move-result p0

    return p0
.end method

.method public getInitialActivityWidth()I
    .locals 2
    .annotation build Landroidx/annotation/Px;
    .end annotation

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabIntentDataProvider;->mIsTrustedIntent:Z

    iget v1, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabIntentDataProvider;->mInitialActivityWidth:I

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabIntentDataProvider;->getClientPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabIntentDataProvider;->isAllowedThirdParty(Ljava/lang/String;)Z

    move-result p0

    invoke-static {v0, v1, p0}, Lcom/sec/android/app/sbrowser/customtabs/features/partialcustomtab/PartialCustomTabIntentUtils;->getInitialActivityWidth(ZIZ)I

    move-result p0

    return p0
.end method

.method public getInsecureClientPackageNameForOnFinishAnimation()Ljava/lang/String;
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabIntentDataProvider;->mAnimationBundle:Landroid/os/Bundle;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "android:activity.packageName"

    invoke-virtual {p0, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getIntent()Landroid/content/Intent;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabIntentDataProvider;->mIntent:Landroid/content/Intent;

    return-object p0
.end method

.method public getKeepAliveServiceIntent()Landroid/content/Intent;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabIntentDataProvider;->mKeepAliveServiceIntent:Landroid/content/Intent;

    return-object p0
.end method

.method public getMediaViewerUrl()Ljava/lang/String;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabIntentDataProvider;->mMediaViewerUrl:Ljava/lang/String;

    return-object p0
.end method

.method public getMenuTitles()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabIntentDataProvider;->mMenuEntries:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    iget-object v1, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public getNetworkHandle()J
    .locals 2

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabIntentDataProvider;->mNetwork:Landroid/net/Network;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/net/Network;->getNetworkHandle()J

    move-result-wide v0

    goto :goto_0

    :cond_0
    const-wide/16 v0, -0x1

    :goto_0
    return-wide v0
.end method

.method public getPartialTabToolbarCornerRadius()I
    .locals 0

    iget p0, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabIntentDataProvider;->mPartialTabToolbarCornerRadius:I

    return p0
.end method

.method public getRemoteViewsPendingIntent()Landroid/app/PendingIntent;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabIntentDataProvider;->mRemoteViewsPendingIntent:Landroid/app/PendingIntent;

    return-object p0
.end method

.method public getSecondaryToolbarSwipeUpPendingIntent()Landroid/app/PendingIntent;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabIntentDataProvider;->mSecondaryToolbarSwipeUpPendingIntent:Landroid/app/PendingIntent;

    return-object p0
.end method

.method public getSession()LH/y;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabIntentDataProvider;->mSession:LH/y;

    return-object p0
.end method

.method public getShareData()LK/a;
    .locals 5
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabIntentDataProvider;->getIntent()Landroid/content/Intent;

    move-result-object p0

    const-string v0, "androidx.browser.trusted.extra.SHARE_DATA"

    invoke-static {p0, v0}, Lcom/sec/android/app/sbrowser/common/utils/SBrowserIntentUtils;->safeGetParcelableExtra(Landroid/content/Intent;Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p0

    check-cast p0, Landroid/os/Bundle;

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    :try_start_0
    new-instance v1, LK/a;

    const-string v2, "androidx.browser.trusted.sharing.KEY_TITLE"

    invoke-virtual {p0, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "androidx.browser.trusted.sharing.KEY_TEXT"

    invoke-virtual {p0, v3}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "androidx.browser.trusted.sharing.KEY_URIS"

    invoke-virtual {p0, v4}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p0

    invoke-direct {v1, v2, v3, p0}, LK/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v1

    :catchall_0
    return-object v0
.end method

.method public getShareTarget()Lcom/sec/terrace/browser/browserservices/intents/TerraceWebApkShareTarget;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabIntentDataProvider;->mShareTarget:Lcom/sec/terrace/browser/browserservices/intents/TerraceWebApkShareTarget;

    return-object p0
.end method

.method public getSideSheetPosition()I
    .locals 2

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabIntentDataProvider;->mIntent:Landroid/content/Intent;

    const-string v0, "androidx.browser.customtabs.extra.ACTIVITY_SIDE_SHEET_POSITION"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x2

    :cond_0
    return p0
.end method

.method public getSideSheetSlideInBehavior()I
    .locals 0

    const/4 p0, 0x2

    return p0
.end method

.method public getTitleVisibilityState()I
    .locals 0

    iget p0, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabIntentDataProvider;->mTitleVisibilityState:I

    return p0
.end method

.method public getTwaDisplayMode()LI/f;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabIntentDataProvider;->mTrustedWebActivityDisplayMode:LI/f;

    return-object p0
.end method

.method public getUiType()I
    .locals 0

    iget p0, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabIntentDataProvider;->mUiType:I

    return p0
.end method

.method public getUrlToLoad()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabIntentDataProvider;->mUrlToLoad:Ljava/lang/String;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabIntentDataProvider;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabIntentDataProvider;->resolveUrlToLoad(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabIntentDataProvider;->mUrlToLoad:Ljava/lang/String;

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabIntentDataProvider;->mUrlToLoad:Ljava/lang/String;

    return-object p0
.end method

.method public isExtraLaunchWithReadArticlesAloud()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isExtraRemoveOpenInInternetEnabled()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isExtraRemoveSecurityIconEnabled()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isNoUiMode()Z
    .locals 0

    invoke-virtual {p0}, Lcom/sec/terrace/browser/browserservices/intents/TerraceBrowserServicesIntentDataProvider;->isTrustedWebActivity()Z

    move-result p0

    return p0
.end method

.method public isPartialCustomTab()Z
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabIntentDataProvider;->isPartialHeightCustomTab()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabIntentDataProvider;->isPartialWidthCustomTab()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public isPartialCustomTabFixedHeight()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabIntentDataProvider;->mIsPartialCustomTabFixedHeight:Z

    return p0
.end method

.method public isPartialHeightCustomTab()Z
    .locals 0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabIntentDataProvider;->getInitialActivityHeight()I

    move-result p0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isPartialWidthCustomTab()Z
    .locals 0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabIntentDataProvider;->getInitialActivityWidth()I

    move-result p0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isPostShareTarget(Lcom/sec/terrace/Terrace;)Z
    .locals 2

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabIntentDataProvider;->mIsShareIntent:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabIntentDataProvider;->mShareTarget:Lcom/sec/terrace/browser/browserservices/intents/TerraceWebApkShareTarget;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabIntentDataProvider;->mShareData:LK/a;

    if-eqz v1, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/sec/terrace/browser/browserservices/intents/TerraceWebApkShareTarget;->getAction()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabIntentDataProvider;->mShareTarget:Lcom/sec/terrace/browser/browserservices/intents/TerraceWebApkShareTarget;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabIntentDataProvider;->mShareData:LK/a;

    invoke-static {v0, v1, p0, p1}, Lcom/sec/terrace/browser/webapps/TerraceWebApkPostShareTargetNavigator;->navigateIfPostShareTarget(Ljava/lang/String;Lcom/sec/terrace/browser/browserservices/intents/TerraceWebApkShareTarget;LK/a;Lcom/sec/terrace/Terrace;)Z

    move-result p0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public isTrustedIntent()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabIntentDataProvider;->mIsTrustedIntent:Z

    return p0
.end method

.method public shouldAnimateOnFinish()Z
    .locals 0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabIntentDataProvider;->getInsecureClientPackageNameForOnFinishAnimation()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public shouldEnableEmbeddedMediaExperience()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabIntentDataProvider;->mEnableEmbeddedMediaExperience:Z

    return p0
.end method

.method public shouldEnableUrlBarHiding()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabIntentDataProvider;->mEnableUrlBarHiding:Z

    return p0
.end method

.method public shouldRemoveMenuItems()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public shouldShowShareMenuItem()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabIntentDataProvider;->mShowShareItemInMenu:Z

    return p0
.end method

.method public showSideSheetMaximizeButton()Z
    .locals 2

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabIntentDataProvider;->mIntent:Landroid/content/Intent;

    const-string v0, "androidx.browser.customtabs.extra.ACTIVITY_SIDE_SHEET_ENABLE_MAXIMIZATION"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/sec/android/app/sbrowser/common/utils/SBrowserIntentUtils;->safeGetBooleanExtra(Landroid/content/Intent;Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public showTitleAfterCompleteLoad()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
