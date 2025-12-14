.class public Lorg/chromium/base/shared_preferences/SharedPreferencesManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/base/shared_preferences/SharedPreferencesManager$CheckingEditor;
    }
.end annotation

.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation

.annotation runtime Lorg/jni_zero/JNINamespace;
.end annotation


# static fields
.field private static final sInstance:Lorg/chromium/base/shared_preferences/SharedPreferencesManager;

.field private static final sInstances:Ljava/util/Map;
    .annotation build Landroidx/annotation/GuardedBy;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lorg/chromium/base/shared_preferences/PreferenceKeyRegistry;",
            "Lorg/chromium/base/shared_preferences/SharedPreferencesManager;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mKeyChecker:Lorg/chromium/base/shared_preferences/PreferenceKeyChecker;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget-boolean v0, Lorg/chromium/build/BuildConfig;->ENABLE_ASSERTS:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    sput-object v0, Lorg/chromium/base/shared_preferences/SharedPreferencesManager;->sInstances:Ljava/util/Map;

    sget-boolean v0, Lorg/chromium/build/BuildConfig;->ENABLE_ASSERTS:Z

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    new-instance v0, Lorg/chromium/base/shared_preferences/SharedPreferencesManager;

    invoke-direct {v0, v1}, Lorg/chromium/base/shared_preferences/SharedPreferencesManager;-><init>(Lorg/chromium/base/shared_preferences/PreferenceKeyRegistry;)V

    move-object v1, v0

    :goto_1
    sput-object v1, Lorg/chromium/base/shared_preferences/SharedPreferencesManager;->sInstance:Lorg/chromium/base/shared_preferences/SharedPreferencesManager;

    return-void
.end method

.method public constructor <init>(Lorg/chromium/base/shared_preferences/PreferenceKeyChecker;)V
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/chromium/base/shared_preferences/SharedPreferencesManager;->mKeyChecker:Lorg/chromium/base/shared_preferences/PreferenceKeyChecker;

    return-void
.end method

