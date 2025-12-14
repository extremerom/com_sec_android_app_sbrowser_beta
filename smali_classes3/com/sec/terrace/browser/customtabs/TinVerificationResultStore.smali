.class public Lcom/sec/terrace/browser/customtabs/TinVerificationResultStore;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static addRelationship(Lcom/sec/terrace/browser/customtabs/TinRelationship;)V
    .locals 1

    invoke-static {}, Lcom/sec/terrace/browser/customtabs/TinVerificationResultStore;->getRelationships()Ljava/util/Set;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sec/terrace/browser/customtabs/TinRelationship;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-static {v0}, Lcom/sec/terrace/browser/customtabs/TinVerificationResultStore;->setRelationships(Ljava/util/Set;)V

    return-void
.end method

.method public static clearStoredRelationships()V
    .locals 1

    invoke-static {}, Lorg/chromium/base/ThreadUtils;->assertOnUiThread()V

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/terrace/browser/customtabs/TinVerificationResultStore;->setRelationships(Ljava/util/Set;)V

    return-void
.end method

.method private static getRelationships()Ljava/util/Set;
    .locals 2
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
    invoke-static {}, Lcom/sec/terrace/browser/customtabs/TinVerificationResultStore;->getVerifiedDigitalAssetLinks()Ljava/util/Set;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/chromium/base/StrictModeContext;->close()V

    :cond_0
    return-object v1

    :catchall_0
    move-exception v1

    if-eqz v0, :cond_1

    :try_start_1
    invoke-virtual {v0}, Lorg/chromium/base/StrictModeContext;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v0

    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    throw v1
.end method

.method private static getVerifiedDigitalAssetLinks()Ljava/util/Set;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lorg/chromium/base/ContextUtils;->getAppSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    new-instance v1, Ljava/util/HashSet;

    const-string v2, "verified_digital_asset_links"

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    return-object v1
.end method

.method public static isRelationshipSaved(Lcom/sec/terrace/browser/customtabs/TinRelationship;)Z
    .locals 1

    invoke-static {}, Lcom/sec/terrace/browser/customtabs/TinVerificationResultStore;->getRelationships()Ljava/util/Set;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sec/terrace/browser/customtabs/TinRelationship;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static removeRelationship(Lcom/sec/terrace/browser/customtabs/TinRelationship;)V
    .locals 1

    invoke-static {}, Lcom/sec/terrace/browser/customtabs/TinVerificationResultStore;->getRelationships()Ljava/util/Set;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sec/terrace/browser/customtabs/TinRelationship;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    invoke-static {v0}, Lcom/sec/terrace/browser/customtabs/TinVerificationResultStore;->setRelationships(Ljava/util/Set;)V

    return-void
.end method

.method private static setRelationships(Ljava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-static {p0}, Lcom/sec/terrace/browser/customtabs/TinVerificationResultStore;->setVerifiedDigitalAssetLinks(Ljava/util/Set;)V

    return-void
.end method

.method private static setVerifiedDigitalAssetLinks(Ljava/util/Set;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lorg/chromium/base/ContextUtils;->getAppSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "verified_digital_asset_links"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method
