.class public Lcom/sec/android/app/sbrowser/settings/debug/QuickAccessDebugPreferenceFragment;
.super Lw2/A;
.source "SourceFile"


# instance fields
.field private mPromotionRepository:Lcom/sec/android/app/sbrowser/quickaccess/model/PromotionRepository;

.field private mViewModel:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModel;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lw2/A;-><init>()V

    return-void
.end method

.method private addSampleItems()V
    .locals 6

    invoke-static {}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessRepository;->getInstance()Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessRepository;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessRepository;->getClonedItems()Ljava/util/List;

    move-result-object v1

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/debug/QuickAccessDebugPreferenceFragment;->getSampleQuickAccessItems()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    const-string p0, "QuickAccessDebugPreferenceFragment"

    const-string v0, "addSampleItems: Failed to get items"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-direct {p0, v1, v2}, Lcom/sec/android/app/sbrowser/settings/debug/QuickAccessDebugPreferenceFragment;->filterOutDuplicatedItem(Ljava/util/List;Ljava/util/List;)V

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessRepository;->getItemLimit()I

    move-result v3

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x0

    if-le v4, v3, :cond_1

    invoke-interface {v1, v5, v3}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v1

    :cond_1
    move v3, v5

    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_2

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem;

    invoke-virtual {v4, v3}, Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem;->setPosition(I)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    new-instance v3, Lcom/sec/android/app/sbrowser/settings/debug/n;

    invoke-direct {v3, v0, v2}, Lcom/sec/android/app/sbrowser/settings/debug/n;-><init>(Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessRepository;Ljava/util/List;)V

    invoke-virtual {v0, v1, v3}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessRepository;->applyItems(Ljava/util/List;Lcom/sec/android/app/sbrowser/common/model/quickaccess/Callback;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f140b50

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/J;

    move-result-object p0

    invoke-static {p0, v0, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method private addSampleSyncItems()V
    .locals 152

    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/sbrowser/settings/debug/QuickAccessDebugPreferenceFragment;->getSampleSyncItemIcon()[B

    move-result-object v6

    move-object/from16 v52, v6

    move-object/from16 v29, v6

    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    new-instance v14, Lcom/sec/android/app/sbrowser/quickaccess/model/entity/QuickAccessItemEntity;

    move-object v0, v14

    sget-object v9, Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem$Type;->USER:Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem$Type;

    move-object/from16 v136, v9

    move-object/from16 v113, v9

    move-object/from16 v90, v9

    move-object/from16 v55, v9

    move-object/from16 v32, v9

    move-object/from16 v67, v9

    sget-object v11, Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem$TitleState;->NOT_EDITED:Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem$TitleState;

    move-object/from16 v138, v11

    move-object/from16 v115, v11

    move-object/from16 v92, v11

    move-object/from16 v57, v11

    move-object/from16 v34, v11

    move-object/from16 v69, v11

    const-string v21, ""

    const-string v22, ""

    const-wide/16 v1, 0x0

    const-string v3, "NAVER"

    const-string v4, "https://www.naver.com"

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, -0x1

    const/4 v10, 0x1

    const-string v12, "deviceName1"

    const-string v13, "deviceId1"

    const/16 v16, 0x0

    move-object/from16 v150, v14

    move/from16 v14, v16

    move-object/from16 v151, v15

    move/from16 v15, v16

    const/16 v16, 0x0

    const-string v17, ""

    const-string v18, ""

    const-string v19, ""

    const-string v20, ""

    invoke-direct/range {v0 .. v22}, Lcom/sec/android/app/sbrowser/quickaccess/model/entity/QuickAccessItemEntity;-><init>(JLjava/lang/String;Ljava/lang/String;I[BLjava/lang/String;ILcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem$Type;ILcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem$TitleState;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v1, v150

    move-object/from16 v0, v151

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/sec/android/app/sbrowser/quickaccess/model/entity/QuickAccessItemEntity;

    move-object/from16 v58, v1

    const-string v79, ""

    const-string v80, ""

    const-wide/16 v59, 0x0

    const-string v61, "NATE"

    const-string v62, "https://www.nate.com"

    const/16 v63, 0x1

    const/16 v64, 0x0

    const/16 v65, 0x0

    const/16 v66, -0x1

    const/16 v68, 0x2

    const-string v70, "deviceName1"

    const-string v71, "deviceId1"

    const/16 v72, 0x0

    const/16 v73, 0x0

    const/16 v74, 0x0

    const-string v75, ""

    const-string v76, ""

    const-string v77, ""

    const-string v78, ""

    invoke-direct/range {v58 .. v80}, Lcom/sec/android/app/sbrowser/quickaccess/model/entity/QuickAccessItemEntity;-><init>(JLjava/lang/String;Ljava/lang/String;I[BLjava/lang/String;ILcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem$Type;ILcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem$TitleState;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/sec/android/app/sbrowser/quickaccess/model/entity/QuickAccessItemEntity;

    move-object/from16 v23, v1

    const-string v44, ""

    const-string v45, ""

    const-wide/16 v24, 0x0

    const-string v26, "GOOGLE"

    const-string v27, "https://www.google.com"

    const/16 v28, 0x2

    const/16 v30, 0x0

    const/16 v31, -0x1

    const/16 v33, 0x1

    const-string v35, "deviceName2"

    const-string v36, "deviceId2"

    const/16 v37, 0x0

    const/16 v38, 0x0

    const/16 v39, 0x0

    const-string v40, ""

    const-string v41, ""

    const-string v42, ""

    const-string v43, ""

    invoke-direct/range {v23 .. v45}, Lcom/sec/android/app/sbrowser/quickaccess/model/entity/QuickAccessItemEntity;-><init>(JLjava/lang/String;Ljava/lang/String;I[BLjava/lang/String;ILcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem$Type;ILcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem$TitleState;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/sec/android/app/sbrowser/quickaccess/model/entity/QuickAccessItemEntity;

    move-object/from16 v46, v1

    const-string v67, ""

    const-string v68, ""

    const-wide/16 v47, 0x0

    const-string v49, "NATE"

    const-string v50, "https://www.nate.com"

    const/16 v51, 0x2

    const/16 v53, 0x0

    const/16 v54, -0x1

    const/16 v56, 0x2

    const-string v58, "deviceName2"

    const-string v59, "deviceId2"

    const/16 v60, 0x0

    const/16 v61, 0x0

    const/16 v62, 0x0

    const-string v63, ""

    const-string v64, ""

    const-string v65, ""

    const-string v66, ""

    invoke-direct/range {v46 .. v68}, Lcom/sec/android/app/sbrowser/quickaccess/model/entity/QuickAccessItemEntity;-><init>(JLjava/lang/String;Ljava/lang/String;I[BLjava/lang/String;ILcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem$Type;ILcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem$TitleState;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/sec/android/app/sbrowser/quickaccess/model/entity/QuickAccessItemEntity;

    move-object/from16 v81, v1

    const-string v102, ""

    const-string v103, ""

    const-wide/16 v82, 0x0

    const-string v84, "Yahoo"

    const-string v85, "https://www.yahoo.com"

    const/16 v86, 0x2

    const/16 v87, 0x0

    const/16 v88, 0x0

    const/16 v89, -0x1

    const/16 v91, 0x3

    const-string v93, "deviceName2"

    const-string v94, "deviceId2"

    const/16 v95, 0x0

    const/16 v96, 0x0

    const/16 v97, 0x0

    const-string v98, ""

    const-string v99, ""

    const-string v100, ""

    const-string v101, ""

    invoke-direct/range {v81 .. v103}, Lcom/sec/android/app/sbrowser/quickaccess/model/entity/QuickAccessItemEntity;-><init>(JLjava/lang/String;Ljava/lang/String;I[BLjava/lang/String;ILcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem$Type;ILcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem$TitleState;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/sec/android/app/sbrowser/quickaccess/model/entity/QuickAccessItemEntity;

    move-object/from16 v104, v1

    const-string v125, ""

    const-string v126, ""

    const-wide/16 v105, 0x0

    const-string v107, "GOOGLE"

    const-string v108, "https://www.google.com"

    const/16 v109, 0x2

    const/16 v110, 0x0

    const/16 v111, 0x0

    const/16 v112, -0x1

    const/16 v114, 0x1

    const-string v116, "deviceName3"

    const-string v117, "deviceId3"

    const/16 v118, 0x0

    const/16 v119, 0x0

    const/16 v120, 0x0

    const-string v121, ""

    const-string v122, ""

    const-string v123, ""

    const-string v124, ""

    invoke-direct/range {v104 .. v126}, Lcom/sec/android/app/sbrowser/quickaccess/model/entity/QuickAccessItemEntity;-><init>(JLjava/lang/String;Ljava/lang/String;I[BLjava/lang/String;ILcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem$Type;ILcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem$TitleState;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/sec/android/app/sbrowser/quickaccess/model/entity/QuickAccessItemEntity;

    move-object/from16 v127, v1

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/utils/DeviceUtil;->getUniqueDeviceId()Ljava/lang/String;

    move-result-object v140

    const-string v148, ""

    const-string v149, ""

    const-wide/16 v128, 0x0

    const-string v130, "GOOGLE"

    const-string v131, "https://www.google.com"

    const/16 v132, 0x2

    const/16 v133, 0x0

    const/16 v134, 0x0

    const/16 v135, -0x1

    const/16 v137, 0x1

    const-string v139, "ownDeviceName"

    const/16 v141, 0x0

    const/16 v142, 0x0

    const/16 v143, 0x0

    const-string v144, ""

    const-string v145, ""

    const-string v146, ""

    const-string v147, ""

    invoke-direct/range {v127 .. v149}, Lcom/sec/android/app/sbrowser/quickaccess/model/entity/QuickAccessItemEntity;-><init>(JLjava/lang/String;Ljava/lang/String;I[BLjava/lang/String;ILcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem$Type;ILcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem$TitleState;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessModelV2;

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessModelV2;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v0}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessModelV2;->addItems(Ljava/util/List;)V

    return-void
.end method

.method private filterOutDuplicatedItem(Ljava/util/List;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem;",
            ">;",
            "Ljava/util/List<",
            "Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p2, p1}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    return-void
.end method

.method private getSampleQuickAccessItems()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    const-string v1, "QuickAccessLists/quickaccess_list_sample.json"

    invoke-static {p0, v1}, Lcom/sec/android/app/sbrowser/common/device/AssetUtil;->readJson(Landroid/content/Context;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    :try_start_0
    const-string v1, "list"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_1

    new-instance v2, Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem;

    invoke-direct {v2}, Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem;-><init>()V

    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "title"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem;->setTitle(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "url"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem;->setUrl(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    return-object v0
.end method

.method private getSampleSyncItemIcon()[B
    .locals 1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f0802c0

    invoke-static {p0, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/utils/QuickAccessUtils;->convertBitmapToByteArray(Landroid/graphics/Bitmap;)[B

    move-result-object p0

    return-object p0
.end method

.method public static synthetic h(Lcom/sec/android/app/sbrowser/settings/debug/QuickAccessDebugPreferenceFragment;Landroidx/preference/Preference;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/settings/debug/QuickAccessDebugPreferenceFragment;->lambda$initResetPromotionPreference$4(Landroidx/preference/Preference;)Z

    move-result p0

    return p0
.end method

.method public static synthetic i(Lcom/sec/android/app/sbrowser/settings/debug/QuickAccessDebugPreferenceFragment;Landroidx/lifecycle/J;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/settings/debug/QuickAccessDebugPreferenceFragment;->lambda$onViewCreated$0(Landroidx/lifecycle/J;)V

    return-void
.end method

.method private initAddSampleItemsPreference()V
    .locals 2

    const-string v0, "pref_qa_add_sample_items"

    invoke-virtual {p0, v0}, Lw2/A;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v1, Lcom/sec/android/app/sbrowser/settings/debug/QuickAccessDebugPreferenceFragment$2;

    invoke-direct {v1, p0}, Lcom/sec/android/app/sbrowser/settings/debug/QuickAccessDebugPreferenceFragment$2;-><init>(Lcom/sec/android/app/sbrowser/settings/debug/QuickAccessDebugPreferenceFragment;)V

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Lw2/n;)V

    return-void
.end method

.method private initAddSampleSyncItemsPreference()V
    .locals 3

    const-string v0, "pref_qa_sync_add_sample_items"

    invoke-virtual {p0, v0}, Lw2/A;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v1, Lcom/sec/android/app/sbrowser/settings/debug/m;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lcom/sec/android/app/sbrowser/settings/debug/m;-><init>(Lcom/sec/android/app/sbrowser/settings/debug/QuickAccessDebugPreferenceFragment;I)V

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Lw2/n;)V

    return-void
.end method

.method private initAddTestIconPreference()V
    .locals 2

    const-string v0, "pref_qa_add_test_icon"

    invoke-virtual {p0, v0}, Lw2/A;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v1, Lcom/sec/android/app/sbrowser/settings/debug/QuickAccessDebugPreferenceFragment$3;

    invoke-direct {v1, p0}, Lcom/sec/android/app/sbrowser/settings/debug/QuickAccessDebugPreferenceFragment$3;-><init>(Lcom/sec/android/app/sbrowser/settings/debug/QuickAccessDebugPreferenceFragment;)V

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Lw2/n;)V

    return-void
.end method

.method private initResetPromotionPreference()V
    .locals 3

    const-string v0, "pref_reset_promotion"

    invoke-virtual {p0, v0}, Lw2/A;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v1, Lcom/sec/android/app/sbrowser/settings/debug/m;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/sec/android/app/sbrowser/settings/debug/m;-><init>(Lcom/sec/android/app/sbrowser/settings/debug/QuickAccessDebugPreferenceFragment;I)V

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Lw2/n;)V

    return-void
.end method

.method private initServerProfilePreference()V
    .locals 2

    invoke-virtual {p0}, Lw2/A;->getPreferenceManager()Lw2/F;

    move-result-object v0

    const-string v1, "quickaccess_server_profile"

    invoke-virtual {v0, v1}, Lw2/F;->b(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/ListPreference;

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v1, Lcom/sec/android/app/sbrowser/settings/debug/QuickAccessDebugPreferenceFragment$1;

    invoke-direct {v1, p0}, Lcom/sec/android/app/sbrowser/settings/debug/QuickAccessDebugPreferenceFragment$1;-><init>(Lcom/sec/android/app/sbrowser/settings/debug/QuickAccessDebugPreferenceFragment;)V

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Lw2/m;)V

    return-void
.end method

.method public static synthetic j(Lcom/sec/android/app/sbrowser/settings/debug/QuickAccessDebugPreferenceFragment;Landroidx/preference/Preference;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/settings/debug/QuickAccessDebugPreferenceFragment;->lambda$initAddSampleSyncItemsPreference$2(Landroidx/preference/Preference;)Z

    move-result p0

    return p0
.end method

.method public static synthetic k(Lcom/sec/android/app/sbrowser/settings/debug/QuickAccessDebugPreferenceFragment;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/settings/debug/QuickAccessDebugPreferenceFragment;->lambda$initAddSampleSyncItemsPreference$1(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic l(Lcom/sec/android/app/sbrowser/settings/debug/QuickAccessDebugPreferenceFragment;Lcom/sec/android/app/sbrowser/common/livedata/Event;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/settings/debug/QuickAccessDebugPreferenceFragment;->onEventReceived(Lcom/sec/android/app/sbrowser/common/livedata/Event;)V

    return-void
.end method

.method private static synthetic lambda$addSampleItems$3(Ljava/util/List;Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessRepository;Ljava/lang/Boolean;)V
    .locals 0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem;

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem;->getUrl()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessRepository;->requestFetchIcon(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private synthetic lambda$initAddSampleSyncItemsPreference$1(Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/debug/QuickAccessDebugPreferenceFragment;->addSampleSyncItems()V

    return-void
.end method

.method private lambda$initAddSampleSyncItemsPreference$2(Landroidx/preference/Preference;)Z
    .locals 2

    new-instance p1, Lm/k;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/J;

    move-result-object v0

    invoke-direct {p1, v0}, Lm/k;-><init>(Landroid/content/Context;)V

    iget-object v0, p1, Lm/k;->a:Lm/h;

    const-string v1, "Do you want to add sync sample items?"

    iput-object v1, v0, Lm/h;->f:Ljava/lang/CharSequence;

    new-instance v0, Lcom/sec/android/app/sbrowser/settings/debug/t;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p0}, Lcom/sec/android/app/sbrowser/settings/debug/t;-><init>(ILjava/lang/Object;)V

    const-string p0, "OK"

    invoke-virtual {p1, p0, v0}, Lm/k;->d(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    const-string p0, "Cancel"

    const/4 v0, 0x0

    invoke-virtual {p1, p0, v0}, Lm/k;->b(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    invoke-virtual {p1}, Lm/k;->create()Lm/l;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    const/4 p0, 0x1

    return p0
.end method

.method private synthetic lambda$initResetPromotionPreference$4(Landroidx/preference/Preference;)Z
    .locals 1

    new-instance p1, Lm/k;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Lm/k;-><init>(Landroid/content/Context;)V

    const v0, 0x7f140beb

    invoke-virtual {p1, v0}, Lm/k;->a(I)V

    new-instance v0, Lcom/sec/android/app/sbrowser/settings/debug/QuickAccessDebugPreferenceFragment$4;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/settings/debug/QuickAccessDebugPreferenceFragment$4;-><init>(Lcom/sec/android/app/sbrowser/settings/debug/QuickAccessDebugPreferenceFragment;)V

    const-string p0, "OK"

    invoke-virtual {p1, p0, v0}, Lm/k;->d(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    const-string p0, "Cancel"

    const/4 v0, 0x0

    invoke-virtual {p1, p0, v0}, Lm/k;->b(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    invoke-virtual {p1}, Lm/k;->create()Lm/l;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    const/4 p0, 0x1

    return p0
.end method

.method private synthetic lambda$onViewCreated$0(Landroidx/lifecycle/J;)V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/debug/QuickAccessDebugPreferenceFragment;->mViewModel:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModel;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModel;->getMainUIEvent()Landroidx/lifecycle/S;

    move-result-object v0

    new-instance v1, Lcom/sec/android/app/sbrowser/settings/debug/l;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lcom/sec/android/app/sbrowser/settings/debug/l;-><init>(Lcom/sec/android/app/sbrowser/settings/debug/QuickAccessDebugPreferenceFragment;I)V

    invoke-virtual {v0, p1, v1}, Landroidx/lifecycle/S;->observe(Landroidx/lifecycle/J;Landroidx/lifecycle/Y;)V

    return-void
.end method

.method public static synthetic m(Ljava/util/List;Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessRepository;Ljava/lang/Boolean;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/sec/android/app/sbrowser/settings/debug/QuickAccessDebugPreferenceFragment;->lambda$addSampleItems$3(Ljava/util/List;Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessRepository;Ljava/lang/Boolean;)V

    return-void
.end method

.method public static bridge synthetic n(Lcom/sec/android/app/sbrowser/settings/debug/QuickAccessDebugPreferenceFragment;)Lcom/sec/android/app/sbrowser/quickaccess/model/PromotionRepository;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/debug/QuickAccessDebugPreferenceFragment;->mPromotionRepository:Lcom/sec/android/app/sbrowser/quickaccess/model/PromotionRepository;

    return-object p0
.end method

.method public static bridge synthetic o(Lcom/sec/android/app/sbrowser/settings/debug/QuickAccessDebugPreferenceFragment;)Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModel;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/debug/QuickAccessDebugPreferenceFragment;->mViewModel:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModel;

    return-object p0
.end method

.method private onEventReceived(Lcom/sec/android/app/sbrowser/common/livedata/Event;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/android/app/sbrowser/common/livedata/Event<",
            "Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/MainUIEvent;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/livedata/Event;->isHandled()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/livedata/Event;->getContentIfNotHandled()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/MainUIEvent;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/MainUIEvent;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/MainUIEvent;->getParameter()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Ljava/lang/Integer;

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/MainUIEvent;->getParameter()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/base/QuickAccessToast;->showDeletedToast(Landroid/content/Context;I)V

    goto :goto_0

    :pswitch_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/base/QuickAccessDialog;->showUnableToEditInMultiInstanceDialog(Landroid/content/Context;)V

    goto :goto_0

    :pswitch_2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/base/QuickAccessToast;->showUnableToEditInSecretModeToast(Landroid/content/Context;)V

    goto :goto_0

    :pswitch_3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/base/QuickAccessToast;->showUnableToAddInSecretModeToast(Landroid/content/Context;)V

    goto :goto_0

    :pswitch_4
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/base/QuickAccessToast;->showItemAlreadyExisted(Landroid/content/Context;)V

    goto :goto_0

    :pswitch_5
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/base/QuickAccessToast;->showInvalidUrlToast(Landroid/content/Context;)V

    goto :goto_0

    :pswitch_6
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/base/QuickAccessToast;->showMaxItemsToast(Landroid/content/Context;)V

    goto :goto_0

    :pswitch_7
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/base/QuickAccessToast;->showShortcutSavedToast(Landroid/content/Context;)V

    :cond_2
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
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

.method public static bridge synthetic p(Lcom/sec/android/app/sbrowser/settings/debug/QuickAccessDebugPreferenceFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/debug/QuickAccessDebugPreferenceFragment;->addSampleItems()V

    return-void
.end method

.method private updateIsEditedPreference()V
    .locals 1

    const-string v0, "pref_qa_is_default_items_edited"

    invoke-virtual {p0, v0}, Lw2/A;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p0

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/sec/android/app/sbrowser/quickaccess/settings/QuickAccessSettings;->getInstance()Lcom/sec/android/app/sbrowser/quickaccess/settings/QuickAccessSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/quickaccess/settings/QuickAccessSettings;->isDefaultItemsEdited()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "true"

    goto :goto_0

    :cond_1
    const-string v0, "false"

    :goto_0
    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-super {p0, p1}, Lw2/A;->onCreate(Landroid/os/Bundle;)V

    new-instance p1, LZ3/x;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/J;

    move-result-object v0

    new-instance v1, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModelFactory;

    invoke-direct {v1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModelFactory;-><init>()V

    invoke-direct {p1, v0, v1}, LZ3/x;-><init>(Landroidx/lifecycle/y0;Landroidx/lifecycle/v0;)V

    const-class v0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModelImpl;

    invoke-virtual {p1, v0}, LZ3/x;->s(Ljava/lang/Class;)Landroidx/lifecycle/s0;

    move-result-object p1

    check-cast p1, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModel;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/settings/debug/QuickAccessDebugPreferenceFragment;->mViewModel:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessPageViewModel;

    new-instance p1, Lcom/sec/android/app/sbrowser/quickaccess/model/PromotionRepository;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/sec/android/app/sbrowser/quickaccess/model/PromotionRepository;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/settings/debug/QuickAccessDebugPreferenceFragment;->mPromotionRepository:Lcom/sec/android/app/sbrowser/quickaccess/model/PromotionRepository;

    return-void
.end method

.method public onCreatePreferences(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/J;

    move-result-object p1

    const v0, 0x7f140a2b

    invoke-virtual {p1, v0}, Landroid/app/Activity;->setTitle(I)V

    const p1, 0x7f180057

    invoke-virtual {p0, p1, p2}, Lw2/A;->setPreferencesFromResource(ILjava/lang/String;)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/debug/QuickAccessDebugPreferenceFragment;->initServerProfilePreference()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/debug/QuickAccessDebugPreferenceFragment;->initAddSampleItemsPreference()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/debug/QuickAccessDebugPreferenceFragment;->initAddTestIconPreference()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/debug/QuickAccessDebugPreferenceFragment;->initAddSampleSyncItemsPreference()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/debug/QuickAccessDebugPreferenceFragment;->initResetPromotionPreference()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/settings/debug/QuickAccessDebugPreferenceFragment;->updateIsEditedPreference()V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-super {p0, p1, p2}, Lw2/A;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwnerLiveData()Landroidx/lifecycle/S;

    move-result-object p1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/lifecycle/J;

    move-result-object p2

    new-instance v0, Lcom/sec/android/app/sbrowser/settings/debug/l;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/sbrowser/settings/debug/l;-><init>(Lcom/sec/android/app/sbrowser/settings/debug/QuickAccessDebugPreferenceFragment;I)V

    invoke-virtual {p1, p2, v0}, Landroidx/lifecycle/S;->observe(Landroidx/lifecycle/J;Landroidx/lifecycle/Y;)V

    return-void
.end method
