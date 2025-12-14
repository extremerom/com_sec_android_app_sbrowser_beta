.class public Lcom/sec/android/app/sbrowser/extensions/SixPreferencesManager;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mExtensionSettingsClient:Lcom/sec/android/app/sbrowser/common/extensions/ExtensionsSettings$Client;

.field private mExtensionsFragmentUtils:Lcom/sec/android/app/sbrowser/extensions/ExtensionsFragmentUtils;

.field private mFragmentRefreshCallback:Lcom/sec/android/app/sbrowser/common/extensions/ExtensionsFragmentCallback$PrefRefreshCallback;

.field private mHasNewInstalledSix:I

.field private mInstalledPrefs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/sec/android/app/sbrowser/common/settings/SwitchPreferenceCustom;",
            ">;"
        }
    .end annotation
.end field

.field private mKeepSuggestedNBadge:Z

.field private mMoreAddOns:Landroid/widget/Button;

.field private mPreference:Lw2/A;

.field private mSixAppsList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/sec/android/app/sbrowser/common/extensions/SixAppData;",
            ">;"
        }
    .end annotation
.end field

.field private mSixDetailsFragment:Lcom/sec/android/app/sbrowser/extensions/SixDetailsFragment;

.field private mSixDialogService:Lcom/sec/android/app/sbrowser/extensions/SixDialogService;

.field private mSuggestedPrefs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/sec/android/app/sbrowser/extensions/ExtensionsDownloadPreference;",
            ">;"
        }
    .end annotation
.end field

.field private mToast:Landroid/widget/Toast;

.field private mWasSixAppStatusChanged:Z


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lw2/A;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/extensions/SixPreferencesManager;->mSixAppsList:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/sbrowser/extensions/SixPreferencesManager;->mHasNewInstalledSix:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/extensions/SixPreferencesManager;->mSuggestedPrefs:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/extensions/SixPreferencesManager;->mInstalledPrefs:Ljava/util/ArrayList;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/extensions/SixPreferencesManager;->mActivity:Landroid/app/Activity;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/extensions/SixPreferencesManager;->mPreference:Lw2/A;

    new-instance p2, Lcom/sec/android/app/sbrowser/extensions/ExtensionsFragmentUtils;

    invoke-direct {p2, p1}, Lcom/sec/android/app/sbrowser/extensions/ExtensionsFragmentUtils;-><init>(Landroid/app/Activity;)V

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/extensions/SixPreferencesManager;->mExtensionsFragmentUtils:Lcom/sec/android/app/sbrowser/extensions/ExtensionsFragmentUtils;

    new-instance p1, Lcom/sec/android/app/sbrowser/extensions/SixDialogService;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extensions/SixPreferencesManager;->mActivity:Landroid/app/Activity;

    invoke-direct {p1, v0, p2}, Lcom/sec/android/app/sbrowser/extensions/SixDialogService;-><init>(Landroid/app/Activity;Lcom/sec/android/app/sbrowser/extensions/ExtensionsFragmentUtils;)V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/extensions/SixPreferencesManager;->mSixDialogService:Lcom/sec/android/app/sbrowser/extensions/SixDialogService;

    return-void
.end method

.method public static bridge synthetic a(Lcom/sec/android/app/sbrowser/extensions/SixPreferencesManager;)Landroid/app/Activity;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/extensions/SixPreferencesManager;->mActivity:Landroid/app/Activity;

    return-object p0
.end method

.method private applyDisabledTitleStyle(Ljava/lang/String;I)Landroid/text/SpannableStringBuilder;
    .locals 2

    new-instance p0, Landroid/text/SpannableStringBuilder;

    invoke-direct {p0, p1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    new-instance v0, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v0, p2}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    const/16 p2, 0x21

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, p1, p2}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    return-object p0
.end method

.method public static bridge synthetic b(Lcom/sec/android/app/sbrowser/extensions/SixPreferencesManager;)Lcom/sec/android/app/sbrowser/extensions/ExtensionsFragmentUtils;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/extensions/SixPreferencesManager;->mExtensionsFragmentUtils:Lcom/sec/android/app/sbrowser/extensions/ExtensionsFragmentUtils;

    return-object p0
.end method

.method public static bridge synthetic c(Lcom/sec/android/app/sbrowser/extensions/SixPreferencesManager;)Lcom/sec/android/app/sbrowser/extensions/SixDetailsFragment;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/extensions/SixPreferencesManager;->mSixDetailsFragment:Lcom/sec/android/app/sbrowser/extensions/SixDetailsFragment;

    return-object p0
.end method