.method public constructor <init>(Lorg/chromium/base/shared_preferences/PreferenceKeyRegistry;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-boolean v0, Lorg/chromium/build/BuildConfig;->ENABLE_ASSERTS:Z

    if-eqz v0, :cond_0

    new-instance v0, Lorg/chromium/base/shared_preferences/StrictPreferenceKeyChecker;

    invoke-direct {v0, p1}, Lorg/chromium/base/shared_preferences/StrictPreferenceKeyChecker;-><init>(Lorg/chromium/base/shared_preferences/PreferenceKeyRegistry;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lorg/chromium/base/shared_preferences/SharedPreferencesManager;->mKeyChecker:Lorg/chromium/base/shared_preferences/PreferenceKeyChecker;

    return-void
.end method

.method public static bridge synthetic a(Lorg/chromium/base/shared_preferences/SharedPreferencesManager;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/chromium/base/shared_preferences/SharedPreferencesManager;->checkIsKeyInUse(Ljava/lang/String;)V

    return-void
.end method

.method private checkIsKeyInUse(Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lorg/chromium/base/shared_preferences/SharedPreferencesManager;->mKeyChecker:Lorg/chromium/base/shared_preferences/PreferenceKeyChecker;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lorg/chromium/base/shared_preferences/PreferenceKeyChecker;->checkIsKeyInUse(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private checkIsPrefixInUse(Lorg/chromium/base/shared_preferences/KeyPrefix;)V
    .locals 0

    iget-object p0, p0, Lorg/chromium/base/shared_preferences/SharedPreferencesManager;->mKeyChecker:Lorg/chromium/base/shared_preferences/PreferenceKeyChecker;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lorg/chromium/base/shared_preferences/PreferenceKeyChecker;->checkIsPrefixInUse(Lorg/chromium/base/shared_preferences/KeyPrefix;)V

    :cond_0
    return-void
.end method

.method public static getInstanceForRegistry(Lorg/chromium/base/shared_preferences/PreferenceKeyRegistry;)Lorg/chromium/base/shared_preferences/SharedPreferencesManager;
    .locals 2

    sget-boolean v0, Lorg/chromium/build/BuildConfig;->ENABLE_ASSERTS:Z

    if-nez v0, :cond_0

    sget-object p0, Lorg/chromium/base/shared_preferences/SharedPreferencesManager;->sInstance:Lorg/chromium/base/shared_preferences/SharedPreferencesManager;

    invoke-static {p0}, Lorg/chromium/build/NullUtil;->assumeNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/chromium/base/shared_preferences/SharedPreferencesManager;

    return-object p0

    :cond_0
    sget-object v0, Lorg/chromium/base/shared_preferences/SharedPreferencesManager;->sInstances:Ljava/util/Map;

    monitor-enter v0

    :try_start_0
    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/chromium/base/shared_preferences/SharedPreferencesManager;

    if-nez v1, :cond_1

    new-instance v1, Lorg/chromium/base/shared_preferences/SharedPreferencesManager;

    invoke-direct {v1, p0}, Lorg/chromium/base/shared_preferences/SharedPreferencesManager;-><init>(Lorg/chromium/base/shared_preferences/PreferenceKeyRegistry;)V

    invoke-interface {v0, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_1
    :goto_0
    monitor-exit v0

    return-object v1

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private removeKeysWithPrefixInternal(Lorg/chromium/base/shared_preferences/KeyPrefix;)V
    .locals 3

    invoke-virtual {p0}, Lorg/chromium/base/shared_preferences/SharedPreferencesManager;->getEditor()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-static {}, Lorg/chromium/base/ContextUtils;->getAppSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v1}, Lorg/chromium/base/shared_preferences/KeyPrefix;->hasGenerated(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    :cond_1
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method


# virtual methods
.method public contains(Ljava/lang/String;)Z
    .locals 0
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    invoke-direct {p0, p1}, Lorg/chromium/base/shared_preferences/SharedPreferencesManager;->checkIsKeyInUse(Ljava/lang/String;)V

    invoke-static {}, Lorg/chromium/base/ContextUtils;->getAppSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0, p1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public getEditor()Landroid/content/SharedPreferences$Editor;
    .locals 3

    new-instance v0, Lorg/chromium/base/shared_preferences/SharedPreferencesManager$CheckingEditor;

    invoke-static {}, Lorg/chromium/base/ContextUtils;->getAppSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lorg/chromium/base/shared_preferences/SharedPreferencesManager$CheckingEditor;-><init>(Lorg/chromium/base/shared_preferences/SharedPreferencesManager;Landroid/content/SharedPreferences$Editor;I)V

    return-object v0
.end method

.method public readBoolean(Ljava/lang/String;Z)Z
    .locals 0
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    invoke-direct {p0, p1}, Lorg/chromium/base/shared_preferences/SharedPreferencesManager;->checkIsKeyInUse(Ljava/lang/String;)V

    invoke-static {}, Lorg/chromium/base/ContextUtils;->getAppSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public readInt(Ljava/lang/String;I)I
    .locals 0
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    invoke-direct {p0, p1}, Lorg/chromium/base/shared_preferences/SharedPreferencesManager;->checkIsKeyInUse(Ljava/lang/String;)V

    invoke-static {}, Lorg/chromium/base/ContextUtils;->getAppSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public readString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .annotation build Lorg/chromium/build/annotations/Contract;
    .end annotation

    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    invoke-direct {p0, p1}, Lorg/chromium/base/shared_preferences/SharedPreferencesManager;->checkIsKeyInUse(Ljava/lang/String;)V

    invoke-static {}, Lorg/chromium/base/ContextUtils;->getAppSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public removeKey(Ljava/lang/String;)V
    .locals 0
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    invoke-virtual {p0}, Lorg/chromium/base/shared_preferences/SharedPreferencesManager;->getEditor()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public removeKeysWithPrefix(Lorg/chromium/base/shared_preferences/KeyPrefix;Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0, p1}, Lorg/chromium/base/shared_preferences/SharedPreferencesManager;->checkIsPrefixInUse(Lorg/chromium/base/shared_preferences/KeyPrefix;)V

    new-instance v0, Lorg/chromium/base/shared_preferences/KeyPrefix;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "*"

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/chromium/base/shared_preferences/KeyPrefix;->createKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/chromium/base/shared_preferences/KeyPrefix;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lorg/chromium/base/shared_preferences/SharedPreferencesManager;->removeKeysWithPrefixInternal(Lorg/chromium/base/shared_preferences/KeyPrefix;)V

    return-void
.end method

.method public writeString(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    invoke-virtual {p0}, Lorg/chromium/base/shared_preferences/SharedPreferencesManager;->getEditor()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method
