.class public Lcom/sec/android/app/sbrowser/extensions/SixDlService;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/extensions/SixDlService$DownloadItem;,
        Lcom/sec/android/app/sbrowser/extensions/SixDlService$DownloadStatus;,
        Lcom/sec/android/app/sbrowser/extensions/SixDlService$AppItem;
    }
.end annotation


# instance fields
.field mAppDownloadMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/sec/android/app/sbrowser/common/stub/StubRequest$StubListener;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mAppDownloadStatus:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/sec/android/app/sbrowser/extensions/SixDlService$DownloadStatus;",
            ">;"
        }
    .end annotation
.end field

.field mDownloadKeyMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mDownloadMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/sec/android/app/sbrowser/extensions/SixDlService$DownloadItem;",
            ">;"
        }
    .end annotation
.end field

.field private mSixDownloadObserver:Lcom/sec/android/app/sbrowser/common/blockers/ApkDCManager$Observer;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/extensions/SixDlService;->mAppDownloadMap:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/extensions/SixDlService;->mAppDownloadStatus:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/extensions/SixDlService;->mDownloadKeyMap:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/extensions/SixDlService;->mDownloadMap:Ljava/util/HashMap;

    new-instance v0, Lcom/sec/android/app/sbrowser/extensions/SixDlService$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/extensions/SixDlService$1;-><init>(Lcom/sec/android/app/sbrowser/extensions/SixDlService;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/extensions/SixDlService;->mSixDownloadObserver:Lcom/sec/android/app/sbrowser/common/blockers/ApkDCManager$Observer;

    const-string v0, "SixDlService"

    invoke-static {v0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/sec/android/app/sbrowser/extensions/SixDownloadManager;->getInstance()Lcom/sec/android/app/sbrowser/extensions/SixDownloadManager;

    move-result-object v0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/extensions/SixDlService;->mSixDownloadObserver:Lcom/sec/android/app/sbrowser/common/blockers/ApkDCManager$Observer;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/sbrowser/common/blockers/ApkDCManager;->addObserver(Lcom/sec/android/app/sbrowser/common/blockers/ApkDCManager$Observer;)V

    return-void
.end method

.method public static synthetic a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/sec/android/app/sbrowser/common/stub/StubData;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/extensions/SixDlService;->lambda$runInstallAfterDownloadApk$0(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/sec/android/app/sbrowser/common/stub/StubData;)V

    return-void
.end method

.method public static bridge synthetic b(Lcom/sec/android/app/sbrowser/extensions/SixDlService;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/extensions/SixDlService;->runDownloadOrInstallFailed(Ljava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic c(Lcom/sec/android/app/sbrowser/extensions/SixDlService;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V
    .locals 8

    const/4 v6, 0x1

    const/4 v7, -0x1

    move-object v0, p0

    move-object v1, p5

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p1

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/app/sbrowser/extensions/SixDlService;->runGalaxyAppStatus(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZI)V

    return-void
.end method

.method public static bridge synthetic d(Lcom/sec/android/app/sbrowser/extensions/SixDlService;Landroid/content/Context;Lcom/sec/android/app/sbrowser/common/stub/StubData;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sec/android/app/sbrowser/extensions/SixDlService;->runInstallAfterDownloadApk(Landroid/content/Context;Lcom/sec/android/app/sbrowser/common/stub/StubData;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic e(Lcom/sec/android/app/sbrowser/extensions/SixDlService;Lcom/sec/android/app/sbrowser/common/stub/StubData;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/extensions/SixDlService;->runNoMatchingApplication(Lcom/sec/android/app/sbrowser/common/stub/StubData;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic f(Lcom/sec/android/app/sbrowser/extensions/SixDlService;Lcom/sec/android/app/sbrowser/common/stub/StubData;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/extensions/SixDlService;->runUpdateAvailable(Lcom/sec/android/app/sbrowser/common/stub/StubData;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic g(Lcom/sec/android/app/sbrowser/extensions/SixDlService;Lcom/sec/android/app/sbrowser/common/stub/StubData;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/extensions/SixDlService;->runUpdateNotNecessary(Lcom/sec/android/app/sbrowser/common/stub/StubData;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static getInstance()Lcom/sec/android/app/sbrowser/extensions/SixDlService;
    .locals 2

    new-instance v0, Lcom/sec/android/app/sbrowser/common/sites/b;

    const/16 v1, 0x13

    invoke-direct {v0, v1}, Lcom/sec/android/app/sbrowser/common/sites/b;-><init>(I)V

    const-class v1, Lcom/sec/android/app/sbrowser/extensions/SixDlService;

    invoke-static {v1, v0}, Lcom/sec/android/app/sbrowser/common/singleton/SingletonFactory;->getOrCreate(Ljava/lang/Class;Lcom/sec/android/app/sbrowser/common/function/Supplier;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/extensions/SixDlService;

    return-object v0
.end method

.method private getTrLangpackInfo(Landroid/content/Context;)Lcom/sec/android/app/sbrowser/extensions/SixDlService$AppItem;
    .locals 6

    new-instance v0, Ljava/util/Locale;

    const-string v1, "es"

    const-string v2, "ES"

    invoke-direct {v0, v1, v2}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v2}, Ljava/util/Locale;->getDisplayLanguage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v1}, Lcom/sec/android/app/sbrowser/extensions/SixDlService;->getTrSupportLangpack(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getDisplayLanguage()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/util/Locale;->getDisplayLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    :goto_0
    const v4, 0x7f140fb2

    filled-new-array {v3, v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v4, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "com.samsung.sr.nmt.apps.t2t.languagepack."

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v1}, Lcom/sec/android/app/sbrowser/extensions/SixDlService;->getTrLangpackSize(Ljava/lang/String;)I

    move-result v1

    new-instance v2, Lcom/sec/android/app/sbrowser/extensions/SixDlService$AppItem;

    invoke-direct {v2, p0, p1, v1, v0}, Lcom/sec/android/app/sbrowser/extensions/SixDlService$AppItem;-><init>(Lcom/sec/android/app/sbrowser/extensions/SixDlService;Ljava/lang/String;ILjava/lang/String;)V

    return-object v2
.end method

.method private getTrLangpackSize(Ljava/lang/String;)I
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p0, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v0, "zh"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x7

    goto :goto_0

    :sswitch_1
    const-string v0, "tr"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x6

    goto :goto_0

    :sswitch_2
    const-string v0, "ru"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 p0, 0x5

    goto :goto_0

    :sswitch_3
    const-string v0, "ko"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    const/4 p0, 0x4

    goto :goto_0

    :sswitch_4
    const-string v0, "ja"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    goto :goto_0

    :cond_4
    const/4 p0, 0x3

    goto :goto_0

    :sswitch_5
    const-string v0, "hu"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    goto :goto_0

    :cond_5
    const/4 p0, 0x2

    goto :goto_0

    :sswitch_6
    const-string v0, "hr"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    goto :goto_0

    :cond_6
    const/4 p0, 0x1

    goto :goto_0

    :sswitch_7
    const-string v0, "cs"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    goto :goto_0

    :cond_7
    const/4 p0, 0x0

    :goto_0
    packed-switch p0, :pswitch_data_0

    const/16 p0, 0xd

    goto :goto_1

    :pswitch_0
    const/16 p0, 0x29

    goto :goto_1

    :pswitch_1
    const/16 p0, 0x28

    goto :goto_1

    :pswitch_2
    const/16 p0, 0xe

    :goto_1
    return p0

    nop

    :sswitch_data_0
    .sparse-switch
        0xc70 -> :sswitch_7
        0xd0a -> :sswitch_6
        0xd0d -> :sswitch_5
        0xd37 -> :sswitch_4
        0xd64 -> :sswitch_3
        0xe43 -> :sswitch_2
        0xe7e -> :sswitch_1
        0xf2e -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method private getTrSupportLangpack(Ljava/lang/String;)Z
    .locals 21

    new-instance v0, Ljava/util/ArrayList;

    const-string v19, "es"

    const-string v20, "zh"

    const-string v1, "ar"

    const-string v2, "bg"

    const-string v3, "cs"

    const-string v4, "nl"

    const-string v5, "fr"

    const-string v6, "de"

    const-string v7, "ja"

    const-string v8, "ko"

    const-string v9, "hr"

    const-string v10, "hu"

    const-string v11, "id"

    const-string v12, "it"

    const-string v13, "pl"

    const-string v14, "pt"

    const-string v15, "ro"

    const-string v16, "ru"

    const-string v17, "sr"

    const-string v18, "tr"

    filled-new-array/range {v1 .. v20}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static bridge synthetic h(Lcom/sec/android/app/sbrowser/extensions/SixDlService;ZLjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/extensions/SixDlService;->runUpdateOrDownloadUrlFailed(ZLjava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic i(Lcom/sec/android/app/sbrowser/extensions/SixDlService;Landroid/content/Context;)V
    .locals 1

    const v0, 0x7f140fcf

    invoke-direct {p0, p1, v0}, Lcom/sec/android/app/sbrowser/extensions/SixDlService;->showSnackBar(Landroid/content/Context;I)V

    return-void
.end method

.method private static synthetic lambda$runInstallAfterDownloadApk$0(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/sec/android/app/sbrowser/common/stub/StubData;)V
    .locals 6

    invoke-static {}, Lcom/sec/android/app/sbrowser/extensions/SixDownloadManager;->getInstance()Lcom/sec/android/app/sbrowser/extensions/SixDownloadManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p3}, Lcom/sec/android/app/sbrowser/common/stub/StubData;->getDownloadURI()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p3}, Lcom/sec/android/app/sbrowser/common/stub/StubData;->getSignature()Ljava/lang/String;

    move-result-object v5

    move-object v2, p1

    move-object v3, p2

    invoke-virtual/range {v0 .. v5}, Lcom/sec/android/app/sbrowser/common/blockers/ApkDCManager;->requestInstallAfterDownload(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private makeTranslator(Landroid/content/Context;)Lcom/sec/android/app/sbrowser/common/stub/StubExtInfo;
    .locals 16

    move-object/from16 v10, p0

    move-object/from16 v0, p1

    new-instance v11, Lcom/sec/android/app/sbrowser/common/stub/StubExtInfo;

    invoke-direct {v11}, Lcom/sec/android/app/sbrowser/common/stub/StubExtInfo;-><init>()V

    iget-object v1, v10, Lcom/sec/android/app/sbrowser/extensions/SixDlService;->mDownloadMap:Ljava/util/HashMap;

    const-string v12, "khmmfcceknncifmkiimjnnjldibgajpl"

    invoke-virtual {v1, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    new-instance v6, Ljava/util/ArrayList;

    const v1, 0x7f140faf

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f140fb0

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f140fb1

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v6, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Lcom/sec/android/app/sbrowser/extensions/SixDlService$AppItem;

    const-string v2, "Translator"

    const/16 v3, 0xc

    const-string v13, "com.samsung.android.six.webtrans"

    invoke-direct {v1, v10, v2, v3, v13}, Lcom/sec/android/app/sbrowser/extensions/SixDlService$AppItem;-><init>(Lcom/sec/android/app/sbrowser/extensions/SixDlService;Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-direct/range {p0 .. p1}, Lcom/sec/android/app/sbrowser/extensions/SixDlService;->getTrLangpackInfo(Landroid/content/Context;)Lcom/sec/android/app/sbrowser/extensions/SixDlService$AppItem;

    move-result-object v1

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v9, Ljava/util/ArrayList;

    const/16 v1, 0x8b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x85

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v1, v2}, [Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v9, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object v14, v10, Lcom/sec/android/app/sbrowser/extensions/SixDlService;->mDownloadMap:Ljava/util/HashMap;

    new-instance v15, Lcom/sec/android/app/sbrowser/extensions/SixDlService$DownloadItem;

    const v1, 0x7f140fb3

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    const v1, 0x7f140fb4

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    const-string v2, "khmmfcceknncifmkiimjnnjldibgajpl"

    const-string v3, "Translator"

    const-string v4, "com.samsung.android.six.webtrans"

    move-object v0, v15

    move-object/from16 v1, p0

    invoke-direct/range {v0 .. v9}, Lcom/sec/android/app/sbrowser/extensions/SixDlService$DownloadItem;-><init>(Lcom/sec/android/app/sbrowser/extensions/SixDlService;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;Ljava/util/ArrayList;)V

    invoke-virtual {v14, v12, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, v10, Lcom/sec/android/app/sbrowser/extensions/SixDlService;->mDownloadKeyMap:Ljava/util/HashMap;

    invoke-virtual {v0, v13, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v11, v13}, Lcom/sec/android/app/sbrowser/common/stub/StubExtInfo;->setAppID(Ljava/lang/String;)V

    :cond_0
    return-object v11
.end method

.method private runDownloadOrInstallFailed(Ljava/lang/String;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extensions/SixDlService;->mDownloadKeyMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-eqz p1, :cond_1

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/extensions/SixDlService;->getDownloadItem(Ljava/lang/String;)Lcom/sec/android/app/sbrowser/extensions/SixDlService$DownloadItem;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/extensions/SixDlService;->mAppDownloadStatus:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-void
.end method

.method private runGalaxyAppStatus(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZI)V
    .locals 8

    new-instance v7, Lcom/sec/android/app/sbrowser/extensions/SixDlService$3;

    move-object v0, v7

    move-object v1, p0

    move v2, p5

    move-object v3, p2

    move-object v4, p4

    move-object v5, p3

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/app/sbrowser/extensions/SixDlService$3;-><init>(Lcom/sec/android/app/sbrowser/extensions/SixDlService;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/extensions/SixDlService;->mAppDownloadMap:Ljava/util/HashMap;

    invoke-virtual {p0, v7, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p3, v7, p6, p7}, Lcom/sec/android/app/sbrowser/common/stub/StubUtil;->getDownloadUrl(Ljava/lang/String;Lcom/sec/android/app/sbrowser/common/stub/StubRequest$StubListener;ZI)V

    return-void
.end method

.method private runInstallAfterDownloadApk(Landroid/content/Context;Lcom/sec/android/app/sbrowser/common/stub/StubData;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/device/ActivityUtil;->getActivity(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result p1

    if-nez p1, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->isDestroyed()Z

    move-result p1

    if-nez p1, :cond_0

    new-instance p1, LH6/a;

    const/4 v5, 0x2

    move-object v0, p1

    move-object v1, p0

    move-object v2, p4

    move-object v3, p3

    move-object v4, p2

    invoke-direct/range {v0 .. v5}, LH6/a;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/extensions/SixDownloadManager;->getInstance()Lcom/sec/android/app/sbrowser/extensions/SixDownloadManager;

    move-result-object p2

    const-string p3, "preload"

    invoke-virtual {p2, p0, p3, p1}, Lcom/sec/android/app/sbrowser/extensions/SixDownloadManager;->checkNotiPermissionAndRun(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method private runNoMatchingApplication(Lcom/sec/android/app/sbrowser/common/stub/StubData;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    const-string p0, "runNoMatchingApplication "

    const-string p1, "SixDlService"

    invoke-static {p0, p3, p1}, LV0/c;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private runUpdateAvailable(Lcom/sec/android/app/sbrowser/common/stub/StubData;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    const-string p0, "runUpdateAvailable "

    const-string p1, "SixDlService"

    invoke-static {p0, p3, p1}, LV0/c;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private runUpdateNotNecessary(Lcom/sec/android/app/sbrowser/common/stub/StubData;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    const-string p0, "runUpdateNotNecessary "

    const-string p1, "SixDlService"

    invoke-static {p0, p3, p1}, LV0/c;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private runUpdateOrDownloadUrlFailed(ZLjava/lang/String;)V
    .locals 0

    if-nez p1, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/extensions/SixDlService;->mAppDownloadStatus:Ljava/util/HashMap;

    invoke-virtual {p0, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private showSnackBar(Landroid/content/Context;I)V
    .locals 1

    move-object p0, p1

    check-cast p0, Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p0

    const v0, 0x1020002

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    const/4 p2, -0x1

    invoke-static {p0, p1, p2, p2}, LH6/o;->i(Landroid/view/View;Ljava/lang/CharSequence;II)LH6/o;

    move-result-object p0

    invoke-virtual {p0}, LH6/o;->l()V

    return-void
.end method


# virtual methods
.method public generateDownloadInfo(Landroid/content/Context;)V
    .locals 4

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/extensions/SixDlService;->makeTranslator(Landroid/content/Context;)Lcom/sec/android/app/sbrowser/common/stub/StubExtInfo;

    move-result-object v0

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/extensions/SixGetExtListManager;->getExtList(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/extensions/SixStatus;->getInstance()Lcom/sec/android/app/sbrowser/common/extensions/SixStatus;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/sec/android/app/sbrowser/common/extensions/SixStatus;->isDefaultExtEnabled(Z)Z

    move-result v2

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/stub/StubExtInfo;->getAppID()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    if-eqz v2, :cond_0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1, v1}, Lcom/sec/android/app/sbrowser/extensions/SixDlService;->updateDownloadInfo(Landroid/content/Context;Ljava/util/ArrayList;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public getDownloadItem(Ljava/lang/String;)Lcom/sec/android/app/sbrowser/extensions/SixDlService$DownloadItem;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/extensions/SixDlService;->mDownloadMap:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/sbrowser/extensions/SixDlService$DownloadItem;

    return-object p0
.end method

.method public setExtensionEnabled(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 2

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/extensions/SixDlService;->mAppDownloadStatus:Ljava/util/HashMap;

    invoke-virtual {p1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    sget-object v0, Lcom/sec/android/app/sbrowser/extensions/SixDlService$DownloadStatus;->DOWNLOADED:Lcom/sec/android/app/sbrowser/extensions/SixDlService$DownloadStatus;

    const-string v1, "SixDlService"

    if-ne p1, v0, :cond_0

    invoke-static {}, Lcom/sec/android/app/sbrowser/extensions/SixManager;->getInstance()Lcom/sec/android/app/sbrowser/extensions/SixManager;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/sec/android/app/sbrowser/extensions/SixManager;->setFirstLaunchToFalse(Ljava/lang/String;)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/extensions/SixPkgUpdater;->getInstance()Lcom/sec/android/app/sbrowser/extensions/SixPkgUpdater;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, p2, v0}, Lcom/sec/android/app/sbrowser/extensions/SixPkgUpdater;->changeExtensionStatus(Ljava/lang/String;Z)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/extensions/SixDlService;->mAppDownloadStatus:Ljava/util/HashMap;

    invoke-virtual {p0, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "setExtensionEnabled - was downloaded by SixDlService, TRUE"

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_0
    const-string p0, "setExtensionEnabled - was NOT downloaded by SixDlService, FALSE"

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method public showSixDlDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extensions/SixDlService;->mDownloadMap:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extensions/SixDlService;->mAppDownloadStatus:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/sbrowser/extensions/SixDlService$DownloadStatus;->DOWNLOADED:Lcom/sec/android/app/sbrowser/extensions/SixDlService$DownloadStatus;

    if-ne v0, v1, :cond_1

    const p2, 0x7f140f9f

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/extensions/SixDlService;->showSnackBar(Landroid/content/Context;I)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extensions/SixDlService;->mDownloadMap:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/extensions/SixDlService$DownloadItem;

    invoke-virtual {v0, p3}, Lcom/sec/android/app/sbrowser/extensions/SixDlService$DownloadItem;->setName(Ljava/lang/String;)V

    new-instance p3, Lcom/sec/android/app/sbrowser/extensions/SixDlDialog;

    new-instance v0, Lcom/sec/android/app/sbrowser/extensions/SixDlService$2;

    invoke-direct {v0, p0, p1, p2}, Lcom/sec/android/app/sbrowser/extensions/SixDlService$2;-><init>(Lcom/sec/android/app/sbrowser/extensions/SixDlService;Landroid/content/Context;Ljava/lang/String;)V

    invoke-direct {p3, p1, p2, v0}, Lcom/sec/android/app/sbrowser/extensions/SixDlDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/sec/android/app/sbrowser/extensions/SixDialog$SixDialogListener;)V

    invoke-virtual {p3, p3}, Lcom/sec/android/app/sbrowser/extensions/SixDialog;->show(Lcom/sec/android/app/sbrowser/extensions/SixDialog;)V

    return-void
.end method

.method public updateDownloadInfo(Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList<",
            "Lcom/sec/android/app/sbrowser/common/stub/StubExtInfo;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const-string v2, "SixDlService"

    if-eqz v1, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/sbrowser/common/stub/StubExtInfo;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "updateDownloadInfo for: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/common/stub/StubExtInfo;->getAppID()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/extensions/SixDlService;->mDownloadKeyMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/common/stub/StubExtInfo;->getAppID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/extensions/SixDlService;->mDownloadMap:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/sbrowser/extensions/SixDlService$DownloadItem;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/extensions/SixDlService$DownloadItem;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_3

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/extensions/SixStatus;->getInstance()Lcom/sec/android/app/sbrowser/common/extensions/SixStatus;

    move-result-object p0

    const/4 p2, 0x1

    invoke-virtual {p0, p2}, Lcom/sec/android/app/sbrowser/common/extensions/SixStatus;->isDefaultExtEnabled(Z)Z

    move-result p0

    new-instance p2, Ljava/util/HashSet;

    invoke-direct {p2}, Ljava/util/HashSet;-><init>()V

    if-eqz p0, :cond_2

    new-instance v1, Lcom/sec/android/app/sbrowser/extensions/SixDefaultExtLoader;

    invoke-direct {v1}, Lcom/sec/android/app/sbrowser/extensions/SixDefaultExtLoader;-><init>()V

    invoke-virtual {v1, p1}, Lcom/sec/android/app/sbrowser/extensions/SixDefaultExtLoader;->collectDefaultCrxInfo(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/extensions/SixDefaultExtLoader;->getDefaultExtIds()Ljava/util/Set;

    move-result-object p2

    :cond_2
    invoke-static {}, Lcom/sec/terrace/browser/extensions/TerraceExtensionsManager;->getInstance()Lcom/sec/terrace/browser/extensions/TerraceExtensionsManager;

    move-result-object p1

    invoke-virtual {p1, v0, p0, p2}, Lcom/sec/terrace/browser/extensions/TerraceExtensionsManager;->updatePreloadActionList(Ljava/util/List;ZLjava/util/Set;)V

    goto :goto_1

    :cond_3
    const-string p0, "updateDownloadInfo - empty list"

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method