.method private createSixSuggestedPreference(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/sec/android/app/sbrowser/extensions/ExtensionsDownloadPreference;
    .locals 4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extensions/SixPreferencesManager;->mActivity:Landroid/app/Activity;

    if-nez v0, :cond_0

    const-string p0, "SixPreferencesManager"

    const-string p1, "createSixSuggestedPreference - activity is null. Aborting!"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance v0, Lr/d;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/extensions/SixPreferencesManager;->mActivity:Landroid/app/Activity;

    const v2, 0x7f1502d6

    invoke-direct {v0, v1, v2}, Lr/d;-><init>(Landroid/content/Context;I)V

    new-instance v1, Lcom/sec/android/app/sbrowser/extensions/ExtensionsDownloadPreference;

    invoke-direct {v1, v0}, Lcom/sec/android/app/sbrowser/extensions/ExtensionsDownloadPreference;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, p1}, Landroidx/preference/Preference;->setKey(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/ColorDrawable;-><init>()V

    invoke-virtual {v1, v0}, Landroidx/preference/Preference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extensions/SixPreferencesManager;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/sec/android/app/sbrowser/extensions/SixPreferencesManager;->getSuggestedExtIcon(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v1, v0}, Landroidx/preference/Preference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p2, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Lcom/sec/android/app/sbrowser/extensions/ExtensionsDownloadPreference;->setTextIconChar(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string p2, "E"

    invoke-virtual {v1, p2}, Lcom/sec/android/app/sbrowser/extensions/ExtensionsDownloadPreference;->setTextIconChar(Ljava/lang/String;)V

    :goto_0
    new-instance p2, Lcom/sec/android/app/sbrowser/extensions/SixPreferencesManager$5;

    invoke-direct {p2, p0, p1, p3}, Lcom/sec/android/app/sbrowser/extensions/SixPreferencesManager$5;-><init>(Lcom/sec/android/app/sbrowser/extensions/SixPreferencesManager;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Lw2/n;)V

    new-instance p2, Lcom/sec/android/app/sbrowser/extensions/SixPreferencesManager$6;

    invoke-direct {p2, p0, p1, p3}, Lcom/sec/android/app/sbrowser/extensions/SixPreferencesManager$6;-><init>(Lcom/sec/android/app/sbrowser/extensions/SixPreferencesManager;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Lcom/sec/android/app/sbrowser/extensions/ExtensionsDownloadPreference;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/extensions/SixStatus;->getInstance()Lcom/sec/android/app/sbrowser/common/extensions/SixStatus;

    move-result-object p1

    invoke-virtual {p1, v3}, Lcom/sec/android/app/sbrowser/common/extensions/SixStatus;->isDefaultExtEnabled(Z)Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-static {}, Lcom/sec/android/app/sbrowser/extensions/SixManager;->getInstance()Lcom/sec/android/app/sbrowser/extensions/SixManager;

    move-result-object p1

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/extensions/SixPreferencesManager;->mActivity:Landroid/app/Activity;

    invoke-virtual {p1, p2}, Lcom/sec/android/app/sbrowser/extensions/SixManager;->isRunningSecretMode(Landroid/app/Activity;)Z

    move-result p1

    if-nez p1, :cond_3

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/SystemSettings;->isUltraPowerSavingMode()Z

    move-result p1

    if-nez p1, :cond_3

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/extensions/SixPreferencesManager;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    const-string p1, "com.sec.android.app.samsungapps"

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/common/utils/PackageManagerUtils;->isInstalledApplication(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_3

    goto :goto_1

    :cond_3
    move v2, v3

    :goto_1
    invoke-virtual {v1, v2}, Landroidx/preference/Preference;->setEnabled(Z)V

    invoke-virtual {v1, v2}, Lcom/sec/android/app/sbrowser/extensions/ExtensionsDownloadPreference;->setEnableDownloadButton(Z)V

    return-object v1
.end method

.method private createSixSwitchPreference(Lcom/sec/android/app/sbrowser/common/extensions/SixAppData;Z)Lcom/sec/android/app/sbrowser/common/settings/SwitchPreferenceCustom;
    .locals 4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extensions/SixPreferencesManager;->mActivity:Landroid/app/Activity;

    if-nez v0, :cond_0

    const-string p0, "SixPreferencesManager"

    const-string p1, "createSixSwitchPreference - activity is null. Aborting!"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance v0, Lr/d;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/extensions/SixPreferencesManager;->mActivity:Landroid/app/Activity;

    const v2, 0x7f1502d6

    invoke-direct {v0, v1, v2}, Lr/d;-><init>(Landroid/content/Context;I)V

    new-instance v1, Lcom/sec/android/app/sbrowser/common/settings/SwitchPreferenceCustom;

    invoke-direct {v1, v0}, Lcom/sec/android/app/sbrowser/common/settings/SwitchPreferenceCustom;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Lcom/sec/android/app/sbrowser/common/settings/SwitchPreferenceCustom;->setDividerVisible(Z)V

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/extensions/SixAppDataCommon;->getExtensionId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/preference/Preference;->setKey(Ljava/lang/String;)V

    invoke-direct {p0, v1, p1, p2}, Lcom/sec/android/app/sbrowser/extensions/SixPreferencesManager;->setTitleAndSummary(Lcom/sec/android/app/sbrowser/common/settings/SwitchPreferenceCustom;Lcom/sec/android/app/sbrowser/common/extensions/SixAppData;Z)V

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/extensions/SixAppDataCommon;->getAppName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/sec/android/app/sbrowser/common/settings/SwitchPreferenceCustom;->setDominantText(Ljava/lang/String;)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/extensions/SixPkgUpdater;->getInstance()Lcom/sec/android/app/sbrowser/extensions/SixPkgUpdater;

    move-result-object v0

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/extensions/SixAppDataCommon;->getExtensionId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/sec/android/app/sbrowser/extensions/SixPkgUpdater;->loadExtensionIcon(Ljava/lang/String;)V

    new-instance v0, Lcom/sec/android/app/sbrowser/extensions/SixPreferencesManager$7;

    invoke-direct {v0, p0, p1, p2}, Lcom/sec/android/app/sbrowser/extensions/SixPreferencesManager$7;-><init>(Lcom/sec/android/app/sbrowser/extensions/SixPreferencesManager;Lcom/sec/android/app/sbrowser/common/extensions/SixAppData;Z)V

    invoke-virtual {v1, v0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Lw2/n;)V

    new-instance v0, Lcom/sec/android/app/sbrowser/extensions/SixPreferencesManager$8;

    invoke-direct {v0, p0, v1, p1, p2}, Lcom/sec/android/app/sbrowser/extensions/SixPreferencesManager$8;-><init>(Lcom/sec/android/app/sbrowser/extensions/SixPreferencesManager;Lcom/sec/android/app/sbrowser/common/settings/SwitchPreferenceCustom;Lcom/sec/android/app/sbrowser/common/extensions/SixAppData;Z)V

    invoke-virtual {v1, v0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Lw2/m;)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/extensions/SixStatus;->getInstance()Lcom/sec/android/app/sbrowser/common/extensions/SixStatus;

    move-result-object p0

    invoke-virtual {p0, v3}, Lcom/sec/android/app/sbrowser/common/extensions/SixStatus;->isDefaultExtEnabled(Z)Z

    move-result p0

    invoke-virtual {v1, p0}, Landroidx/preference/Preference;->setEnabled(Z)V

    return-object v1
.end method

.method public static bridge synthetic d(Lcom/sec/android/app/sbrowser/extensions/SixPreferencesManager;)V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/extensions/SixPreferencesManager;->mSixDetailsFragment:Lcom/sec/android/app/sbrowser/extensions/SixDetailsFragment;

    return-void
.end method

.method public static bridge synthetic e(Lcom/sec/android/app/sbrowser/extensions/SixPreferencesManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/extensions/SixPreferencesManager;->hidebadges()V

    return-void
.end method

.method public static bridge synthetic f(Lcom/sec/android/app/sbrowser/extensions/SixPreferencesManager;Lcom/sec/android/app/sbrowser/common/settings/SwitchPreferenceCustom;Landroidx/preference/Preference;Ljava/lang/Object;Lcom/sec/android/app/sbrowser/common/extensions/SixAppData;Z)Z
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/sec/android/app/sbrowser/extensions/SixPreferencesManager;->runPreferenceChange(Lcom/sec/android/app/sbrowser/common/settings/SwitchPreferenceCustom;Landroidx/preference/Preference;Ljava/lang/Object;Lcom/sec/android/app/sbrowser/common/extensions/SixAppData;Z)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic g(Lcom/sec/android/app/sbrowser/extensions/SixPreferencesManager;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/extensions/SixPreferencesManager;->showToast(Ljava/lang/String;)V

    return-void
.end method

.method private generateSquircleIcon(Landroid/content/Context;Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Drawable;
    .locals 3

    const-string p0, "SixPreferencesManager"

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0713ae

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0713ad

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    const/4 v2, 0x1

    invoke-static {p2, v0, v1, v2}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p2

    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {v0, v1, p2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    :try_start_0
    sget-object p2, Lcom/sec/sbrowser/spl/wrapper/MajoPackageManager;->ICON_TRAY_SQUIRCLE_MODE:Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

    invoke-virtual {p2}, Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;->get()Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-static {p1, v0, p2}, Lcom/sec/sbrowser/spl/wrapper/MajoPackageManager;->getDrawableForIconTray(Landroid/content/pm/PackageManager;Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-nez p1, :cond_0

    const-string p1, "generateSquircleIcon - Failed to create squircle"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Lcom/sec/sbrowser/spl/util/FallbackException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p1

    goto :goto_0

    :cond_0
    return-object p1

    :goto_0
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v1, "generateSquircleIcon - exception: "

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1, p2, p0}, Landroidx/recyclerview/widget/P;->B(Lcom/sec/sbrowser/spl/util/FallbackException;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    return-object v0
.end method

.method private getSuggestedExtIcon(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 1

    invoke-static {}, Lcom/sec/android/app/sbrowser/extensions/SixGetExtListManager;->getInstance()Lcom/sec/android/app/sbrowser/extensions/SixGetExtListManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/sec/android/app/sbrowser/extensions/SixGetExtListManager;->getExtIconFile(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object p2

    const/4 v0, 0x0

    if-nez p2, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p2

    if-nez p2, :cond_1

    const-string p0, "SixPreferencesManager"

    const-string p1, "getSuggestedExtIcon - No bitmap created, returning null"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/extensions/SixPreferencesManager;->generateSquircleIcon(Landroid/content/Context;Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic h(Lcom/sec/android/app/sbrowser/extensions/SixPreferencesManager;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/extensions/SixPreferencesManager;->updateDownloadedIcon(Ljava/lang/String;)V

    return-void
.end method

.method private handleNewExtensionFlag()V
    .locals 2

    iget v0, p0, Lcom/sec/android/app/sbrowser/extensions/SixPreferencesManager;->mHasNewInstalledSix:I

    const/4 v1, 0x5

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extensions/SixPreferencesManager;->mExtensionSettingsClient:Lcom/sec/android/app/sbrowser/common/extensions/ExtensionsSettings$Client;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/common/extensions/ExtensionsSettings$Client;->hasNewExtensionFlag(I)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/extensions/SixPreferencesManager;->mExtensionSettingsClient:Lcom/sec/android/app/sbrowser/common/extensions/ExtensionsSettings$Client;

    const/4 v0, 0x1

    invoke-virtual {p0, v1, v0}, Lcom/sec/android/app/sbrowser/common/extensions/ExtensionsSettings$Client;->setHasNewExtensionFlag(IZ)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extensions/SixPreferencesManager;->mExtensionSettingsClient:Lcom/sec/android/app/sbrowser/common/extensions/ExtensionsSettings$Client;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/common/extensions/ExtensionsSettings$Client;->hasNewExtensionFlag(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/extensions/SixPreferencesManager;->mExtensionSettingsClient:Lcom/sec/android/app/sbrowser/common/extensions/ExtensionsSettings$Client;

    const/4 v0, 0x0

    invoke-virtual {p0, v1, v0}, Lcom/sec/android/app/sbrowser/common/extensions/ExtensionsSettings$Client;->setHasNewExtensionFlag(IZ)V

    :cond_1
    :goto_0
    return-void
.end method

.method private hidebadges()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extensions/SixPreferencesManager;->mMoreAddOns:Landroid/widget/Button;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extensions/SixPreferencesManager;->mExtensionSettingsClient:Lcom/sec/android/app/sbrowser/common/extensions/ExtensionsSettings$Client;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/common/extensions/ExtensionsSettings$Client;->hasNewExtensionFlag(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/extensions/SixPreferencesManager;->mExtensionSettingsClient:Lcom/sec/android/app/sbrowser/common/extensions/ExtensionsSettings$Client;

    const/4 v0, 0x0

    invoke-virtual {p0, v1, v0}, Lcom/sec/android/app/sbrowser/common/extensions/ExtensionsSettings$Client;->setHasNewExtensionFlag(IZ)V

    :cond_0
    return-void
.end method

.method private hidebadgesByAction(Landroidx/preference/Preference;Lcom/sec/android/app/sbrowser/common/extensions/SixAppData;)V
    .locals 1

    check-cast p1, Lcom/sec/android/app/sbrowser/common/settings/SwitchPreferenceCustom;

    invoke-virtual {p1}, Landroidx/preference/Preference;->getDotVisibility()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setDotVisibility(Z)V

    const/4 p1, 0x1

    invoke-virtual {p2, p1}, Lcom/sec/android/app/sbrowser/common/extensions/SixAppData;->setEverTapped(Z)V

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/extensions/SixPreferencesManager;->mWasSixAppStatusChanged:Z

    iget p2, p0, Lcom/sec/android/app/sbrowser/extensions/SixPreferencesManager;->mHasNewInstalledSix:I

    sub-int/2addr p2, p1

    iput p2, p0, Lcom/sec/android/app/sbrowser/extensions/SixPreferencesManager;->mHasNewInstalledSix:I

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/extensions/SixPreferencesManager;->handleNewExtensionFlag()V

    :cond_0
    return-void
.end method

.method public static bridge synthetic i(Lcom/sec/android/app/sbrowser/extensions/SixPreferencesManager;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/extensions/SixPreferencesManager;->updateLoadedIcon(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method private runPreferenceChange(Lcom/sec/android/app/sbrowser/common/settings/SwitchPreferenceCustom;Landroidx/preference/Preference;Ljava/lang/Object;Lcom/sec/android/app/sbrowser/common/extensions/SixAppData;Z)Z
    .locals 7

    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "runPreferenceChange: "

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string v0, "SixPreferencesManager"

    invoke-static {v0, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p2}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    const-string p0, "runPreferenceChange - Empty ID. Aborting.."

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_0
    invoke-direct {p0, p2, p4}, Lcom/sec/android/app/sbrowser/extensions/SixPreferencesManager;->hidebadgesByAction(Landroidx/preference/Preference;Lcom/sec/android/app/sbrowser/common/extensions/SixAppData;)V

    invoke-virtual {p4}, Lcom/sec/android/app/sbrowser/common/extensions/SixAppData;->isLimited()Z

    move-result v1

    const/4 v6, 0x0

    if-eqz v1, :cond_2

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/extensions/SixPreferencesManager;->mSixDialogService:Lcom/sec/android/app/sbrowser/extensions/SixDialogService;

    if-eqz p0, :cond_1

    invoke-virtual {p0, p4}, Lcom/sec/android/app/sbrowser/extensions/SixDialogService;->showSixSIUpdateGuideDialogIfNeeded(Lcom/sec/android/app/sbrowser/common/extensions/SixAppData;)V

    :cond_1
    return v6

    :cond_2
    invoke-virtual {p4}, Lcom/sec/android/app/sbrowser/common/extensions/SixAppData;->isInstalled()Z

    move-result v1

    if-eqz v1, :cond_6

    if-eqz p5, :cond_3

    goto :goto_0

    :cond_3
    invoke-static {}, Lcom/sec/android/app/sbrowser/extensions/SixManager;->getInstance()Lcom/sec/android/app/sbrowser/extensions/SixManager;

    move-result-object p5

    invoke-virtual {p5}, Lcom/sec/android/app/sbrowser/extensions/SixManager;->isPrivacyPopupEnabled()Z

    move-result p5

    if-eqz p5, :cond_5

    if-eqz v4, :cond_5

    invoke-static {}, Lcom/sec/android/app/sbrowser/extensions/SixManager;->getInstance()Lcom/sec/android/app/sbrowser/extensions/SixManager;

    move-result-object p5

    invoke-virtual {p5, p4}, Lcom/sec/android/app/sbrowser/extensions/SixManager;->isFirstLaunchSinceInstall(Lcom/sec/android/app/sbrowser/common/extensions/SixAppData;)Z

    move-result p5

    if-eqz p5, :cond_5

    new-instance p5, Ljava/lang/StringBuilder;

    const-string v1, "runPreferenceChange - First launch!! "

    invoke-direct {p5, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p4}, Lcom/sec/android/app/sbrowser/common/extensions/SixAppDataCommon;->getAppName()Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extensions/SixPreferencesManager;->mSixDialogService:Lcom/sec/android/app/sbrowser/extensions/SixDialogService;

    if-eqz v0, :cond_4

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/extensions/SixPreferencesManager;->mActivity:Landroid/app/Activity;

    move-object v2, p2

    move-object v3, p3

    move-object v5, p1

    invoke-virtual/range {v0 .. v5}, Lcom/sec/android/app/sbrowser/extensions/SixDialogService;->showSixConfirmDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZLcom/sec/android/app/sbrowser/common/settings/SwitchPreferenceCustom;)V

    :cond_4
    invoke-static {p3, p2}, Lcom/sec/android/app/sbrowser/extensions/SixSALogger;->sendShowPermissionEventLog(Ljava/lang/String;Ljava/lang/String;)V

    return v6

    :cond_5
    invoke-static {}, Lcom/sec/android/app/sbrowser/extensions/SixPkgUpdater;->getInstance()Lcom/sec/android/app/sbrowser/extensions/SixPkgUpdater;

    move-result-object p0

    invoke-virtual {p0, p3, v4}, Lcom/sec/android/app/sbrowser/extensions/SixPkgUpdater;->changeExtensionStatus(Ljava/lang/String;Z)V

    invoke-static {p3, v4}, Lcom/sec/android/app/sbrowser/extensions/SixSALogger;->sendExtStatusEventLog(Ljava/lang/String;Z)V

    return v2

    :cond_6
    :goto_0
    const-string p0, "runPreferenceChange - Installing or Uninstalling"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2
.end method

.method private setTitleAndSummary(Lcom/sec/android/app/sbrowser/common/settings/SwitchPreferenceCustom;Lcom/sec/android/app/sbrowser/common/extensions/SixAppData;Z)V
    .locals 4

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/common/extensions/SixAppData;->isUpdateFailed()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_1

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/common/extensions/SixAppData;->isToBeDimmedAndOff()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/extensions/SixStatus;->getInstance()Lcom/sec/android/app/sbrowser/common/extensions/SixStatus;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/common/extensions/SixStatus;->isDefaultExtEnabled(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/common/extensions/SixAppDataCommon;->isDefaultExt()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/common/extensions/SixAppDataCommon;->getAppName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extensions/SixPreferencesManager;->mActivity:Landroid/app/Activity;

    const v2, 0x7f060bf5

    invoke-virtual {v0, v2}, Landroid/content/Context;->getColor(I)I

    move-result v0

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/common/extensions/SixAppDataCommon;->getAppName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2, v0}, Lcom/sec/android/app/sbrowser/extensions/SixPreferencesManager;->applyDisabledTitleStyle(Ljava/lang/String;I)Landroid/text/SpannableStringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/common/extensions/SixAppData;->isUpdateFailed()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/common/extensions/SixAppDataCommon;->getAppName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p1, v2}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    :goto_0
    invoke-static {}, Lcom/sec/android/app/sbrowser/extensions/SixManager;->getInstance()Lcom/sec/android/app/sbrowser/extensions/SixManager;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/extensions/SixPreferencesManager;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2, v3}, Lcom/sec/android/app/sbrowser/extensions/SixManager;->isRunningSecretMode(Landroid/app/Activity;)Z

    move-result v2

    if-eqz v2, :cond_3

    return-void

    :cond_3
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/extensions/SixStatus;->getInstance()Lcom/sec/android/app/sbrowser/common/extensions/SixStatus;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/sec/android/app/sbrowser/common/extensions/SixStatus;->isDefaultExtEnabled(Z)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/common/extensions/SixAppDataCommon;->isDefaultExt()Z

    move-result v1

    if-eqz v1, :cond_4

    return-void

    :cond_4
    if-eqz p3, :cond_5

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/extensions/SixPreferencesManager;->mActivity:Landroid/app/Activity;

    const p2, 0x7f140fa4

    invoke-virtual {p0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_2

    :cond_5
    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/common/extensions/SixAppData;->isNotInstalled()Z

    move-result p3

    if-eqz p3, :cond_6

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/extensions/SixPreferencesManager;->mActivity:Landroid/app/Activity;

    const p2, 0x7f140365

    invoke-virtual {p0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_2

    :cond_6
    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/common/extensions/SixAppData;->isUpdateFailed()Z

    move-result p3

    const v0, 0x7f060bf4

    if-eqz p3, :cond_7

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/extensions/SixPreferencesManager;->mActivity:Landroid/app/Activity;

    const p3, 0x7f140fa5

    invoke-virtual {p2, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/extensions/SixPreferencesManager;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getColor(I)I

    move-result v0

    :goto_1
    move-object p0, p2

    goto :goto_2

    :cond_7
    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/common/extensions/SixAppData;->isInstallFailed()Z

    move-result p2

    const p3, 0x7f140378

    if-eqz p2, :cond_8

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/extensions/SixPreferencesManager;->mActivity:Landroid/app/Activity;

    invoke-virtual {p2, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/extensions/SixPreferencesManager;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getColor(I)I

    move-result v0

    goto :goto_1

    :cond_8
    iget-object p2, p0, Lcom/sec/android/app/sbrowser/extensions/SixPreferencesManager;->mActivity:Landroid/app/Activity;

    invoke-virtual {p2, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/extensions/SixPreferencesManager;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getColor(I)I

    move-result v0

    goto :goto_1

    :goto_2
    new-instance p2, Landroid/text/SpannableStringBuilder;

    invoke-direct {p2, p0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    new-instance p3, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {p3, v0}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    const/16 v0, 0x21

    const/4 v1, 0x0

    invoke-virtual {p2, p3, v1, p0, v0}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    invoke-virtual {p1, p2}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private showToast(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extensions/SixPreferencesManager;->mToast:Landroid/widget/Toast;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extensions/SixPreferencesManager;->mActivity:Landroid/app/Activity;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/extensions/SixPreferencesManager;->mToast:Landroid/widget/Toast;

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method private updateDownloadedIcon(Ljava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extensions/SixPreferencesManager;->mActivity:Landroid/app/Activity;

    const-string v1, "SixPreferencesManager"

    if-nez v0, :cond_0

    const-string p0, "updateDownloadedIcon - In bg now. Aborting"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p0, "updateDownloadedIcon - Given pickKey is null. Aborting"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extensions/SixPreferencesManager;->mPreference:Lw2/A;

    invoke-virtual {v0}, Lw2/A;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/extensions/ExtensionsDownloadPreference;

    if-nez v0, :cond_2

    const-string p0, "updateDownloadedIcon - Aborting. Failed to find pref: "

    invoke-static {p0, p1, v1}, Landroidx/recyclerview/widget/P;->u(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_2
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/extensions/SixPreferencesManager;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {p0, v2, p1}, Lcom/sec/android/app/sbrowser/extensions/SixPreferencesManager;->getSuggestedExtIcon(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    if-nez p0, :cond_3

    const-string p0, "updateDownloadedIcon - No icon to draw. Aborting"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "updateDownloadedIcon - running for "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/extensions/ExtensionsDownloadPreference;->removeTextIcon()V

    return-void
.end method

.method private updateLoadedIcon(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extensions/SixPreferencesManager;->mActivity:Landroid/app/Activity;

    const-string v1, "SixPreferencesManager"

    if-nez v0, :cond_0

    const-string p0, "updateLoadedIcon - In bg now. Aborting"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extensions/SixPreferencesManager;->mPreference:Lw2/A;

    invoke-virtual {v0}, Lw2/A;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/common/settings/SwitchPreferenceCustom;

    if-nez v0, :cond_1

    const-string p0, "updateLoadedIcon - Aborting. Failed to find pref: "

    invoke-static {p0, p1, v1}, Landroidx/recyclerview/widget/P;->u(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    if-nez p2, :cond_2

    new-instance p0, Ljava/lang/StringBuilder;

    const-string p2, "updateLoadedIcon - No icon for "

    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/sec/android/app/sbrowser/extensions/SixManager;->getInstance()Lcom/sec/android/app/sbrowser/extensions/SixManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/extensions/SixManager;->getSixAppData(Ljava/lang/String;)Lcom/sec/android/app/sbrowser/common/extensions/SixAppData;

    move-result-object p0

    if-eqz p0, :cond_3

    const-string p1, "3rd_party"

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/extensions/SixAppDataCommon;->getInstallSource()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    const/4 p0, 0x0

    invoke-virtual {v0, p0}, Lcom/sec/android/app/sbrowser/common/settings/SwitchPreferenceCustom;->setChecked(Z)V

    invoke-virtual {v0, p0}, Lcom/sec/android/app/sbrowser/common/settings/SwitchPreferenceCustom;->setSwitchEnabled(Z)V

    goto :goto_0

    :cond_2
    const-string v2, "updateLoadedIcon - Drawing icon for "

    invoke-static {v2, p1, v1}, LV0/c;->z(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/extensions/SixPreferencesManager;->mActivity:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/extensions/SixPreferencesManager;->generateSquircleIcon(Landroid/content/Context;Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/extensions/SixPreferencesManager;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p2, 0x7f070586

    invoke-virtual {p0, p2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p0

    float-to-int p0, p0

    invoke-virtual {v0, p1, p0}, Lcom/sec/android/app/sbrowser/common/settings/SwitchPreferenceCustom;->setIcon(Landroid/graphics/drawable/Drawable;I)V

    :cond_3
    :goto_0
    return-void
.end method

.method private updateMoreAddOnsButton()V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extensions/SixPreferencesManager;->mMoreAddOns:Landroid/widget/Button;

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/extensions/SixStatus;->getInstance()Lcom/sec/android/app/sbrowser/common/extensions/SixStatus;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/common/extensions/SixStatus;->isDefaultExtEnabled(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/sec/android/app/sbrowser/extensions/SixManager;->getInstance()Lcom/sec/android/app/sbrowser/extensions/SixManager;

    move-result-object v0

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/extensions/SixPreferencesManager;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/sbrowser/extensions/SixManager;->isRunningSecretMode(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extensions/SixPreferencesManager;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "com.sec.android.app.samsungapps"

    invoke-static {v0, v2}, Lcom/sec/android/app/sbrowser/common/utils/PackageManagerUtils;->isInstalledApplication(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extensions/SixPreferencesManager;->mMoreAddOns:Landroid/widget/Button;

    new-instance v1, Lcom/sec/android/app/sbrowser/extensions/SixPreferencesManager$1;

    invoke-direct {v1, p0}, Lcom/sec/android/app/sbrowser/extensions/SixPreferencesManager$1;-><init>(Lcom/sec/android/app/sbrowser/extensions/SixPreferencesManager;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/extensions/SixPreferencesManager;->mMoreAddOns:Landroid/widget/Button;

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/sec/android/app/sbrowser/common/utils/ViewUtil;->setEnabledWithAlpha(Landroid/view/View;Z)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/extensions/SixPreferencesManager;->mMoreAddOns:Landroid/widget/Button;

    invoke-static {p0, v1}, Lcom/sec/android/app/sbrowser/common/utils/ViewUtil;->setEnabledWithAlpha(Landroid/view/View;Z)V

    goto :goto_0

    :cond_1
    const-string p0, "SixPreferencesManager"

    const-string v0, "updateMoreAddOnsButton - Get more Add-ons NOT Found"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private updateSixInstalledList()V
    .locals 10

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extensions/SixPreferencesManager;->mInstalledPrefs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const-string v2, "SixPreferencesManager"

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/sbrowser/common/settings/SwitchPreferenceCustom;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v3, p0, Lcom/sec/android/app/sbrowser/extensions/SixPreferencesManager;->mPreference:Lw2/A;

    invoke-virtual {v3}, Lw2/A;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    move-result v3

    if-nez v3, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "updateSixInstalledList - Remove Failed : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "updateSixInstalledList - Removed : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extensions/SixPreferencesManager;->mInstalledPrefs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/sbrowser/extensions/SixPreferencesManager;->mHasNewInstalledSix:I

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/extensions/SixPreferencesManager;->mSixAppsList:Ljava/util/ArrayList;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/extensions/SixPreferencesManager;->mSixAppsList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    :cond_3
    invoke-static {}, Lcom/sec/android/app/sbrowser/extensions/SixManager;->getInstance()Lcom/sec/android/app/sbrowser/extensions/SixManager;

    move-result-object v1

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/extensions/SixPreferencesManager;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/sec/android/app/sbrowser/extensions/SixManager;->getSixAppList(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/extensions/SixPreferencesManager;->mSixAppsList:Ljava/util/ArrayList;

    if-eqz v1, :cond_e

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_4

    goto/16 :goto_4

    :cond_4
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/extensions/SixPreferencesManager;->mSixAppsList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_5
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/app/sbrowser/common/extensions/SixAppData;

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/common/extensions/SixAppDataCommon;->getExtensionId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_6

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "updateSixInstalledList - Empty Key, Skipping : "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/common/extensions/SixAppDataCommon;->getPkgName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_6
    invoke-static {v3}, Lcom/sec/android/app/sbrowser/common/extensions/SixUtil;->showAppStatusLog(Lcom/sec/android/app/sbrowser/common/extensions/SixAppData;)V

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/common/extensions/SixAppDataCommon;->isDefaultExt()Z

    move-result v5

    if-eqz v5, :cond_7

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/extensions/SixPreferencesManager;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/common/extensions/SixAppDataCommon;->getExtensionId()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/sec/android/app/sbrowser/extensions/SixPlgnTransEOSDialog;->showDialog(Landroid/content/Context;Ljava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "updateSixInstalledList - skip creating pref: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/common/extensions/SixAppDataCommon;->getExtensionId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_7
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "updateSixInstalledList - Pref Creating for "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/common/extensions/SixAppDataCommon;->isCrxOnlyExt()Z

    move-result v5

    const/4 v6, 0x1

    if-nez v5, :cond_8

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/extensions/SixPreferencesManager;->mActivity:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/common/extensions/SixAppDataCommon;->getPkgName()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Lcom/sec/android/app/sbrowser/common/utils/PackageManagerUtils;->isInstalledApplication(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_8

    move v5, v6

    goto :goto_2

    :cond_8
    move v5, v0

    :goto_2
    invoke-direct {p0, v3, v5}, Lcom/sec/android/app/sbrowser/extensions/SixPreferencesManager;->createSixSwitchPreference(Lcom/sec/android/app/sbrowser/common/extensions/SixAppData;Z)Lcom/sec/android/app/sbrowser/common/settings/SwitchPreferenceCustom;

    move-result-object v7

    if-eqz v7, :cond_c

    iget-object v8, p0, Lcom/sec/android/app/sbrowser/extensions/SixPreferencesManager;->mActivity:Landroid/app/Activity;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0c0007

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v8

    invoke-virtual {v7, v8}, Landroidx/preference/Preference;->setOrder(I)V

    iget-object v8, p0, Lcom/sec/android/app/sbrowser/extensions/SixPreferencesManager;->mPreference:Lw2/A;

    invoke-virtual {v8}, Lw2/A;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v8

    invoke-virtual {v8, v7}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    iget-object v8, p0, Lcom/sec/android/app/sbrowser/extensions/SixPreferencesManager;->mInstalledPrefs:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/common/extensions/SixAppData;->isOn()Z

    move-result v8

    invoke-virtual {v7, v8}, Lcom/sec/android/app/sbrowser/common/settings/SwitchPreferenceCustom;->setChecked(Z)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/extensions/SixManager;->getInstance()Lcom/sec/android/app/sbrowser/extensions/SixManager;

    move-result-object v8

    iget-object v9, p0, Lcom/sec/android/app/sbrowser/extensions/SixPreferencesManager;->mActivity:Landroid/app/Activity;

    invoke-virtual {v8, v9}, Lcom/sec/android/app/sbrowser/extensions/SixManager;->isRunningSecretMode(Landroid/app/Activity;)Z

    move-result v8

    if-eqz v8, :cond_9

    invoke-virtual {v7, v0}, Lcom/sec/android/app/sbrowser/common/settings/SwitchPreferenceCustom;->setSwitchEnabled(Z)V

    goto :goto_3

    :cond_9
    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/common/extensions/SixAppData;->isToBeDimmedAndOff()Z

    move-result v8

    if-nez v8, :cond_a

    if-eqz v5, :cond_b

    :cond_a
    invoke-virtual {v7, v0}, Lcom/sec/android/app/sbrowser/common/settings/SwitchPreferenceCustom;->setChecked(Z)V

    invoke-virtual {v7, v0}, Lcom/sec/android/app/sbrowser/common/settings/SwitchPreferenceCustom;->setSwitchEnabled(Z)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/extensions/SixPkgUpdater;->getInstance()Lcom/sec/android/app/sbrowser/extensions/SixPkgUpdater;

    move-result-object v5

    invoke-virtual {v5, v4, v0}, Lcom/sec/android/app/sbrowser/extensions/SixPkgUpdater;->changeExtensionStatus(Ljava/lang/String;Z)V

    :cond_b
    :goto_3
    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/common/extensions/SixAppData;->isEverTapped()Z

    move-result v4

    if-nez v4, :cond_5

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/common/extensions/SixAppData;->isOn()Z

    move-result v4

    if-nez v4, :cond_5

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/common/extensions/SixAppData;->isFirstLaunch()Z

    move-result v4

    if-eqz v4, :cond_5

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "updateSixInstalledList - showing N : "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/common/extensions/SixAppDataCommon;->getAppName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v7, v6}, Landroidx/preference/Preference;->setDotVisibility(Z)V

    iget v3, p0, Lcom/sec/android/app/sbrowser/extensions/SixPreferencesManager;->mHasNewInstalledSix:I

    add-int/2addr v3, v6

    iput v3, p0, Lcom/sec/android/app/sbrowser/extensions/SixPreferencesManager;->mHasNewInstalledSix:I

    goto/16 :goto_1

    :cond_c
    const-string v3, "updateSixInstalledList - cannot create SwitchPreference, skipping"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_d
    return-void

    :cond_e
    :goto_4
    const-string p0, "updateSixInstalledList - No six apps to display"

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private updateSixSuggestedList()V
    .locals 11

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/extensions/SixPreferencesManager;->mSuggestedPrefs:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const-string v3, "SixPreferencesManager"

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/sbrowser/extensions/ExtensionsDownloadPreference;

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    iget-object v4, p0, Lcom/sec/android/app/sbrowser/extensions/SixPreferencesManager;->mPreference:Lw2/A;

    invoke-virtual {v4}, Lw2/A;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    move-result v4

    if-nez v4, :cond_0

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "updateSixSuggestedList - failed to remove pref: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/extensions/SixPreferencesManager;->mSuggestedPrefs:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    invoke-static {}, Lcom/sec/android/app/sbrowser/extensions/SixManager;->getInstance()Lcom/sec/android/app/sbrowser/extensions/SixManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/extensions/SixManager;->getSuggestedListMgr()Lcom/sec/android/app/sbrowser/extensions/SixSuggestedListManager;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/extensions/SixPreferencesManager;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/android/app/sbrowser/extensions/SixSuggestedListManager;->getPickedList(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v1

    if-nez v1, :cond_3

    invoke-static {}, Lcom/sec/android/app/sbrowser/extensions/SixSALogger;->sendDisabledSuggestedStatusLog()V

    return-void

    :cond_3
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_c

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/android/app/sbrowser/common/extensions/SixSuggestedPickData;

    if-nez v4, :cond_4

    goto :goto_1

    :cond_4
    invoke-virtual {v4}, Lcom/sec/android/app/sbrowser/common/extensions/SixSuggestedPickData;->getPickPkgName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_5

    const-string v4, "updateSixSuggestedList - NO key to created"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_5
    invoke-virtual {v4}, Lcom/sec/android/app/sbrowser/common/extensions/SixSuggestedPickData;->getPickExtName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4}, Lcom/sec/android/app/sbrowser/common/extensions/SixSuggestedPickData;->getPickExtId()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v5, v6, v7}, Lcom/sec/android/app/sbrowser/extensions/SixPreferencesManager;->createSixSuggestedPreference(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/sec/android/app/sbrowser/extensions/ExtensionsDownloadPreference;

    move-result-object v6

    if-nez v6, :cond_6

    const-string v4, "updateSixSuggestedList - cannot create pref: "

    invoke-static {v4, v5, v3}, LV0/c;->z(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_6
    invoke-virtual {v4}, Lcom/sec/android/app/sbrowser/common/extensions/SixSuggestedPickData;->isToBeFixed()Z

    move-result v7

    if-eqz v7, :cond_7

    iget-object v7, p0, Lcom/sec/android/app/sbrowser/extensions/SixPreferencesManager;->mActivity:Landroid/app/Activity;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0c0008

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v7

    invoke-virtual {v6, v7}, Landroidx/preference/Preference;->setOrder(I)V

    goto :goto_2

    :cond_7
    iget-object v7, p0, Lcom/sec/android/app/sbrowser/extensions/SixPreferencesManager;->mActivity:Landroid/app/Activity;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0c0009

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v7

    invoke-virtual {v6, v7}, Landroidx/preference/Preference;->setOrder(I)V

    :goto_2
    invoke-virtual {v4}, Lcom/sec/android/app/sbrowser/common/extensions/SixSuggestedPickData;->isToShowNBadge()Z

    move-result v7

    const/4 v8, 0x1

    const/4 v9, 0x6

    if-eqz v7, :cond_9

    invoke-static {}, Lcom/sec/android/app/sbrowser/extensions/SixManager;->getInstance()Lcom/sec/android/app/sbrowser/extensions/SixManager;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sec/android/app/sbrowser/extensions/SixManager;->getSuggestedListMgr()Lcom/sec/android/app/sbrowser/extensions/SixSuggestedListManager;

    move-result-object v7

    iget-object v10, p0, Lcom/sec/android/app/sbrowser/extensions/SixPreferencesManager;->mActivity:Landroid/app/Activity;

    invoke-virtual {v10}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v7, v10, v5}, Lcom/sec/android/app/sbrowser/extensions/SixSuggestedListManager;->isNBadgeEverShown(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_9

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v10, "updateSixSuggestedList - show N badge : "

    invoke-direct {v7, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Lcom/sec/android/app/sbrowser/common/extensions/SixSuggestedPickData;->getPickExtName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v6, v8}, Lcom/sec/android/app/sbrowser/extensions/ExtensionsDownloadPreference;->setBadgeVisible(Z)V

    iget-object v7, p0, Lcom/sec/android/app/sbrowser/extensions/SixPreferencesManager;->mExtensionSettingsClient:Lcom/sec/android/app/sbrowser/common/extensions/ExtensionsSettings$Client;

    invoke-virtual {v7, v9}, Lcom/sec/android/app/sbrowser/common/extensions/ExtensionsSettings$Client;->hasNewExtensionFlag(I)Z

    move-result v7

    if-nez v7, :cond_8

    iget-object v7, p0, Lcom/sec/android/app/sbrowser/extensions/SixPreferencesManager;->mExtensionSettingsClient:Lcom/sec/android/app/sbrowser/common/extensions/ExtensionsSettings$Client;

    invoke-virtual {v7, v9, v8}, Lcom/sec/android/app/sbrowser/common/extensions/ExtensionsSettings$Client;->setHasNewExtensionFlag(IZ)V

    :cond_8
    invoke-static {}, Lcom/sec/android/app/sbrowser/extensions/SixManager;->getInstance()Lcom/sec/android/app/sbrowser/extensions/SixManager;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sec/android/app/sbrowser/extensions/SixManager;->getSuggestedListMgr()Lcom/sec/android/app/sbrowser/extensions/SixSuggestedListManager;

    move-result-object v7

    iget-object v8, p0, Lcom/sec/android/app/sbrowser/extensions/SixPreferencesManager;->mActivity:Landroid/app/Activity;

    invoke-virtual {v8}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v7, v8, v5}, Lcom/sec/android/app/sbrowser/extensions/SixSuggestedListManager;->setNBadgeEverShown(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_3

    :cond_9
    iget-boolean v5, p0, Lcom/sec/android/app/sbrowser/extensions/SixPreferencesManager;->mKeepSuggestedNBadge:Z

    invoke-virtual {v6, v5}, Lcom/sec/android/app/sbrowser/extensions/ExtensionsDownloadPreference;->setBadgeVisible(Z)V

    iget-boolean v5, p0, Lcom/sec/android/app/sbrowser/extensions/SixPreferencesManager;->mKeepSuggestedNBadge:Z

    if-eqz v5, :cond_a

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/extensions/SixPreferencesManager;->mExtensionSettingsClient:Lcom/sec/android/app/sbrowser/common/extensions/ExtensionsSettings$Client;

    invoke-virtual {v5, v9}, Lcom/sec/android/app/sbrowser/common/extensions/ExtensionsSettings$Client;->hasNewExtensionFlag(I)Z

    move-result v5

    if-nez v5, :cond_a

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/extensions/SixPreferencesManager;->mExtensionSettingsClient:Lcom/sec/android/app/sbrowser/common/extensions/ExtensionsSettings$Client;

    invoke-virtual {v5, v9, v8}, Lcom/sec/android/app/sbrowser/common/extensions/ExtensionsSettings$Client;->setHasNewExtensionFlag(IZ)V

    :cond_a
    :goto_3
    iget-object v5, p0, Lcom/sec/android/app/sbrowser/extensions/SixPreferencesManager;->mPreference:Lw2/A;

    invoke-virtual {v5}, Lw2/A;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v5

    invoke-virtual {v5, v6}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/extensions/SixPreferencesManager;->mSuggestedPrefs:Ljava/util/ArrayList;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v4}, Lcom/sec/android/app/sbrowser/common/extensions/SixSuggestedPickData;->getPickExtId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :cond_b
    iget-boolean v2, p0, Lcom/sec/android/app/sbrowser/extensions/SixPreferencesManager;->mKeepSuggestedNBadge:Z

    if-eqz v2, :cond_c

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/sec/android/app/sbrowser/extensions/SixPreferencesManager;->mKeepSuggestedNBadge:Z

    :cond_c
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_e

    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_d

    goto :goto_4

    :cond_d
    const-string p0, ","

    invoke-static {p0, v0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/extensions/SixSALogger;->sendSuggestedStatusLog(Ljava/lang/String;)V

    goto :goto_5

    :cond_e
    :goto_4
    invoke-static {}, Lcom/sec/android/app/sbrowser/extensions/SixSALogger;->sendEmptySuggestedStatusLog()V

    :goto_5
    return-void
.end method


# virtual methods
.method public getMoreAddOnsButton()Landroid/widget/Button;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/extensions/SixPreferencesManager;->mMoreAddOns:Landroid/widget/Button;

    return-object p0
.end method

.method public getSixAppsList()Ljava/util/ArrayList;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/sec/android/app/sbrowser/common/extensions/SixAppData;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/extensions/SixPreferencesManager;->mSixAppsList:Ljava/util/ArrayList;

    return-object p0
.end method

.method public initSixDetailsFragment()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/extensions/SixPreferencesManager;->mSixDetailsFragment:Lcom/sec/android/app/sbrowser/extensions/SixDetailsFragment;

    return-void
.end method

.method public initSixPreferences()V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/extensions/SixPreferencesManager;->mWasSixAppStatusChanged:Z

    invoke-static {}, Lcom/sec/android/app/sbrowser/extensions/SixManager;->getInstance()Lcom/sec/android/app/sbrowser/extensions/SixManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/extensions/SixManager;->getSuggestedListMgr()Lcom/sec/android/app/sbrowser/extensions/SixSuggestedListManager;

    move-result-object v0

    new-instance v1, Lcom/sec/android/app/sbrowser/extensions/SixPreferencesManager$2;

    invoke-direct {v1, p0}, Lcom/sec/android/app/sbrowser/extensions/SixPreferencesManager$2;-><init>(Lcom/sec/android/app/sbrowser/extensions/SixPreferencesManager;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/extensions/SixSuggestedListManager;->setPrefRefreshCallback(Lcom/sec/android/app/sbrowser/common/extensions/ExtensionsFragmentCallback$PrefRefreshCallback;)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/extensions/SixPkgUpdater;->getInstance()Lcom/sec/android/app/sbrowser/extensions/SixPkgUpdater;

    move-result-object v0

    new-instance v1, Lcom/sec/android/app/sbrowser/extensions/SixPreferencesManager$3;

    invoke-direct {v1, p0}, Lcom/sec/android/app/sbrowser/extensions/SixPreferencesManager$3;-><init>(Lcom/sec/android/app/sbrowser/extensions/SixPreferencesManager;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/extensions/SixPkgUpdater;->setLoadIconCallback(Lcom/sec/android/app/sbrowser/common/extensions/ExtensionsFragmentCallback$LoadIconCallback;)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/extensions/SixPkgUpdater;->getInstance()Lcom/sec/android/app/sbrowser/extensions/SixPkgUpdater;

    move-result-object v0

    new-instance v1, Lcom/sec/android/app/sbrowser/extensions/SixPreferencesManager$4;

    invoke-direct {v1, p0}, Lcom/sec/android/app/sbrowser/extensions/SixPreferencesManager$4;-><init>(Lcom/sec/android/app/sbrowser/extensions/SixPreferencesManager;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/extensions/SixPkgUpdater;->setCrxInstallCallback(Lcom/sec/android/app/sbrowser/common/extensions/ExtensionsFragmentCallback$CrxInstallCallback;)V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extensions/SixPreferencesManager;->mFragmentRefreshCallback:Lcom/sec/android/app/sbrowser/common/extensions/ExtensionsFragmentCallback$PrefRefreshCallback;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/extensions/SixPreferencesManager;->mFragmentRefreshCallback:Lcom/sec/android/app/sbrowser/common/extensions/ExtensionsFragmentCallback$PrefRefreshCallback;

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extensions/SixPreferencesManager;->mSixDetailsFragment:Lcom/sec/android/app/sbrowser/extensions/SixDetailsFragment;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/extensions/SixDetailsFragment;->hideIfNeeded()V

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/extensions/SixPreferencesManager;->mSixDetailsFragment:Lcom/sec/android/app/sbrowser/extensions/SixDetailsFragment;

    :cond_1
    return-void
.end method

.method public onPause()V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extensions/SixPreferencesManager;->mSixDialogService:Lcom/sec/android/app/sbrowser/extensions/SixDialogService;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/extensions/SixDialogService;->dismissPermissionDialogs()V

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/extensions/SixPreferencesManager;->mWasSixAppStatusChanged:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extensions/SixPreferencesManager;->mSixDialogService:Lcom/sec/android/app/sbrowser/extensions/SixDialogService;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/extensions/SixDialogService;->shouldFlushAppData()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-static {}, Lcom/sec/android/app/sbrowser/extensions/SixManager;->getInstance()Lcom/sec/android/app/sbrowser/extensions/SixManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/extensions/SixManager;->flushSixAppData()V

    :cond_1
    invoke-static {}, Lcom/sec/android/app/sbrowser/extensions/SixManager;->getInstance()Lcom/sec/android/app/sbrowser/extensions/SixManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/extensions/SixManager;->getSuggestedListMgr()Lcom/sec/android/app/sbrowser/extensions/SixSuggestedListManager;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/extensions/SixPreferencesManager;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/extensions/SixSuggestedListManager;->setNBadgeEverShownList(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extensions/SixPreferencesManager;->mExtensionSettingsClient:Lcom/sec/android/app/sbrowser/common/extensions/ExtensionsSettings$Client;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/common/extensions/ExtensionsSettings$Client;->hasNewExtensionFlag(I)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extensions/SixPreferencesManager;->mExtensionSettingsClient:Lcom/sec/android/app/sbrowser/common/extensions/ExtensionsSettings$Client;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/sbrowser/common/extensions/ExtensionsSettings$Client;->setHasNewExtensionFlag(IZ)V

    :cond_2
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/extensions/SixPreferencesManager;->mActivity:Landroid/app/Activity;

    return-void
.end method

.method public onViewCreated(Landroid/view/View;)V
    .locals 5

    move-object v0, p1

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/extensions/SixPreferencesManager;->mActivity:Landroid/app/Activity;

    const-string v2, "layout_inflater"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const v4, 0x7f0e08a1

    invoke-virtual {v1, v4, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    const v0, 0x7f0b0b96

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/extensions/SixPreferencesManager;->mMoreAddOns:Landroid/widget/Button;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/extensions/SixPreferencesManager;->updateMoreAddOnsButton()V

    return-void
.end method

.method public runPreferenceClick(Landroidx/preference/Preference;Lcom/sec/android/app/sbrowser/common/extensions/SixAppData;Z)Z
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "runPreferenceClick running with "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SixPreferencesManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/extensions/SixPreferencesManager;->hidebadgesByAction(Landroidx/preference/Preference;Lcom/sec/android/app/sbrowser/common/extensions/SixAppData;)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/extensions/SixStatus;->getInstance()Lcom/sec/android/app/sbrowser/common/extensions/SixStatus;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/sec/android/app/sbrowser/common/extensions/SixStatus;->isDefaultExtEnabled(Z)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/common/extensions/SixAppDataCommon;->isDefaultExt()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "runPreferenceClick show dialog for "

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/extensions/SixPreferencesManager;->mSixDialogService:Lcom/sec/android/app/sbrowser/extensions/SixDialogService;

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/extensions/SixPreferencesManager;->mActivity:Landroid/app/Activity;

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/common/extensions/SixAppDataCommon;->getAppName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/common/extensions/SixAppDataCommon;->getPkgName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p0, p3, p2}, Lcom/sec/android/app/sbrowser/extensions/SixDialogService;->showUninstallGuideDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return v2

    :cond_1
    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/common/extensions/SixAppData;->isLimited()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/extensions/SixPreferencesManager;->mSixDialogService:Lcom/sec/android/app/sbrowser/extensions/SixDialogService;

    if-eqz p0, :cond_2

    invoke-virtual {p0, p2}, Lcom/sec/android/app/sbrowser/extensions/SixDialogService;->showSixSIUpdateGuideDialogIfNeeded(Lcom/sec/android/app/sbrowser/common/extensions/SixAppData;)V

    :cond_2
    return v2

    :cond_3
    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/common/extensions/SixAppData;->isNotInstalled()Z

    move-result v0

    if-nez v0, :cond_7

    if-eqz p3, :cond_4

    goto :goto_1

    :cond_4
    invoke-static {}, Lcom/sec/android/app/sbrowser/extensions/SixManager;->getInstance()Lcom/sec/android/app/sbrowser/extensions/SixManager;

    move-result-object p3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extensions/SixPreferencesManager;->mActivity:Landroid/app/Activity;

    invoke-virtual {p3, v0}, Lcom/sec/android/app/sbrowser/extensions/SixManager;->isRunningSecretMode(Landroid/app/Activity;)Z

    move-result p3

    if-eqz p3, :cond_6

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/common/extensions/SixAppData;->isOn()Z

    move-result p2

    if-eqz p2, :cond_5

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/extensions/SixPreferencesManager;->mActivity:Landroid/app/Activity;

    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, v2, p1}, Lcom/sec/android/app/sbrowser/common/extensions/SixUtil;->showMsgInSecretMode(Landroid/app/Activity;ZLjava/lang/String;)V

    goto :goto_0

    :cond_5
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/extensions/SixPreferencesManager;->mActivity:Landroid/app/Activity;

    const/4 p2, 0x0

    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p2, p1}, Lcom/sec/android/app/sbrowser/common/extensions/SixUtil;->showMsgInSecretMode(Landroid/app/Activity;ZLjava/lang/String;)V

    :goto_0
    return v2

    :cond_6
    invoke-static {p2}, Lcom/sec/android/app/sbrowser/extensions/SixDetailsFragment;->newInstance(Lcom/sec/android/app/sbrowser/common/extensions/SixAppData;)Lcom/sec/android/app/sbrowser/extensions/SixDetailsFragment;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/extensions/SixPreferencesManager;->mSixDetailsFragment:Lcom/sec/android/app/sbrowser/extensions/SixDetailsFragment;

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/extensions/SixPreferencesManager;->mActivity:Landroid/app/Activity;

    check-cast p1, Landroidx/fragment/app/J;

    invoke-virtual {p1}, Landroidx/fragment/app/J;->getSupportFragmentManager()Landroidx/fragment/app/f0;

    move-result-object p1

    invoke-static {p1, p1}, LV0/c;->d(Landroidx/fragment/app/f0;Landroidx/fragment/app/f0;)Landroidx/fragment/app/a;

    move-result-object p1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/extensions/SixPreferencesManager;->mSixDetailsFragment:Lcom/sec/android/app/sbrowser/extensions/SixDetailsFragment;

    const p2, 0x7f0b02ee

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p0, p3}, Landroidx/fragment/app/a;->k(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)V

    invoke-virtual {p1, p3}, Landroidx/fragment/app/a;->c(Ljava/lang/String;)V

    invoke-virtual {p1, v2, v2}, Landroidx/fragment/app/a;->f(ZZ)I

    return v2

    :cond_7
    :goto_1
    const-string p0, "runPreferenceClick - Installing or Uninstalling"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2
.end method

.method public setExtensionActivity(Landroid/app/Activity;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/extensions/SixPreferencesManager;->mActivity:Landroid/app/Activity;

    return-void
.end method

.method public setExtensionSettingsClient(Lcom/sec/android/app/sbrowser/common/extensions/ExtensionsSettings$Client;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/extensions/SixPreferencesManager;->mExtensionSettingsClient:Lcom/sec/android/app/sbrowser/common/extensions/ExtensionsSettings$Client;

    return-void
.end method

.method public setFragmentRefreshCallback(Lcom/sec/android/app/sbrowser/common/extensions/ExtensionsFragmentCallback$PrefRefreshCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/extensions/SixPreferencesManager;->mFragmentRefreshCallback:Lcom/sec/android/app/sbrowser/common/extensions/ExtensionsFragmentCallback$PrefRefreshCallback;

    return-void
.end method

.method public updatePreferences()V
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/extensions/SixPreferencesManager;->updateSixPreferences()V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/extensions/SixPreferencesManager;->mFragmentRefreshCallback:Lcom/sec/android/app/sbrowser/common/extensions/ExtensionsFragmentCallback$PrefRefreshCallback;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/common/extensions/ExtensionsFragmentCallback$PrefRefreshCallback;->refreshSixPreferences()V

    goto :goto_0

    :cond_0
    const-string p0, "SixPreferencesManager"

    const-string v0, "updatePreferences - No callback to update pref category"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public updateSixPreferences()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extensions/SixPreferencesManager;->mActivity:Landroid/app/Activity;

    if-nez v0, :cond_0

    const-string p0, "SixPreferencesManager"

    const-string v0, "updateSixPreferences - In bg now. Aborting UX update."

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/extensions/SixPreferencesManager;->updateSixSuggestedList()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/extensions/SixPreferencesManager;->updateSixInstalledList()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/extensions/SixPreferencesManager;->handleNewExtensionFlag()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/extensions/SixPreferencesManager;->updateMoreAddOnsButton()V

    return-void
.end method
