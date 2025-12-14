.class public Lcom/sec/android/app/sbrowser/common/extensions/SixAppData;
.super Lcom/sec/android/app/sbrowser/common/extensions/SixAppDataCommon;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/common/extensions/SixAppData$InstallResult;
    }
.end annotation


# instance fields
.field private mBlockedStatus:I

.field private mCategory:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "category"
    .end annotation
.end field

.field private mDescription:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "description"
    .end annotation
.end field

.field private mExtVersion:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "extension_version"
    .end annotation
.end field

.field private mInstallResult:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "install_result"
    .end annotation
.end field

.field private mIsEverTapped:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "is_ever_tapped"
    .end annotation
.end field

.field private mIsFirstLaunch:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "is_first_launch"
    .end annotation
.end field

.field private mIsInstalled:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "is_installed"
    .end annotation
.end field

.field private mIsLimited:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "is_limited"
    .end annotation
.end field

.field private mSIVerWhenInstalled:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "si_ver_when_installed"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZIZZZLjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p6}, Lcom/sec/android/app/sbrowser/common/extensions/SixAppDataCommon;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object p4, p0, Lcom/sec/android/app/sbrowser/common/extensions/SixAppData;->mDescription:Ljava/lang/String;

    iput-object p5, p0, Lcom/sec/android/app/sbrowser/common/extensions/SixAppData;->mCategory:Ljava/lang/String;

    iput-object p7, p0, Lcom/sec/android/app/sbrowser/common/extensions/SixAppData;->mExtVersion:Ljava/lang/String;

    iput-boolean p8, p0, Lcom/sec/android/app/sbrowser/common/extensions/SixAppData;->mIsInstalled:Z

    iput p9, p0, Lcom/sec/android/app/sbrowser/common/extensions/SixAppData;->mInstallResult:I

    iput-boolean p10, p0, Lcom/sec/android/app/sbrowser/common/extensions/SixAppData;->mIsFirstLaunch:Z

    iput-boolean p11, p0, Lcom/sec/android/app/sbrowser/common/extensions/SixAppData;->mIsEverTapped:Z

    iput-boolean p12, p0, Lcom/sec/android/app/sbrowser/common/extensions/SixAppData;->mIsLimited:Z

    iput-object p13, p0, Lcom/sec/android/app/sbrowser/common/extensions/SixAppData;->mSIVerWhenInstalled:Ljava/lang/String;

    const/4 p1, 0x0

    iput p1, p0, Lcom/sec/android/app/sbrowser/common/extensions/SixAppData;->mBlockedStatus:I

    return-void
.end method

.method public static clone(Lcom/sec/android/app/sbrowser/common/extensions/SixAppData;)Lcom/sec/android/app/sbrowser/common/extensions/SixAppData;
    .locals 15

    new-instance v14, Lcom/sec/android/app/sbrowser/common/extensions/SixAppData;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/extensions/SixAppDataCommon;->getPkgName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/extensions/SixAppDataCommon;->getAppName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/extensions/SixAppDataCommon;->getExtensionId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/extensions/SixAppData;->getDescription()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/extensions/SixAppData;->getCategory()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/extensions/SixAppDataCommon;->getInstallSource()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/extensions/SixAppData;->getExtVersion()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/extensions/SixAppData;->getIsInstalled()Z

    move-result v8

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/extensions/SixAppData;->getInstallResult()I

    move-result v9

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/extensions/SixAppData;->isFirstLaunch()Z

    move-result v10

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/extensions/SixAppData;->isEverTapped()Z

    move-result v11

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/extensions/SixAppData;->isLimited()Z

    move-result v12

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/extensions/SixAppData;->getSIVerWhenInstalled()Ljava/lang/String;

    move-result-object v13

    move-object v0, v14

    invoke-direct/range {v0 .. v13}, Lcom/sec/android/app/sbrowser/common/extensions/SixAppData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZIZZZLjava/lang/String;)V

    return-object v14
.end method

