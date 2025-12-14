.class public Lcom/sec/android/app/sbrowser/common/blockers/ExtensionApp;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/common/blockers/ExtensionApp$StoreType;
    }
.end annotation


# instance fields
.field private mAppName:Ljava/lang/String;

.field private mAppNameMap:Ljava/util/Map;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "app_name"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mExcludedCountries:Ljava/util/Set;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "excluded_countries"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mExcludedDevices:Ljava/util/Set;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "excluded_devices"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mGroup:Ljava/util/Set;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "group"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mIsEnabled:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "is_enabled"
    .end annotation
.end field

.field private mIsFeatured:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "is_featured"
    .end annotation
.end field

.field private mIsGEDSupported:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "ged_supported"
    .end annotation
.end field

.field private mIsPaid:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "is_paid"
    .end annotation
.end field

.field private mIsStubDownloadSupported:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "stub_download_supported"
    .end annotation
.end field

.field private mIsWhite:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "is_white"
    .end annotation
.end field

.field private mLogID:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "log_id"
    .end annotation
.end field

.field private mNotAvailableSdkSet:Ljava/util/Set;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "not_available_sdk"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mNotSupportedSdkSet:Ljava/util/Set;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "not_supported_sdk"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mPackageName:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "package_name"
    .end annotation
.end field

.field private mSignature:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "signature"
    .end annotation
.end field

.field private mStore:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "store"
    .end annotation
.end field

.field private mSubStoreMap:Ljava/util/Map;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "sub_store"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/common/blockers/ExtensionApp;->mPackageName:Ljava/lang/String;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/common/blockers/ExtensionApp;->mAppName:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/sec/android/app/sbrowser/common/blockers/ExtensionApp;->mIsWhite:Z

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/common/blockers/ExtensionApp;->mAppNameMap:Ljava/util/Map;

    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/common/blockers/ExtensionApp;->mGroup:Ljava/util/Set;

    const/4 p1, 0x0

    iput p1, p0, Lcom/sec/android/app/sbrowser/common/blockers/ExtensionApp;->mStore:I

    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/common/blockers/ExtensionApp;->mSubStoreMap:Ljava/util/Map;

    sget-object p2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/common/blockers/ExtensionApp;->mIsGEDSupported:Ljava/lang/Boolean;

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/common/blockers/ExtensionApp;->mIsStubDownloadSupported:Z

    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/common/blockers/ExtensionApp;->mNotAvailableSdkSet:Ljava/util/Set;

    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/common/blockers/ExtensionApp;->mNotSupportedSdkSet:Ljava/util/Set;

    const-string p1, ""

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/common/blockers/ExtensionApp;->mSignature:Ljava/lang/String;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/common/blockers/ExtensionApp;->mLogID:Ljava/lang/String;

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/common/blockers/ExtensionApp;->mIsPaid:Ljava/lang/Boolean;

    new-instance p3, Ljava/util/HashSet;

    invoke-direct {p3}, Ljava/util/HashSet;-><init>()V

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/common/blockers/ExtensionApp;->mExcludedCountries:Ljava/util/Set;

    new-instance p3, Ljava/util/HashSet;

    invoke-direct {p3}, Ljava/util/HashSet;-><init>()V

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/common/blockers/ExtensionApp;->mExcludedDevices:Ljava/util/Set;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/common/blockers/ExtensionApp;->mIsFeatured:Ljava/lang/Boolean;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/common/blockers/ExtensionApp;->mIsEnabled:Ljava/lang/Boolean;

    return-void
.end method


# virtual methods
.method public getAppName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/blockers/ExtensionApp;->mAppName:Ljava/lang/String;

    return-object p0
.end method

.method public getDisplayedAppName()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/blockers/ExtensionApp;->mAppNameMap:Ljava/util/Map;

    if-nez v0, :cond_0

    const-string p0, ""

    return-object p0

    :cond_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/util/Locale;->getDisplayLanguage(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/blockers/ExtensionApp;->mAppNameMap:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/blockers/ExtensionApp;->mAppNameMap:Ljava/util/Map;

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0

    :cond_1
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/blockers/ExtensionApp;->mAppNameMap:Ljava/util/Map;

    const-string v0, "English"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public getExcludedCountries()Ljava/util/Set;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/blockers/ExtensionApp;->mExcludedCountries:Ljava/util/Set;

    return-object p0
.end method

.method public getExcludedDevices()Ljava/util/Set;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/blockers/ExtensionApp;->mExcludedDevices:Ljava/util/Set;

    return-object p0
.end method

.method public getGroup()Ljava/util/Set;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/blockers/ExtensionApp;->mGroup:Ljava/util/Set;

    return-object p0
.end method

.method public getLogID()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/blockers/ExtensionApp;->mLogID:Ljava/lang/String;

    return-object p0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/blockers/ExtensionApp;->mPackageName:Ljava/lang/String;

    return-object p0
.end method

.method public getSignature()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/blockers/ExtensionApp;->mSignature:Ljava/lang/String;

    return-object p0
.end method

.method public getStore()I
    .locals 0

    iget p0, p0, Lcom/sec/android/app/sbrowser/common/blockers/ExtensionApp;->mStore:I

    return p0
.end method

.method public getStoreType(Z)I
    .locals 0

    if-eqz p1, :cond_0

    iget p0, p0, Lcom/sec/android/app/sbrowser/common/blockers/ExtensionApp;->mStore:I

    and-int/lit8 p0, p0, 0x2

    return p0

    :cond_0
    iget p0, p0, Lcom/sec/android/app/sbrowser/common/blockers/ExtensionApp;->mStore:I

    and-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public getSubStore()Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/blockers/ExtensionApp;->mSubStoreMap:Ljava/util/Map;

    return-object p0
.end method

.method public hasSubStore()Z
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/blockers/ExtensionApp;->mSubStoreMap:Ljava/util/Map;

    if-eqz v0, :cond_0

    const-string v1, "sub_store_package"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/blockers/ExtensionApp;->mSubStoreMap:Ljava/util/Map;

    const-string v0, "sub_store_uri"

    invoke-interface {p0, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isAvailableSdk()Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/blockers/ExtensionApp;->mNotAvailableSdkSet:Ljava/util/Set;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/blockers/ExtensionApp;->mNotAvailableSdkSet:Ljava/util/Set;

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

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

.method public isEnabled()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/blockers/ExtensionApp;->mIsEnabled:Ljava/lang/Boolean;

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public isFeatured()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/blockers/ExtensionApp;->mIsFeatured:Ljava/lang/Boolean;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isGEDSupported()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/blockers/ExtensionApp;->mIsGEDSupported:Ljava/lang/Boolean;

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public isPaid()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/blockers/ExtensionApp;->mIsPaid:Ljava/lang/Boolean;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isStubDownloadSupported()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/common/blockers/ExtensionApp;->mIsStubDownloadSupported:Z

    return p0
.end method

.method public isSupportedSdk()Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/blockers/ExtensionApp;->mNotSupportedSdkSet:Ljava/util/Set;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/blockers/ExtensionApp;->mNotSupportedSdkSet:Ljava/util/Set;

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

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

.method public isWhite()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/common/blockers/ExtensionApp;->mIsWhite:Z

    return p0
.end method

.method public setAppName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/common/blockers/ExtensionApp;->mAppName:Ljava/lang/String;

    return-void
.end method
