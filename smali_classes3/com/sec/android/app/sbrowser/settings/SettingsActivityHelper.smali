.class public Lcom/sec/android/app/sbrowser/settings/SettingsActivityHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method private static addPATData(Landroid/app/Activity;)Lcom/sec/android/app/sbrowser/settings/search/SettingSearchItem;
    .locals 8

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f14093a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    new-instance v0, Lcom/sec/android/app/sbrowser/settings/search/SettingSearchItem;

    const v1, 0x7f140a21

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, p0}, Lcom/sec/android/app/sbrowser/settings/SettingsActivityHelper;->getResStringLanguage(ILandroid/app/Activity;)Ljava/lang/String;

    move-result-object v5

    const-string v7, "private_access_token"

    move-object v2, v0

    move-object v3, v7

    invoke-direct/range {v2 .. v7}, Lcom/sec/android/app/sbrowser/settings/search/SettingSearchItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static addSearchableData(Landroid/app/Activity;)Ljava/util/ArrayList;
    .locals 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/sec/android/app/sbrowser/settings/search/SettingSearchItem;",
            ">;"
        }
    .end annotation

    move-object/from16 v1, p0

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    :try_start_0
    sget-object v4, Lcom/sec/android/app/sbrowser/common/constants/settings/SettingsConstants;->SETTING_FRAGMENT_SEARCHABLE_XML_LIST:[I

    array-length v5, v4

    const/4 v7, 0x0

    :goto_0
    if-ge v7, v5, :cond_b

    aget v8, v4, v7

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9, v8}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v8

    invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v9
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v10, ""

    move-object v11, v10

    move-object v12, v11

    :goto_1
    const/4 v13, 0x1

    if-eq v9, v13, :cond_a

    const/4 v14, 0x2

    if-ne v9, v14, :cond_8

    :try_start_1
    invoke-interface {v8}, Landroid/util/AttributeSet;->getAttributeCount()I

    move-result v9

    const-string v14, "false"

    move-object v15, v10

    move-object/from16 v16, v15

    const/4 v6, 0x0

    :goto_2
    if-ge v6, v9, :cond_5

    const-string v13, "key"

    move-object/from16 v21, v4

    invoke-interface {v8, v6}, Landroid/util/AttributeSet;->getAttributeName(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v13, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v8, v6}, Landroid/util/AttributeSet;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v12

    goto :goto_3

    :catch_0
    move-exception v0

    goto/16 :goto_6

    :cond_0
    :goto_3
    invoke-interface {v8, v6}, Landroid/util/AttributeSet;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v15

    :cond_1
    const-string v4, "title"

    invoke-interface {v8, v6}, Landroid/util/AttributeSet;->getAttributeName(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v4, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v8, v6}, Landroid/util/AttributeSet;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_2

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const/4 v13, 0x1

    invoke-virtual {v4, v13}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    invoke-virtual {v11, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    :cond_2
    move-object/from16 v16, v4

    :cond_3
    const-string v4, "searchable"

    invoke-interface {v8, v6}, Landroid/util/AttributeSet;->getAttributeName(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v4, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v8, v6}, Landroid/util/AttributeSet;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v4

    move-object v14, v4

    :cond_4
    add-int/lit8 v6, v6, 0x1

    move-object/from16 v4, v21

    const/4 v13, 0x1

    goto :goto_2

    :cond_5
    move-object/from16 v21, v4

    const-string v4, "true"

    invoke-static {v14, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_9

    invoke-static/range {v16 .. v16}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_9

    invoke-static {v15, v1}, Lcom/sec/android/app/sbrowser/settings/utils/SettingsUtils;->isSearchable(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_9

    move-object/from16 v6, v16

    const/4 v4, 0x1

    invoke-virtual {v6, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    const-string v6, "cloud_sync"

    invoke-static {v15, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/sync/SyncUtil;->disabledSamsungCloudMenu()Z

    move-result v4

    if-eqz v4, :cond_6

    const v4, 0x7f140ffe

    goto :goto_4

    :cond_6
    const v4, 0x7f140fff

    :cond_7
    :goto_4
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v17

    new-instance v6, Lcom/sec/android/app/sbrowser/settings/search/SettingSearchItem;

    invoke-static {v4, v1}, Lcom/sec/android/app/sbrowser/settings/SettingsActivityHelper;->getResStringLanguage(ILandroid/app/Activity;)Ljava/lang/String;

    move-result-object v18

    move-object v4, v15

    move-object v15, v6

    move-object/from16 v16, v4

    move-object/from16 v19, v11

    move-object/from16 v20, v12

    invoke-direct/range {v15 .. v20}, Lcom/sec/android/app/sbrowser/settings/search/SettingSearchItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6}, Lcom/sec/android/app/sbrowser/settings/search/SettingSearchItem;->getMPrefKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_8
    move-object/from16 v21, v4

    :cond_9
    :goto_5
    invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v9
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    move-object/from16 v4, v21

    goto/16 :goto_1

    :cond_a
    move-object/from16 v21, v4

    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_0

    :goto_6
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "addSearchableData parser error : "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "SettingsActivityHelper"

    invoke-static {v0, v4, v5}, Landroidx/recyclerview/widget/P;->s(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :cond_b
    invoke-static/range {p0 .. p0}, Lcom/sec/android/app/sbrowser/privacy_pass/PATFeatureConfigManager;->isPATSupported(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-static/range {p0 .. p0}, Lcom/sec/android/app/sbrowser/settings/SettingsActivityHelper;->addPATData(Landroid/app/Activity;)Lcom/sec/android/app/sbrowser/settings/search/SettingSearchItem;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_c
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    new-instance v1, Ljava/util/Locale;

    invoke-direct {v1, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/res/Configuration;->setLocale(Ljava/util/Locale;)V

    return-object v2
.end method

.method public static createSettingFragmentSearchableXmlClassList()Ljava/util/ArrayList;
    .locals 20
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    new-instance v1, Landroid/util/Pair;

    sget-object v2, Lcom/sec/android/app/sbrowser/common/constants/settings/SettingsConstants;->SETTING_FRAGMENT_SEARCHABLE_XML_LIST:[I

    const/4 v3, 0x0

    aget v3, v2, v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-class v4, Lcom/sec/android/app/sbrowser/settings/SettingsFragment;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v3, Landroid/util/Pair;

    const/4 v4, 0x1

    aget v4, v2, v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-class v5, Lcom/sec/android/app/sbrowser/settings/DisplayPreferenceFragment;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v4, Landroid/util/Pair;

    const/4 v5, 0x2

    aget v5, v2, v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-class v6, Lcom/sec/android/app/sbrowser/settings/PrivacyPreferenceFragment;

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v5, Landroid/util/Pair;

    const/4 v6, 0x3

    aget v6, v2, v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-class v7, Lcom/sec/android/app/sbrowser/settings/PersonalDataPreferenceFragment;

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v6, Landroid/util/Pair;

    const/4 v7, 0x4

    aget v7, v2, v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const-class v8, Lcom/sec/android/app/sbrowser/settings/SitesContentPreferenceFragment;

    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v7, Landroid/util/Pair;

    const/4 v8, 0x5

    aget v8, v2, v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const-class v9, Lcom/sec/android/app/sbrowser/settings/UsefulFeaturesPreferenceFragment;

    invoke-virtual {v9}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v7, v8, v9}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v8, Landroid/util/Pair;

    const/4 v9, 0x6

    aget v9, v2, v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const-class v10, Lcom/sec/android/app/sbrowser/settings/LabsPreferenceFragment;

    invoke-virtual {v10}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v8, v9, v10}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v9, Landroid/util/Pair;

    const/4 v10, 0x7

    aget v10, v2, v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const-class v11, Lcom/sec/android/app/sbrowser/settings/LayoutPreferenceFragment;

    invoke-virtual {v11}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v9, v10, v11}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v10, Landroid/util/Pair;

    const/16 v11, 0x8

    aget v11, v2, v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const-class v12, Lcom/sec/android/app/sbrowser/settings/browsing_assist/BrowsingAssistFragment;

    invoke-virtual {v12}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v10, v11, v12}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v11, Landroid/util/Pair;

    const/16 v12, 0x9

    aget v12, v2, v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    const-class v13, Lcom/sec/android/app/sbrowser/settings/SitesPermissionsPreferenceFragment;

    invoke-virtual {v13}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v11, v12, v13}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v12, Landroid/util/Pair;

    const/16 v13, 0xa

    aget v13, v2, v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    const-class v14, Lcom/sec/android/app/sbrowser/settings/SearchEnginePreferenceFragment;

    invoke-virtual {v14}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v12, v13, v14}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v13, Landroid/util/Pair;

    const/16 v14, 0xb

    aget v14, v2, v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const-class v15, Lcom/sec/android/app/sbrowser/settings/ReadAloudPreferenceFragment;

    invoke-virtual {v15}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v13, v14, v15}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v14, Landroid/util/Pair;

    const/16 v15, 0xc

    aget v15, v2, v15

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    const-class v16, Lcom/sec/android/app/sbrowser/settings/autofill/AutofillFormsPreferenceFragment;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v14, v15, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v0, Landroid/util/Pair;

    const/16 v15, 0xd

    aget v15, v2, v15

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    const-class v16, Lcom/sec/android/app/sbrowser/settings/browsing_assist/ReadArticlesAloudPreferenceFragment;

    move-object/from16 v18, v14

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v0, v15, v14}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v15, Landroid/util/Pair;

    const/16 v14, 0xe

    aget v14, v2, v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const-class v16, Lcom/sec/android/app/sbrowser/settings/TranslatorPreferenceFragment;

    move-object/from16 v19, v0

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v15, v14, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v0, Landroid/util/Pair;

    const/16 v14, 0xf

    aget v2, v2, v14

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-class v14, Lcom/sec/android/app/sbrowser/settings/manage_dark_mode/ManageDarkModePreferenceFragment;

    invoke-virtual {v14}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v0, v2, v14}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v2, v3

    move-object v3, v4

    move-object v4, v5

    move-object v5, v6

    move-object v6, v7

    move-object v7, v8

    move-object v8, v9

    move-object v9, v10

    move-object v10, v11

    move-object v11, v12

    move-object v12, v13

    move-object/from16 v13, v18

    move-object/from16 v14, v19

    move-object/from16 v16, v0

    filled-new-array/range {v1 .. v16}, [Landroid/util/Pair;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    move-object/from16 v1, v17

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v1
.end method

.method public static getFragmentTag(Landroidx/fragment/app/Fragment;)Ljava/lang/String;
    .locals 0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getTag()Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static getInitialFragment(Ljava/lang/String;Landroid/app/Activity;Ljava/util/List;)Ljava/lang/String;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/app/Activity;",
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "getInitialFragment : key = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SettingsActivityHelper"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "private_access_token"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/settings/SettingsActivityHelper;->handlePatFromGlobalSearch(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 v0, 0x0

    :try_start_0
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget-object v4, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v3

    if-nez v3, :cond_2

    return-object v0

    :cond_2
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v4

    :goto_0
    const/4 v5, 0x1

    if-eq v4, v5, :cond_1

    const/4 v5, 0x2

    if-ne v4, v5, :cond_4

    invoke-interface {v3}, Landroid/util/AttributeSet;->getAttributeCount()I

    move-result v4

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v4, :cond_4

    const-string v6, "key"

    invoke-interface {v3, v5}, Landroid/util/AttributeSet;->getAttributeName(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v3, v5}, Landroid/util/AttributeSet;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_3

    iget-object p0, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    return-object p0

    :catch_0
    move-exception p0

    goto :goto_2

    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_4
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v4
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :goto_2
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "getInitialFragment parser error : "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, p1, v1}, Landroidx/recyclerview/widget/P;->s(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :cond_5
    return-object v0
.end method

.method public static getMarginForDEX(ILandroid/content/Context;)I
    .locals 2

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->getWidth(Landroid/content/Context;)I

    move-result p1

    const/16 v0, 0x3c0

    if-lt p1, v0, :cond_0

    sub-int/2addr p1, v0

    div-int/lit8 p0, p1, 0x2

    goto :goto_0

    :cond_0
    const/16 v0, 0x24c

    if-le p1, v0, :cond_1

    int-to-double p0, p1

    const-wide v0, 0x3fc1eb851eb851ecL    # 0.14

    mul-double/2addr p0, v0

    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    div-double/2addr p0, v0

    double-to-int p0, p0

    :cond_1
    :goto_0
    return p0
.end method

.method private static getResStringLanguage(ILandroid/app/Activity;)Ljava/lang/String;
    .locals 3

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    new-instance v1, Ljava/util/Locale;

    const-string v2, "en"

    invoke-direct {v1, v2}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/res/Configuration;->setLocale(Ljava/util/Locale;)V

    invoke-virtual {p1, v0}, Landroid/content/Context;->createConfigurationContext(Landroid/content/res/Configuration;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static handlePatFromGlobalSearch(Landroid/app/Activity;)Ljava/lang/String;
    .locals 3

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/privacy_pass/PATFeatureConfigManager;->isPATSupported(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->getInstance()Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;

    move-result-object v0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager;->isSecretModeEnabled(Landroid/app/Activity;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->getAntiTrackingLevel(Z)I

    move-result v0

    if-eqz v0, :cond_0

    const-class v0, Lcom/sec/android/app/sbrowser/settings/security_panel/history/DetailHistoryFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    invoke-static {v0, v1, p0}, Lcom/sec/android/app/sbrowser/settings/SettingsActivityHelper;->putBundleDataForPATSwitchHighlight(Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Activity;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p0

    const-string v2, "sbrowser.settings.show_fragment"

    invoke-virtual {p0, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "sbrowser.settings.show_fragment_args"

    invoke-virtual {p0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    return-object v0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static hideRoundCornerAtWhiteBgFragments(Ljava/lang/String;Landroid/app/Activity;)V
    .locals 1

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/settings/SettingsActivityHelper;->shouldHideRoundCornerAtWhiteBgFragments(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    const p0, 0x7f0b0696

    invoke-virtual {p1, p0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p0

    const v0, 0x7f0b0a0c

    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const/16 v0, 0x8

    if-eqz p0, :cond_0

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method private static isScrollbarNeedToMove(Landroidx/fragment/app/Fragment;)Z
    .locals 1

    instance-of v0, p0, Lw2/A;

    if-eqz v0, :cond_0

    check-cast p0, Lw2/A;

    invoke-virtual {p0}, Lw2/A;->getListView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static putBundleDataForPATSwitchHighlight(Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Activity;)V
    .locals 2

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f14093a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p0, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p2}, Lcom/sec/android/app/sbrowser/secret_mode/SecretModeManager;->isSecretModeEnabled(Landroid/app/Activity;)Z

    move-result p0

    const-string p2, "is_secretmode"

    invoke-virtual {p1, p2, p0}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    if-eqz p0, :cond_0

    const-string p2, "anti_tracking_secret_mode_level"

    goto :goto_0

    :cond_0
    const-string p2, "anti_tracking_level"

    :goto_0
    const-string v0, "key"

    invoke-virtual {p1, v0, p2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "count"

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->getInstance()Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;

    move-result-object p2

    invoke-virtual {p2, p0}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->getAntiTrackingLevel(Z)I

    move-result p0

    const-string p2, "sat_level"

    invoke-virtual {p1, p2, p0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const-string p0, "start_date"

    const-wide/16 v0, 0x0

    invoke-virtual {p1, p0, v0, v1}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    const-string p0, "end_date"

    invoke-virtual {p1, p0, v0, v1}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    const-string p0, ":settings:fragment_args_key"

    const-string p2, "private_access_token"

    invoke-virtual {p1, p0, p2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static setBackKeyVisibility(Lcom/sec/android/app/sbrowser/settings/SettingsActivity;Z)V
    .locals 1

    invoke-virtual {p0}, Lm/n;->getSupportActionBar()Lm/b;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lm/n;->getSupportActionBar()Lm/b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lm/b;->n(Z)V

    if-nez p1, :cond_1

    invoke-virtual {p0}, Lm/n;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f071312

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    invoke-static {p1, p0}, Lcom/sec/android/app/sbrowser/settings/SettingsActivityHelper;->setLeftPaddingForToolbarTitleText(ILcom/sec/android/app/sbrowser/settings/SettingsActivity;)V

    return-void
.end method

.method public static setCtrlKeyPressed(ZLm/n;)V
    .locals 1

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/settings/FragmentCommonHelper;->getTopFragment(Lm/n;)Landroidx/fragment/app/Fragment;

    move-result-object p1

    instance-of v0, p1, Lcom/sec/android/app/sbrowser/common/model/settings/CtrlKeyHandler;

    if-eqz v0, :cond_1

    check-cast p1, Lcom/sec/android/app/sbrowser/common/model/settings/CtrlKeyHandler;

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/common/model/settings/CtrlKeyHandler;->getListView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Landroidx/recyclerview/widget/RecyclerView;->seslSetCtrlkeyPressed(Z)V

    :cond_0
    invoke-interface {p1, p0}, Lcom/sec/android/app/sbrowser/common/model/settings/CtrlKeyHandler;->setCtrlKeyPressed(Z)V

    :cond_1
    return-void
.end method

.method public static setLayoutMargin(ZILcom/sec/android/app/sbrowser/settings/SettingsActivity;Lcom/sec/android/app/sbrowser/settings/search/SettingSearchFragment;)V
    .locals 5

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/settings/SettingsActivity;->isSearchVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p3, :cond_0

    invoke-virtual {p3}, Lcom/sec/android/app/sbrowser/settings/search/SettingSearchFragment;->updateLayoutIfNeeded()V

    :cond_0
    const p3, 0x1020002

    invoke-virtual {p2, p3}, Lm/n;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/FrameLayout;

    const/4 v0, 0x0

    invoke-virtual {p3, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/view/ViewGroup;

    if-nez p3, :cond_1

    return-void

    :cond_1
    if-eqz p0, :cond_2

    goto :goto_0

    :cond_2
    move p1, v0

    :goto_0
    invoke-virtual {p3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    check-cast p0, Landroid/widget/FrameLayout$LayoutParams;

    iput v0, p0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    iput v0, p0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    invoke-virtual {p3, p0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const v1, 0x7f0b0b34

    invoke-virtual {p2, v1}, Lm/n;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/appcompat/widget/LinearLayoutCompat;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, LR0/d;

    iput v0, v2, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iput v0, v2, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    invoke-virtual {v1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-static {p2}, Lcom/sec/android/app/sbrowser/common/device/DesktopModeUtils;->isDesktopMode(Landroid/app/Activity;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-static {p1, p2}, Lcom/sec/android/app/sbrowser/settings/SettingsActivityHelper;->getMarginForDEX(ILandroid/content/Context;)I

    move-result p1

    iput p1, v2, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iput p1, v2, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    invoke-virtual {v1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_1

    :cond_3
    invoke-static {p2}, Lcom/sec/android/app/sbrowser/common/device/DeviceSettings;->isFoldableStandardViewMode(Landroid/app/Activity;)Z

    move-result v3

    const v4, 0x7f071303

    if-eqz v3, :cond_6

    if-lez p1, :cond_6

    invoke-virtual {p2}, Lm/n;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    sub-int/2addr p1, p0

    invoke-static {p2}, Lcom/sec/android/app/sbrowser/settings/FragmentCommonHelper;->getTopFragment(Lm/n;)Landroidx/fragment/app/Fragment;

    move-result-object p0

    if-eqz p0, :cond_5

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/settings/SettingsActivityHelper;->isScrollbarNeedToMove(Landroidx/fragment/app/Fragment;)Z

    move-result p3

    if-eqz p3, :cond_5

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->getInstance()Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;

    move-result-object p3

    invoke-virtual {p3, v0}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->getStandardViewRecyclerViewDefaultPadding(I)I

    move-result p3

    if-nez p3, :cond_4

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->getInstance()Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;

    move-result-object p3

    move-object v1, p0

    check-cast v1, Lw2/A;

    invoke-virtual {v1}, Lw2/A;->getListView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    invoke-virtual {p3, v1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->setStandardViewRecyclerViewDefaultPadding(I)V

    :cond_4
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->getInstance()Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;

    move-result-object p3

    invoke-virtual {p3, v0}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->getStandardViewRecyclerViewDefaultPadding(I)I

    move-result p3

    add-int/2addr p3, p1

    move-object v1, p0

    check-cast v1, Lw2/A;

    invoke-virtual {v1, p3, v0, p3, v0}, Lw2/A;->setPadding(IIII)V

    instance-of p3, p0, Lcom/sec/android/app/sbrowser/settings/SettingsFragmentLayoutChangedListener;

    if-eqz p3, :cond_8

    check-cast p0, Lcom/sec/android/app/sbrowser/settings/SettingsFragmentLayoutChangedListener;

    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/settings/SettingsFragmentLayoutChangedListener;->onLayoutMarginChanged(I)V

    goto :goto_1

    :cond_5
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->getInstance()Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->getStandardViewRecyclerViewDefaultPadding(I)I

    move-result p0

    add-int/2addr p0, p1

    iput p0, v2, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iput p0, v2, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    invoke-virtual {v1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    move p1, p0

    goto :goto_1

    :cond_6
    invoke-static {p2}, Lcom/sec/android/app/sbrowser/common/device/TabletDeviceUtils;->isTabletDevice(Landroid/content/Context;)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_7

    iput p1, v2, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iput p1, v2, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    invoke-virtual {v1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p2}, Lm/n;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    add-int/2addr p0, p1

    invoke-static {p0, p2}, Lcom/sec/android/app/sbrowser/settings/SettingsActivityHelper;->setMarginForRoundedCorners(ILandroid/app/Activity;)V

    goto :goto_1

    :cond_7
    iput p1, p0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    iput p1, p0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    invoke-virtual {p3, p0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DeviceSettings;->isFoldableDeviceTypeFold()Z

    move-result p0

    if-eqz p0, :cond_8

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DeviceSettings;->isFrontScreen()Z

    move-result p0

    if-eqz p0, :cond_8

    invoke-static {p2}, Lcom/sec/android/app/sbrowser/settings/FragmentCommonHelper;->getTopFragment(Lm/n;)Landroidx/fragment/app/Fragment;

    move-result-object p0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->getInstance()Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;

    move-result-object p3

    invoke-virtual {p3, v0}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->getStandardViewRecyclerViewDefaultPadding(I)I

    move-result p3

    if-eqz p0, :cond_8

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/settings/SettingsActivityHelper;->isScrollbarNeedToMove(Landroidx/fragment/app/Fragment;)Z

    move-result v1

    if-eqz v1, :cond_8

    if-eqz p3, :cond_8

    move-object v1, p0

    check-cast v1, Lw2/A;

    invoke-virtual {v1, p3, v0, p3, v0}, Lw2/A;->setPadding(IIII)V

    instance-of p3, p0, Lcom/sec/android/app/sbrowser/settings/SettingsFragmentLayoutChangedListener;

    if-eqz p3, :cond_8

    check-cast p0, Lcom/sec/android/app/sbrowser/settings/SettingsFragmentLayoutChangedListener;

    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/settings/SettingsFragmentLayoutChangedListener;->onLayoutMarginChanged(I)V

    :cond_8
    :goto_1
    const p0, 0x7f0b0009

    invoke-virtual {p2, p0}, Lm/n;->findViewById(I)Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_a

    invoke-static {p2}, Lcom/sec/android/app/sbrowser/common/device/TabletDeviceUtils;->isTabletDevice(Landroid/content/Context;)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_a

    const p2, 0x7f0b0e4d

    invoke-virtual {p0, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/view/ViewGroup;

    if-nez p0, :cond_9

    return-void

    :cond_9
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    check-cast p2, Landroid/widget/RelativeLayout$LayoutParams;

    iput p1, p2, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    iput p1, p2, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    invoke-virtual {p0, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_a
    return-void
.end method

.method private static setLeftPaddingForToolbarTitleText(ILcom/sec/android/app/sbrowser/settings/SettingsActivity;)V
    .locals 3

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/settings/SettingsAppBarUtil;->getToolbarTitle(Landroid/app/Activity;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getPaddingTop()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getPaddingRight()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getPaddingBottom()I

    move-result v2

    invoke-virtual {p1, p0, v0, v1, v2}, Landroid/widget/TextView;->setPadding(IIII)V

    return-void
.end method

.method private static setMarginForRoundedCorners(ILandroid/app/Activity;)V
    .locals 2

    const v0, 0x7f0b0696

    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0b0a0c

    invoke-virtual {p1, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, LR0/d;

    iput p0, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, LR0/d;

    iput p0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    return-void
.end method

.method private static shouldHideRoundCornerAtWhiteBgFragments(Ljava/lang/String;)Z
    .locals 1

    if-eqz p0, :cond_1

    const-class v0, Lcom/sec/android/app/sbrowser/settings/NoticePermissionsFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-class v0, Lcom/sec/android/app/sbrowser/settings/AboutFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-class v0, Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/FeaturedWallpaperFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-class v0, Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/CategoryFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-class v0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessSyncFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-class v0, Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/WallpaperOptionFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-class v0, Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/WallpaperColorsFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static updateBackKeyVisibility(Lcom/sec/android/app/sbrowser/settings/SettingsActivity;Z)V
    .locals 0

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/settings/SettingsActivityHelper;->setBackKeyVisibility(Lcom/sec/android/app/sbrowser/settings/SettingsActivity;Z)V

    return-void
.end method

.method public static updateBackKeyVisibility(Lcom/sec/android/app/sbrowser/settings/SettingsActivity;ZZ)V
    .locals 2

    if-nez p1, :cond_2

    invoke-virtual {p0}, Lm/n;->getSupportActionBar()Lm/b;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const p1, 0xf425c

    :try_start_0
    invoke-static {p1}, Lcom/sec/sbrowser/spl/util/PlatformInfo;->isInGroup(I)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lm/n;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    invoke-static {p1}, Lcom/sec/sbrowser/spl/wrapper/MajoConfiguration;->semIsPopOver(Landroid/content/res/Configuration;)Z

    move-result p1
    :try_end_0
    .catch Lcom/sec/sbrowser/spl/util/FallbackException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p1, :cond_1

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/settings/FragmentCommonHelper;->getTopFragment(Lm/n;)Landroidx/fragment/app/Fragment;

    move-result-object p1

    instance-of p1, p1, Lcom/sec/android/app/sbrowser/settings/SettingsFragment;

    or-int/2addr p1, p2

    xor-int/lit8 p1, p1, 0x1

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/settings/SettingsActivityHelper;->setBackKeyVisibility(Lcom/sec/android/app/sbrowser/settings/SettingsActivity;Z)V

    return-void

    :catch_0
    move-exception p1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Error getting Pop over status. Error message: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "SettingsActivityHelper"

    invoke-static {p1, v0, v1}, Landroidx/recyclerview/widget/P;->q(Lcom/sec/sbrowser/spl/util/FallbackException;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :cond_1
    invoke-virtual {p0}, Lm/n;->getSupportActionBar()Lm/b;

    move-result-object p1

    xor-int/lit8 p2, p2, 0x1

    invoke-virtual {p1, p2}, Lm/b;->n(Z)V

    const/4 p1, 0x0

    invoke-static {p1, p0}, Lcom/sec/android/app/sbrowser/settings/SettingsActivityHelper;->setLeftPaddingForToolbarTitleText(ILcom/sec/android/app/sbrowser/settings/SettingsActivity;)V

    :cond_2
    :goto_0
    return-void
.end method
