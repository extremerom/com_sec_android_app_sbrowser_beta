.class public Lcom/sec/terrace/browser/browserservices/permissiondelegation/TinInstalledWebappPermissionStore;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final mPreferences:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lorg/chromium/base/StrictModeContext;->allowDiskReads()Lorg/chromium/base/StrictModeContext;

    move-result-object v0

    :try_start_0
    invoke-static {}, Lorg/chromium/base/ContextUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "twa_permission_registry"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/terrace/browser/browserservices/permissiondelegation/TinInstalledWebappPermissionStore;->mPreferences:Landroid/content/SharedPreferences;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/chromium/base/StrictModeContext;->close()V

    :cond_0
    return-void

    :catchall_0
    move-exception p0

    if-eqz v0, :cond_1

    :try_start_1
    invoke-virtual {v0}, Lorg/chromium/base/StrictModeContext;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v0

    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    throw p0
.end method

.method private addOrigin(Lcom/sec/terrace/browser/customtabs/TerraceOrigin;)V
    .locals 1

    invoke-virtual {p0}, Lcom/sec/terrace/browser/browserservices/permissiondelegation/TinInstalledWebappPermissionStore;->getStoredOrigins()Ljava/util/Set;

    move-result-object v0

    invoke-virtual {p1}, Lcom/sec/terrace/browser/customtabs/TerraceOrigin;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object p0, p0, Lcom/sec/terrace/browser/browserservices/permissiondelegation/TinInstalledWebappPermissionStore;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string p1, "origins"

    invoke-interface {p0, p1, v0}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method private static byteArrayToString([B)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x3

    invoke-static {p0, v0}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static createAllDelegateAppsKey(Lcom/sec/terrace/browser/customtabs/TerraceOrigin;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "all_delegate_apps."

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/sec/terrace/browser/customtabs/TerraceOrigin;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static createAppNameKey(Lcom/sec/terrace/browser/customtabs/TerraceOrigin;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "app_name."

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/sec/terrace/browser/customtabs/TerraceOrigin;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static createPackageNameKey(Lcom/sec/terrace/browser/customtabs/TerraceOrigin;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "package_name."

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/sec/terrace/browser/customtabs/TerraceOrigin;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static createPermissionKey(ILcom/sec/terrace/browser/customtabs/TerraceOrigin;)Ljava/lang/String;
    .locals 1
    .param p0    # I
        .annotation build Lorg/chromium/components/content_settings/ContentSettingsType$EnumType;
        .end annotation
    .end param

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lcom/sec/terrace/browser/browserservices/permissiondelegation/TinInstalledWebappPermissionStore;->getKeyPermissionPrefix(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/terrace/browser/customtabs/TerraceOrigin;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static createPermissionSettingKey(ILcom/sec/terrace/browser/customtabs/TerraceOrigin;)Ljava/lang/String;
    .locals 1
    .param p0    # I
        .annotation build Lorg/chromium/components/content_settings/ContentSettingsType$EnumType;
        .end annotation
    .end param

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lcom/sec/terrace/browser/browserservices/permissiondelegation/TinInstalledWebappPermissionStore;->getPermissionSettingKeyPrefix(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/terrace/browser/customtabs/TerraceOrigin;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static getKeyPermissionPrefix(I)Ljava/lang/String;
    .locals 1
    .param p0    # I
        .annotation build Lorg/chromium/components/content_settings/ContentSettingsType$EnumType;
        .end annotation
    .end param

    const/4 v0, 0x4

    if-eq p0, v0, :cond_1

    const/4 v0, 0x5

    if-ne p0, v0, :cond_0

    const-string p0, "notification_permission."

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Unsupported permission type."

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    const-string p0, "geolocation_permission."

    return-object p0
.end method

.method private static getPermissionSettingKeyPrefix(I)Ljava/lang/String;
    .locals 1
    .param p0    # I
        .annotation build Lorg/chromium/components/content_settings/ContentSettingsType$EnumType;
        .end annotation
    .end param

    const/4 v0, 0x4

    if-eq p0, v0, :cond_1

    const/4 v0, 0x5

    if-ne p0, v0, :cond_0

    const-string p0, "notification_permission_setting."

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Unsupported permission type."

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    const-string p0, "geolocation_permission_setting."

    return-object p0
.end method

.method private static stringToByteArray(Ljava/lang/String;)[B
    .locals 1

    const/4 v0, 0x3

    invoke-static {p0, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public addDelegateApp(Lcom/sec/terrace/browser/customtabs/TerraceOrigin;LI/b;)V
    .locals 3

    invoke-static {p1}, Lcom/sec/terrace/browser/browserservices/permissiondelegation/TinInstalledWebappPermissionStore;->createAllDelegateAppsKey(Lcom/sec/terrace/browser/customtabs/TerraceOrigin;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p0, Lcom/sec/terrace/browser/browserservices/permissiondelegation/TinInstalledWebappPermissionStore;->mPreferences:Landroid/content/SharedPreferences;

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v1, p1, v2}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iget-object p2, p2, LI/b;->a:LI/c;

    iget-object p2, p2, LI/c;->a:[B

    array-length v1, p2

    invoke-static {p2, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p2

    invoke-static {p2}, Lcom/sec/terrace/browser/browserservices/permissiondelegation/TinInstalledWebappPermissionStore;->byteArrayToString([B)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget-object p0, p0, Lcom/sec/terrace/browser/browserservices/permissiondelegation/TinInstalledWebappPermissionStore;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0, p1, v0}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public getAllDelegateApps(Lcom/sec/terrace/browser/customtabs/TerraceOrigin;)Ljava/util/Set;
    .locals 3
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/terrace/browser/customtabs/TerraceOrigin;",
            ")",
            "Ljava/util/Set<",
            "LI/b;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/sec/terrace/browser/browserservices/permissiondelegation/TinInstalledWebappPermissionStore;->mPreferences:Landroid/content/SharedPreferences;

    invoke-static {p1}, Lcom/sec/terrace/browser/browserservices/permissiondelegation/TinInstalledWebappPermissionStore;->createAllDelegateAppsKey(Lcom/sec/terrace/browser/customtabs/TerraceOrigin;)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-interface {p0, p1, v0}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object p0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/sec/terrace/browser/browserservices/permissiondelegation/TinInstalledWebappPermissionStore;->stringToByteArray(Ljava/lang/String;)[B

    move-result-object v0

    new-instance v1, LI/b;

    new-instance v2, LI/c;

    invoke-direct {v2, v0}, LI/c;-><init>([B)V

    invoke-direct {v1, v2}, LI/b;-><init>(LI/c;)V

    invoke-virtual {p1, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object p1
.end method

.method public getDelegatePackageName(Lcom/sec/terrace/browser/customtabs/TerraceOrigin;)Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/sec/terrace/browser/browserservices/permissiondelegation/TinInstalledWebappPermissionStore;->mPreferences:Landroid/content/SharedPreferences;

    invoke-static {p1}, Lcom/sec/terrace/browser/browserservices/permissiondelegation/TinInstalledWebappPermissionStore;->createPackageNameKey(Lcom/sec/terrace/browser/customtabs/TerraceOrigin;)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-interface {p0, p1, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getPermission(ILcom/sec/terrace/browser/customtabs/TerraceOrigin;)Ljava/lang/Integer;
    .locals 2
    .param p1    # I
        .annotation build Lorg/chromium/components/content_settings/ContentSettingsType$EnumType;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    invoke-static {p1, p2}, Lcom/sec/terrace/browser/browserservices/permissiondelegation/TinInstalledWebappPermissionStore;->createPermissionSettingKey(ILcom/sec/terrace/browser/customtabs/TerraceOrigin;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/terrace/browser/browserservices/permissiondelegation/TinInstalledWebappPermissionStore;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1, v0}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {p1, p2}, Lcom/sec/terrace/browser/browserservices/permissiondelegation/TinInstalledWebappPermissionStore;->createPermissionKey(ILcom/sec/terrace/browser/customtabs/TerraceOrigin;)Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/sec/terrace/browser/browserservices/permissiondelegation/TinInstalledWebappPermissionStore;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {p2, p1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget-object p0, p0, Lcom/sec/terrace/browser/browserservices/permissiondelegation/TinInstalledWebappPermissionStore;->mPreferences:Landroid/content/SharedPreferences;

    const/4 p2, 0x0

    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x2

    :goto_0
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :cond_2
    iget-object p0, p0, Lcom/sec/terrace/browser/browserservices/permissiondelegation/TinInstalledWebappPermissionStore;->mPreferences:Landroid/content/SharedPreferences;

    const/4 p1, 0x3

    invoke-interface {p0, v0, p1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public getStoredOrigins()Ljava/util/Set;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lorg/chromium/base/StrictModeContext;->allowDiskReads()Lorg/chromium/base/StrictModeContext;

    move-result-object v0

    :try_start_0
    new-instance v1, Ljava/util/HashSet;

    iget-object p0, p0, Lcom/sec/terrace/browser/browserservices/permissiondelegation/TinInstalledWebappPermissionStore;->mPreferences:Landroid/content/SharedPreferences;

    const-string v2, "origins"

    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    invoke-interface {p0, v2, v3}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/chromium/base/StrictModeContext;->close()V

    :cond_0
    return-object v1

    :catchall_0
    move-exception p0

    if-eqz v0, :cond_1

    :try_start_1
    invoke-virtual {v0}, Lorg/chromium/base/StrictModeContext;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v0

    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    throw p0
.end method

.method public initStorage()V
    .locals 0
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    invoke-virtual {p0}, Lcom/sec/terrace/browser/browserservices/permissiondelegation/TinInstalledWebappPermissionStore;->getStoredOrigins()Ljava/util/Set;

    return-void
.end method

.method public resetPermission(Lcom/sec/terrace/browser/customtabs/TerraceOrigin;I)V
    .locals 1
    .param p2    # I
        .annotation build Lorg/chromium/components/content_settings/ContentSettingsType$EnumType;
        .end annotation
    .end param

    iget-object p0, p0, Lcom/sec/terrace/browser/browserservices/permissiondelegation/TinInstalledWebappPermissionStore;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-static {p2, p1}, Lcom/sec/terrace/browser/browserservices/permissiondelegation/TinInstalledWebappPermissionStore;->createPermissionKey(ILcom/sec/terrace/browser/customtabs/TerraceOrigin;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-static {p2, p1}, Lcom/sec/terrace/browser/browserservices/permissiondelegation/TinInstalledWebappPermissionStore;->createPermissionSettingKey(ILcom/sec/terrace/browser/customtabs/TerraceOrigin;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public setStateForOrigin(Lcom/sec/terrace/browser/customtabs/TerraceOrigin;Ljava/lang/String;Ljava/lang/String;II)Z
    .locals 7
    .param p4    # I
        .annotation build Lorg/chromium/components/content_settings/ContentSettingsType$EnumType;
        .end annotation
    .end param

    invoke-virtual {p0}, Lcom/sec/terrace/browser/browserservices/permissiondelegation/TinInstalledWebappPermissionStore;->getStoredOrigins()Ljava/util/Set;

    move-result-object v0

    invoke-virtual {p1}, Lcom/sec/terrace/browser/customtabs/TerraceOrigin;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v1, v0, 0x1

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/terrace/browser/browserservices/permissiondelegation/TinInstalledWebappPermissionStore;->mPreferences:Landroid/content/SharedPreferences;

    invoke-static {p4, p1}, Lcom/sec/terrace/browser/browserservices/permissiondelegation/TinInstalledWebappPermissionStore;->createPermissionSettingKey(ILcom/sec/terrace/browser/customtabs/TerraceOrigin;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq p5, v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iget-object v3, p0, Lcom/sec/terrace/browser/browserservices/permissiondelegation/TinInstalledWebappPermissionStore;->mPreferences:Landroid/content/SharedPreferences;

    invoke-static {p1}, Lcom/sec/terrace/browser/browserservices/permissiondelegation/TinInstalledWebappPermissionStore;->createPackageNameKey(Lcom/sec/terrace/browser/customtabs/TerraceOrigin;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    iget-object v4, p0, Lcom/sec/terrace/browser/browserservices/permissiondelegation/TinInstalledWebappPermissionStore;->mPreferences:Landroid/content/SharedPreferences;

    invoke-static {p1}, Lcom/sec/terrace/browser/browserservices/permissiondelegation/TinInstalledWebappPermissionStore;->createAppNameKey(Lcom/sec/terrace/browser/customtabs/TerraceOrigin;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v6, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v0, :cond_1

    if-eqz v3, :cond_1

    if-nez v4, :cond_2

    :cond_1
    move v1, v2

    :cond_2
    invoke-direct {p0, p1}, Lcom/sec/terrace/browser/browserservices/permissiondelegation/TinInstalledWebappPermissionStore;->addOrigin(Lcom/sec/terrace/browser/customtabs/TerraceOrigin;)V

    iget-object p0, p0, Lcom/sec/terrace/browser/browserservices/permissiondelegation/TinInstalledWebappPermissionStore;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-static {p4, p1}, Lcom/sec/terrace/browser/browserservices/permissiondelegation/TinInstalledWebappPermissionStore;->createPermissionSettingKey(ILcom/sec/terrace/browser/customtabs/TerraceOrigin;)Ljava/lang/String;

    move-result-object p4

    invoke-interface {p0, p4, p5}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-static {p1}, Lcom/sec/terrace/browser/browserservices/permissiondelegation/TinInstalledWebappPermissionStore;->createPackageNameKey(Lcom/sec/terrace/browser/customtabs/TerraceOrigin;)Ljava/lang/String;

    move-result-object p4

    invoke-interface {p0, p4, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-static {p1}, Lcom/sec/terrace/browser/browserservices/permissiondelegation/TinInstalledWebappPermissionStore;->createAppNameKey(Lcom/sec/terrace/browser/customtabs/TerraceOrigin;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1, p3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return v1
.end method
