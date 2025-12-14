.class public Lcom/sec/android/app/sbrowser/common/extensions/SixAppDataCommon;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private mAppName:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "application_name"
    .end annotation
.end field

.field private mExtensionId:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "extension_id"
    .end annotation
.end field

.field private mInstallSource:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "install_source"
    .end annotation
.end field

.field private mPkgName:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "package_name"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/common/extensions/SixAppDataCommon;->mPkgName:Ljava/lang/String;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/common/extensions/SixAppDataCommon;->mAppName:Ljava/lang/String;

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/common/extensions/SixAppDataCommon;->mExtensionId:Ljava/lang/String;

    iput-object p4, p0, Lcom/sec/android/app/sbrowser/common/extensions/SixAppDataCommon;->mInstallSource:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getAppName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/extensions/SixAppDataCommon;->mAppName:Ljava/lang/String;

    return-object p0
.end method

.method public getExtensionId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/extensions/SixAppDataCommon;->mExtensionId:Ljava/lang/String;

    return-object p0
.end method

.method public getInstallSource()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/extensions/SixAppDataCommon;->mInstallSource:Ljava/lang/String;

    return-object p0
.end method

.method public getPkgName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/extensions/SixAppDataCommon;->mPkgName:Ljava/lang/String;

    return-object p0
.end method

.method public isCrxOnlyExt()Z
    .locals 2

    const-string v0, "no_six_pkg"

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/extensions/SixAppDataCommon;->mInstallSource:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/extensions/SixAppDataCommon;->isFromWebStore()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/extensions/SixAppDataCommon;->isDefaultExt()Z

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

.method public isDefaultExt()Z
    .locals 2

    const-string v0, "default_ext"

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/extensions/SixAppDataCommon;->mInstallSource:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "default_ext_from_six"

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/extensions/SixAppDataCommon;->mInstallSource:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

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

.method public isDevExt()Z
    .locals 1

    const-string v0, "dev_ext"

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/extensions/SixAppDataCommon;->mInstallSource:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public isFromWebStore()Z
    .locals 2

    const-string v0, "web_store"

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/extensions/SixAppDataCommon;->mInstallSource:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "web_store_from_six"

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/extensions/SixAppDataCommon;->mInstallSource:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

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

.method public isSIXPkg()Z
    .locals 1

    const-string v0, "3rd_party"

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/extensions/SixAppDataCommon;->mInstallSource:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public setAppName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/common/extensions/SixAppDataCommon;->mAppName:Ljava/lang/String;

    return-void
.end method

.method public setExtensionId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/common/extensions/SixAppDataCommon;->mExtensionId:Ljava/lang/String;

    return-void
.end method

.method public setInstallSource(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/common/extensions/SixAppDataCommon;->mInstallSource:Ljava/lang/String;

    return-void
.end method

.method public setPkgName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/common/extensions/SixAppDataCommon;->mPkgName:Ljava/lang/String;

    return-void
.end method
