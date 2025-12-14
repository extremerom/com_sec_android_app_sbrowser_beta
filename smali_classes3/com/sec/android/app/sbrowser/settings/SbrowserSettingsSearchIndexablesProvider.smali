.class public Lcom/sec/android/app/sbrowser/settings/SbrowserSettingsSearchIndexablesProvider;
.super Ls9/c;
.source "SourceFile"


# static fields
.field private static isSupportEnglishMenu:Z


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ls9/c;-><init>()V

    return-void
.end method

.method private addPATData(Landroid/database/MatrixCursor;)V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/SbrowserSettingsSearchIndexablesProvider;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/privacy_pass/PATFeatureConfigManager;->isPATSupported(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/SbrowserSettingsSearchIndexablesProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->getInstance()Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->isFirstInstalled()Z

    move-result v1

    if-eqz v1, :cond_0

    const v1, 0x7f140a1f

    goto :goto_0

    :cond_0
    const v1, 0x7f14093a

    :goto_0
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f140a21

    const-string v2, "private_access_token"

    invoke-direct {p0, v1, v2, v0}, Lcom/sec/android/app/sbrowser/settings/SbrowserSettingsSearchIndexablesProvider;->setRawInfo(ILjava/lang/String;Ljava/lang/String;)[Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method private addSearchableData(Landroid/database/MatrixCursor;)V
    .locals 16

    move-object/from16 v0, p0

    const-string v1, "addSearchableData"

    const-string v2, "SbrowserSettingsSearchIndexablesProvider"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    sget-object v1, Lcom/sec/android/app/sbrowser/common/constants/settings/SettingsConstants;->SETTING_FRAGMENT_SEARCHABLE_XML_LIST:[I

    array-length v3, v1

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v3, :cond_d

    aget v6, v1, v5

    iget-object v7, v0, Lcom/sec/android/app/sbrowser/settings/SbrowserSettingsSearchIndexablesProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v6}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v6

    if-nez v6, :cond_0

    return-void

    :cond_0
    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v7
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v8, ""

    move-object v9, v8

    :goto_1
    const/4 v10, 0x1

    if-eq v7, v10, :cond_c

    const/4 v11, 0x2

    if-ne v7, v11, :cond_b

    :try_start_1
    invoke-interface {v6}, Landroid/util/AttributeSet;->getAttributeCount()I

    move-result v7

    const-string v11, "false"

    move-object v13, v8

    move-object v14, v13

    const/4 v12, 0x0

    :goto_2
    if-ge v12, v7, :cond_4

    const-string v15, "key"

    invoke-interface {v6, v12}, Landroid/util/AttributeSet;->getAttributeName(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v15, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v6, v12}, Landroid/util/AttributeSet;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v13

    goto :goto_3

    :catch_0
    move-exception v0

    goto/16 :goto_6

    :cond_1
    :goto_3
    const-string v4, "title"

    invoke-interface {v6, v12}, Landroid/util/AttributeSet;->getAttributeName(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v4, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v6, v12}, Landroid/util/AttributeSet;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v14

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, v0, Lcom/sec/android/app/sbrowser/settings/SbrowserSettingsSearchIndexablesProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v14, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v4, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object v9, v4

    :cond_2
    const-string v4, "searchable"

    invoke-interface {v6, v12}, Landroid/util/AttributeSet;->getAttributeName(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v4, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v6, v12}, Landroid/util/AttributeSet;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v4

    move-object v11, v4

    :cond_3
    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    :cond_4
    const-string v4, "true"

    invoke-static {v11, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_b

    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_b

    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_b

    iget-object v4, v0, Lcom/sec/android/app/sbrowser/settings/SbrowserSettingsSearchIndexablesProvider;->mContext:Landroid/content/Context;

    invoke-static {v13, v4}, Lcom/sec/android/app/sbrowser/settings/utils/SettingsUtils;->isSearchable(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_b

    invoke-virtual {v14, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    const-string v7, "about"

    invoke-static {v13, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DeviceSettings;->isReplaceSecBrandAsGalaxy()Z

    move-result v4

    if-eqz v4, :cond_5

    const v4, 0x7f140a3c

    goto :goto_4

    :cond_5
    const v4, 0x7f140a3d

    goto :goto_4

    :cond_6
    const-string v7, "pref_leave_internet"

    invoke-static {v13, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_8

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DeviceSettings;->isReplaceSecBrandAsGalaxy()Z

    move-result v4

    if-eqz v4, :cond_7

    const v4, 0x7f140ee7

    goto :goto_4

    :cond_7
    const v4, 0x7f140ee6

    goto :goto_4

    :cond_8
    const-string v7, "cloud_sync"

    invoke-static {v13, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_a

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/sync/SyncUtil;->disabledSamsungCloudMenu()Z

    move-result v4

    if-eqz v4, :cond_9

    const v4, 0x7f140ffe

    goto :goto_4

    :cond_9
    const v4, 0x7f140fff

    :cond_a
    :goto_4
    invoke-direct {v0, v4, v13, v9}, Lcom/sec/android/app/sbrowser/settings/SbrowserSettingsSearchIndexablesProvider;->setRawInfo(ILjava/lang/String;Ljava/lang/String;)[Ljava/lang/Object;

    move-result-object v4

    move-object/from16 v7, p1

    invoke-virtual {v7, v4}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_5

    :cond_b
    move-object/from16 v7, p1

    :goto_5
    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v4

    move v7, v4

    goto/16 :goto_1

    :cond_c
    move-object/from16 v7, p1

    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0

    :cond_d
    move-object/from16 v7, p1

    invoke-direct/range {p0 .. p1}, Lcom/sec/android/app/sbrowser/settings/SbrowserSettingsSearchIndexablesProvider;->addPATData(Landroid/database/MatrixCursor;)V
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_7

    :goto_6
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "addSearchableData parser error : "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1, v2}, Landroidx/recyclerview/widget/P;->s(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :goto_7
    return-void
.end method

.method private setRawInfo(ILjava/lang/String;Ljava/lang/String;)[Ljava/lang/Object;
    .locals 2

    const/16 v0, 0x10

    new-array v0, v0, [Ljava/lang/Object;

    sget-boolean v1, Lcom/sec/android/app/sbrowser/settings/SbrowserSettingsSearchIndexablesProvider;->isSupportEnglishMenu:Z

    if-eqz v1, :cond_0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/SbrowserSettingsSearchIndexablesProvider;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    :goto_0
    const/4 p1, 0x1

    aput-object p0, v0, p1

    const/16 p0, 0xc

    aput-object p2, v0, p0

    const p0, 0x7f110002

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/16 p1, 0x8

    aput-object p0, v0, p1

    const/4 p0, 0x6

    aput-object p3, v0, p0

    const-class p0, Lcom/sec/android/app/sbrowser/settings/SettingsActivity;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x7

    aput-object p1, v0, p2

    const/16 p1, 0x9

    const-string p2, "com.sec.android.intent.action.SEC_APPLICATION_SETTINGS"

    aput-object p2, v0, p1

    const/16 p1, 0xa

    const-string p2, "com.sec.android.app.sbrowser.beta"

    aput-object p2, v0, p1

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    const/16 p1, 0xb

    aput-object p0, v0, p1

    return-object v0
.end method


# virtual methods
.method public attachInfo(Landroid/content/Context;Landroid/content/pm/ProviderInfo;)V
    .locals 0

    invoke-super {p0, p1, p2}, Ls9/c;->attachInfo(Landroid/content/Context;Landroid/content/pm/ProviderInfo;)V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/settings/SbrowserSettingsSearchIndexablesProvider;->mContext:Landroid/content/Context;

    const-string p0, "SbrowserSettingsSearchIndexablesProvider"

    const-string p1, "Internet setting indexing"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onCreate()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public queryNonIndexableKeys([Ljava/lang/String;)Landroid/database/Cursor;
    .locals 0

    new-instance p0, Landroid/database/MatrixCursor;

    sget-object p1, Ls9/b;->c:[Ljava/lang/String;

    invoke-direct {p0, p1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    const-string p1, "dummy_internet"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    return-object p0
.end method

.method public queryRawData([Ljava/lang/String;)Landroid/database/Cursor;
    .locals 5

    new-instance p1, Landroid/database/MatrixCursor;

    sget-object v0, Ls9/b;->b:[Ljava/lang/String;

    invoke-direct {p1, v0}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1f

    const/4 v2, 0x1

    if-lt v0, v1, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    sput-boolean v0, Lcom/sec/android/app/sbrowser/settings/SbrowserSettingsSearchIndexablesProvider;->isSupportEnglishMenu:Z

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/application/AppInfo;->isBetaApk()Z

    move-result v0

    const/16 v1, 0x10

    new-array v1, v1, [Ljava/lang/Object;

    sget-boolean v3, Lcom/sec/android/app/sbrowser/settings/SbrowserSettingsSearchIndexablesProvider;->isSupportEnglishMenu:Z

    const v4, 0x7f140f14

    if-eqz v3, :cond_1

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :cond_1
    iget-object v3, p0, Lcom/sec/android/app/sbrowser/settings/SbrowserSettingsSearchIndexablesProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    :goto_1
    aput-object v3, v1, v2

    if-eqz v0, :cond_2

    const-string v2, "top_level_internet_beta_setting_root"

    goto :goto_2

    :cond_2
    const-string v2, "top_level_internet_setting_root"

    :goto_2
    const/16 v3, 0xc

    aput-object v2, v1, v3

    if-eqz v0, :cond_3

    const/high16 v0, 0x7f110000

    goto :goto_3

    :cond_3
    const v0, 0x7f110002

    :goto_3
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v2, 0x8

    aput-object v0, v1, v2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/SbrowserSettingsSearchIndexablesProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x6

    aput-object v0, v1, v2

    const-class v0, Lcom/sec/android/app/sbrowser/settings/SettingsActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x7

    aput-object v2, v1, v3

    const/16 v2, 0x9

    const-string v3, "com.sec.android.intent.action.SEC_APPLICATION_SETTINGS"

    aput-object v3, v1, v2

    const/16 v2, 0xa

    const-string v3, "com.sec.android.app.sbrowser.beta"

    aput-object v3, v1, v2

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0xb

    aput-object v0, v1, v2

    invoke-virtual {p1, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/settings/SbrowserSettingsSearchIndexablesProvider;->addSearchableData(Landroid/database/MatrixCursor;)V

    return-object p1
.end method

.method public queryXmlResources([Ljava/lang/String;)Landroid/database/Cursor;
    .locals 0

    new-instance p0, Landroid/database/MatrixCursor;

    sget-object p1, Ls9/b;->a:[Ljava/lang/String;

    invoke-direct {p0, p1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    return-object p0
.end method

.method public secQueryGetFingerprint()Ljava/lang/String;
    .locals 4
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const-string p0, "SbrowserSettingsSearchIndexablesProvider"

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/application/ApplicationStatus;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    :try_start_0
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "SamsungInternet_NameNotFoundException"

    :goto_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "secQueryGetFingerprint versionName for Internet : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