.method private static getSixAppData(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    const-string v0, "six_data"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v0, "six_app_data"

    const/4 v1, 0x0

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getSixAppDataList(Landroid/content/Context;)Ljava/util/ArrayList;
    .locals 5
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/sec/android/app/sbrowser/common/extensions/SixAppData;",
            ">;"
        }
    .end annotation

    const-string v0, "getSixAppDataList: "

    const-string v1, "SixAppData"

    const/4 v2, 0x0

    if-nez p0, :cond_0

    const-string p0, "getSixAppDataList: context is null. returning null"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    :cond_0
    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/extensions/SixAppData;->getSixAppData(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_1

    return-object v2

    :cond_1
    :try_start_0
    new-instance v3, Lcom/google/gson/Gson;

    invoke-direct {v3}, Lcom/google/gson/Gson;-><init>()V

    new-instance v4, Lcom/sec/android/app/sbrowser/common/extensions/SixAppData$1;

    invoke-direct {v4}, Lcom/sec/android/app/sbrowser/common/extensions/SixAppData$1;-><init>()V

    invoke-virtual {v4}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v4

    invoke-virtual {v3, p0, v4}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/ArrayList;
    :try_end_0
    .catch Lcom/google/gson/JsonSyntaxException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/google/gson/JsonIOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, p0

    goto :goto_2

    :catch_0
    move-exception p0

    goto :goto_0

    :catch_1
    move-exception p0

    goto :goto_1

    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v3, v1}, Landroidx/recyclerview/widget/P;->C(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    return-object v2
.end method

.method public static setSixAppData(Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 2
    .param p1    # Ljava/util/ArrayList;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList<",
            "Lcom/sec/android/app/sbrowser/common/extensions/SixAppData;",
            ">;)V"
        }
    .end annotation

    if-nez p0, :cond_0

    const-string p0, "SixAppData"

    const-string p1, "setSixAppData: context is null. Aborting"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v0, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    const-string v0, "six_data"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "six_app_data"

    invoke-interface {p0, v0, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method


# virtual methods
.method public getCategory()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/extensions/SixAppData;->mCategory:Ljava/lang/String;

    return-object p0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/extensions/SixAppData;->mDescription:Ljava/lang/String;

    return-object p0
.end method

.method public getExtVersion()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/extensions/SixAppData;->mExtVersion:Ljava/lang/String;

    return-object p0
.end method

.method public getInstallResult()I
    .locals 0

    iget p0, p0, Lcom/sec/android/app/sbrowser/common/extensions/SixAppData;->mInstallResult:I

    return p0
.end method

.method public getIsInstalled()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/common/extensions/SixAppData;->mIsInstalled:Z

    return p0
.end method

.method public getSIVerWhenInstalled()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/extensions/SixAppData;->mSIVerWhenInstalled:Ljava/lang/String;

    return-object p0
.end method

.method public isBlocked()Z
    .locals 1

    iget p0, p0, Lcom/sec/android/app/sbrowser/common/extensions/SixAppData;->mBlockedStatus:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isBlockedOrIgnored()Z
    .locals 2

    iget p0, p0, Lcom/sec/android/app/sbrowser/common/extensions/SixAppData;->mBlockedStatus:I

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v1, 0x2

    if-ne p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    return v0
.end method

.method public isEverTapped()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/common/extensions/SixAppData;->mIsEverTapped:Z

    return p0
.end method

.method public isFirstLaunch()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/common/extensions/SixAppData;->mIsFirstLaunch:Z

    return p0
.end method

.method public isInstallFailed()Z
    .locals 1

    iget p0, p0, Lcom/sec/android/app/sbrowser/common/extensions/SixAppData;->mInstallResult:I

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isInstalled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/common/extensions/SixAppData;->mIsInstalled:Z

    if-eqz v0, :cond_0

    iget p0, p0, Lcom/sec/android/app/sbrowser/common/extensions/SixAppData;->mInstallResult:I

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isLimited()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/common/extensions/SixAppData;->mIsLimited:Z

    return p0
.end method

.method public isNotInstalled()Z
    .locals 1

    iget p0, p0, Lcom/sec/android/app/sbrowser/common/extensions/SixAppData;->mInstallResult:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isOn()Z
    .locals 1

    invoke-static {}, Lcom/sec/terrace/browser/extensions/TerraceExtensionUtil;->getInstance()Lcom/sec/terrace/browser/extensions/TerraceExtensionUtil;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/extensions/SixAppDataCommon;->getExtensionId()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/sec/terrace/browser/extensions/TerraceExtensionUtil;->isEnabledInNative(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public isToBeDimmedAndOff()Z
    .locals 4

    iget v0, p0, Lcom/sec/android/app/sbrowser/common/extensions/SixAppData;->mBlockedStatus:I

    iget-boolean v1, p0, Lcom/sec/android/app/sbrowser/common/extensions/SixAppData;->mIsLimited:Z

    add-int/2addr v0, v1

    iget p0, p0, Lcom/sec/android/app/sbrowser/common/extensions/SixAppData;->mInstallResult:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-lez p0, :cond_0

    const/4 v3, 0x3

    if-ge p0, v3, :cond_0

    move p0, v2

    goto :goto_0

    :cond_0
    move p0, v1

    :goto_0
    add-int/2addr v0, p0

    if-lez v0, :cond_1

    move v1, v2

    :cond_1
    return v1
.end method

.method public isUnsupported()Z
    .locals 1

    iget p0, p0, Lcom/sec/android/app/sbrowser/common/extensions/SixAppData;->mBlockedStatus:I

    const/4 v0, 0x3

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isUpdateFailed()Z
    .locals 1

    iget p0, p0, Lcom/sec/android/app/sbrowser/common/extensions/SixAppData;->mInstallResult:I

    const/4 v0, 0x3

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public logcatSixAppData(Ljava/lang/String;)V
    .locals 16

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/sbrowser/common/extensions/SixAppDataCommon;->getExtensionId()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x5

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/sbrowser/common/extensions/SixAppDataCommon;->getPkgName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/sbrowser/common/extensions/SixAppDataCommon;->getAppName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/sbrowser/common/extensions/SixAppData;->getExtVersion()Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/sbrowser/common/extensions/SixAppDataCommon;->getInstallSource()Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/sbrowser/common/extensions/SixAppData;->isInstalled()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Instd"

    :goto_0
    move-object v9, v0

    goto :goto_1

    :cond_0
    const-string v0, "NoInstd"

    goto :goto_0

    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/sbrowser/common/extensions/SixAppData;->getInstallResult()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/sbrowser/common/extensions/SixAppData;->isOn()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "ON"

    :goto_2
    move-object v11, v0

    goto :goto_3

    :cond_1
    const-string v0, "OFF"

    goto :goto_2

    :goto_3
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/sbrowser/common/extensions/SixAppData;->isFirstLaunch()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "1stLnch"

    :goto_4
    move-object v12, v0

    goto :goto_5

    :cond_2
    const-string v0, "EvrLnch"

    goto :goto_4

    :goto_5
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/sbrowser/common/extensions/SixAppData;->isEverTapped()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "EvrTpd"

    :goto_6
    move-object v13, v0

    goto :goto_7

    :cond_3
    const-string v0, "NvrTpd"

    goto :goto_6

    :goto_7
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/sbrowser/common/extensions/SixAppData;->isLimited()Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "Lmtd"

    :goto_8
    move-object v14, v0

    goto :goto_9

    :cond_4
    const-string v0, "Ulmtd"

    goto :goto_8

    :goto_9
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/sbrowser/common/extensions/SixAppData;->getSIVerWhenInstalled()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v3, p1

    filled-new-array/range {v3 .. v15}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "%s: %s,%s,%s,%s,%s,%s,%d,%s,%s,%s,%s,SIver:%s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "SixAppData"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setBlockedByBlocklist()V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lcom/sec/android/app/sbrowser/common/extensions/SixAppData;->mBlockedStatus:I

    return-void
.end method

.method public setCategory(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/common/extensions/SixAppData;->mCategory:Ljava/lang/String;

    return-void
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/common/extensions/SixAppData;->mDescription:Ljava/lang/String;

    return-void
.end method

.method public setEverTapped(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/common/extensions/SixAppData;->mIsEverTapped:Z

    return-void
.end method

.method public setExtVersion(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/common/extensions/SixAppData;->mExtVersion:Ljava/lang/String;

    return-void
.end method

.method public setIgnoredByUser()V
    .locals 1

    const/4 v0, 0x2

    iput v0, p0, Lcom/sec/android/app/sbrowser/common/extensions/SixAppData;->mBlockedStatus:I

    return-void
.end method

.method public setInstallFailed()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/common/extensions/SixAppData;->mIsInstalled:Z

    const/4 v0, 0x2

    iput v0, p0, Lcom/sec/android/app/sbrowser/common/extensions/SixAppData;->mInstallResult:I

    return-void
.end method

.method public setInstalled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/common/extensions/SixAppData;->mIsInstalled:Z

    xor-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/sec/android/app/sbrowser/common/extensions/SixAppData;->mInstallResult:I

    return-void
.end method

.method public setLimited(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/common/extensions/SixAppData;->mIsLimited:Z

    return-void
.end method

.method public setNoMoreFirstLaunch()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/common/extensions/SixAppData;->mIsFirstLaunch:Z

    return-void
.end method

.method public setSIVerWhenInstalled(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/common/extensions/SixAppData;->mSIVerWhenInstalled:Ljava/lang/String;

    return-void
.end method

.method public setUnblocked()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/sbrowser/common/extensions/SixAppData;->mBlockedStatus:I

    return-void
.end method

.method public setUnsupported()V
    .locals 1

    const/4 v0, 0x3

    iput v0, p0, Lcom/sec/android/app/sbrowser/common/extensions/SixAppData;->mBlockedStatus:I

    return-void
.end method

.method public setUpdateFailed()V
    .locals 1

    const/4 v0, 0x3

    iput v0, p0, Lcom/sec/android/app/sbrowser/common/extensions/SixAppData;->mInstallResult:I

    return-void
.end method
