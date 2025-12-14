.class public Lcom/sec/android/app/sbrowser/common/extensions/ExtensionsSettings;
.super Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/common/extensions/ExtensionsSettings$NewFlagPreferenceInfo;,
        Lcom/sec/android/app/sbrowser/common/extensions/ExtensionsSettings$Client;
    }
.end annotation


# static fields
.field private static sNewFlagKeyTypeMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static sNewFlagPreferenceKeyIndex:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lcom/sec/android/app/sbrowser/common/extensions/ExtensionsSettings$NewFlagPreferenceInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/sec/android/app/sbrowser/common/extensions/ExtensionsSettings;->sNewFlagPreferenceKeyIndex:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/sec/android/app/sbrowser/common/extensions/ExtensionsSettings;->sNewFlagKeyTypeMap:Ljava/util/HashMap;

    const/4 v0, 0x3

    const-string v1, "extensions_has_vr_extension"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, v2}, Lcom/sec/android/app/sbrowser/common/extensions/ExtensionsSettings;->putNewFlagPreferenceInfo(ILjava/lang/String;ZZ)V

    const/4 v0, 0x4

    const-string v1, "extensions_get_more"

    invoke-static {v0, v1, v2, v2}, Lcom/sec/android/app/sbrowser/common/extensions/ExtensionsSettings;->putNewFlagPreferenceInfo(ILjava/lang/String;ZZ)V

    const/4 v0, 0x5

    const-string v1, "extensions_has_installed_extension"

    invoke-static {v0, v1, v2, v2}, Lcom/sec/android/app/sbrowser/common/extensions/ExtensionsSettings;->putNewFlagPreferenceInfo(ILjava/lang/String;ZZ)V

    const/4 v0, 0x6

    const-string v1, "extensions_has_new_fixed_extension"

    invoke-static {v0, v1, v2, v2}, Lcom/sec/android/app/sbrowser/common/extensions/ExtensionsSettings;->putNewFlagPreferenceInfo(ILjava/lang/String;ZZ)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    const-string v0, "extensions_preferences"

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic a()Lcom/sec/android/app/sbrowser/common/extensions/ExtensionsSettings;
    .locals 1

    new-instance v0, Lcom/sec/android/app/sbrowser/common/extensions/ExtensionsSettings;

    invoke-direct {v0}, Lcom/sec/android/app/sbrowser/common/extensions/ExtensionsSettings;-><init>()V

    return-object v0
.end method

.method public static bridge synthetic b(Lcom/sec/android/app/sbrowser/common/extensions/ExtensionsSettings;I)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/common/extensions/ExtensionsSettings;->hasNewExtensionFlag(I)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic c(Lcom/sec/android/app/sbrowser/common/extensions/ExtensionsSettings;ILjava/lang/Boolean;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/common/extensions/ExtensionsSettings;->setHasNewExtensionFlag(ILjava/lang/Boolean;)V

    return-void
.end method

.method public static bridge synthetic d()Ljava/util/HashMap;
    .locals 1

    sget-object v0, Lcom/sec/android/app/sbrowser/common/extensions/ExtensionsSettings;->sNewFlagKeyTypeMap:Ljava/util/HashMap;

    return-object v0
.end method

.method public static bridge synthetic e()Ljava/util/HashMap;
    .locals 1

    sget-object v0, Lcom/sec/android/app/sbrowser/common/extensions/ExtensionsSettings;->sNewFlagPreferenceKeyIndex:Ljava/util/HashMap;

    return-object v0
.end method

.method public static getInstance()Lcom/sec/android/app/sbrowser/common/extensions/ExtensionsSettings;
    .locals 2

    new-instance v0, Lcom/google/firebase/messaging/m;

    const/16 v1, 0x1a

    invoke-direct {v0, v1}, Lcom/google/firebase/messaging/m;-><init>(I)V

    const-class v1, Lcom/sec/android/app/sbrowser/common/extensions/ExtensionsSettings;

    invoke-static {v1, v0}, Lcom/sec/android/app/sbrowser/common/singleton/SingletonFactory;->getOrCreate(Ljava/lang/Class;Lcom/sec/android/app/sbrowser/common/function/Supplier;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/common/extensions/ExtensionsSettings;

    return-object v0
.end method

.method private hasNewExtensionFlag(I)Z
    .locals 1

    sget-object v0, Lcom/sec/android/app/sbrowser/common/extensions/ExtensionsSettings;->sNewFlagPreferenceKeyIndex:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sec/android/app/sbrowser/common/extensions/ExtensionsSettings$NewFlagPreferenceInfo;

    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/sec/android/app/sbrowser/common/extensions/ExtensionsSettings$NewFlagPreferenceInfo;->key:Ljava/lang/String;

    iget-boolean p1, p1, Lcom/sec/android/app/sbrowser/common/extensions/ExtensionsSettings$NewFlagPreferenceInfo;->fallback:Z

    invoke-virtual {p0, v0, p1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->getPersistedBoolean(Ljava/lang/String;Z)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static putNewFlagPreferenceInfo(ILjava/lang/String;ZZ)V
    .locals 4

    sget-object v0, Lcom/sec/android/app/sbrowser/common/extensions/ExtensionsSettings;->sNewFlagPreferenceKeyIndex:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/sec/android/app/sbrowser/common/extensions/ExtensionsSettings$NewFlagPreferenceInfo;

    const/4 v3, 0x0

    invoke-direct {v2, v3, p1, p2, p3}, Lcom/sec/android/app/sbrowser/common/extensions/ExtensionsSettings$NewFlagPreferenceInfo;-><init>(ILjava/lang/String;ZZ)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p2, Lcom/sec/android/app/sbrowser/common/extensions/ExtensionsSettings;->sNewFlagKeyTypeMap:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p2, p1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private setHasNewExtensionFlag(ILjava/lang/Boolean;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "setHasNewExtensionFlag type="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " new="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ExtensionsSettings"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/sec/android/app/sbrowser/common/extensions/ExtensionsSettings;->sNewFlagPreferenceKeyIndex:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sec/android/app/sbrowser/common/extensions/ExtensionsSettings$NewFlagPreferenceInfo;

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p1, Lcom/sec/android/app/sbrowser/common/extensions/ExtensionsSettings$NewFlagPreferenceInfo;->key:Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->persistBoolean(Ljava/lang/String;Z)V

    return-void
.end method
