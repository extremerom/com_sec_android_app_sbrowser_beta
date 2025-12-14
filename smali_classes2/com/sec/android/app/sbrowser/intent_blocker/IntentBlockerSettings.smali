.class public Lcom/sec/android/app/sbrowser/intent_blocker/IntentBlockerSettings;
.super Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;
.source "SourceFile"


# direct methods
.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic a(Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 0

    invoke-static {p1, p0}, Lcom/sec/android/app/sbrowser/intent_blocker/IntentBlockerSettings;->lambda$getBackgroundImportanceValues$0(Ljava/util/List;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic b()Lcom/sec/android/app/sbrowser/intent_blocker/IntentBlockerSettings;
    .locals 1

    new-instance v0, Lcom/sec/android/app/sbrowser/intent_blocker/IntentBlockerSettings;

    invoke-direct {v0}, Lcom/sec/android/app/sbrowser/intent_blocker/IntentBlockerSettings;-><init>()V

    return-object v0
.end method

.method public static getInstance()Lcom/sec/android/app/sbrowser/intent_blocker/IntentBlockerSettings;
    .locals 2

    new-instance v0, Lcom/sec/android/app/sbrowser/homepage/a;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/sec/android/app/sbrowser/homepage/a;-><init>(I)V

    const-class v1, Lcom/sec/android/app/sbrowser/intent_blocker/IntentBlockerSettings;

    invoke-static {v1, v0}, Lcom/sec/android/app/sbrowser/common/singleton/SingletonFactory;->getOrCreate(Ljava/lang/Class;Lcom/sec/android/app/sbrowser/common/function/Supplier;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/intent_blocker/IntentBlockerSettings;

    return-object v0
.end method

.method private static synthetic lambda$getBackgroundImportanceValues$0(Ljava/util/List;Ljava/lang/String;)V
    .locals 1

    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "error format :"

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "IntentBlockerSettings"

    invoke-static {p1, p0}, Lcom/sec/android/app/sbrowser/common/blockers/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public getBackgroundImportanceValues()Ljava/util/List;
    .locals 3
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    const-string v0, "125,400,230"

    const-string v1, "pref_intent_blocker_background_importance_values"

    invoke-virtual {p0, v1, v0}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->getPersistedString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Landroid/text/TextUtils$SimpleStringSplitter;

    const/16 v2, 0x2c

    invoke-direct {v1, v2}, Landroid/text/TextUtils$SimpleStringSplitter;-><init>(C)V

    invoke-virtual {v1, p0}, Landroid/text/TextUtils$SimpleStringSplitter;->setString(Ljava/lang/String;)V

    new-instance p0, Lcom/sec/android/app/sbrowser/intent_blocker/a;

    const/4 v2, 0x1

    invoke-direct {p0, v0, v2}, Lcom/sec/android/app/sbrowser/intent_blocker/a;-><init>(Ljava/util/AbstractCollection;I)V

    invoke-interface {v1, p0}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    :cond_0
    return-object v0
.end method

.method public getNotifyBackgroundExceptions()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    const-string v1, "pref_intent_blocker_notify_background_exceptions"

    invoke-virtual {p0, v1, v0}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->getPersistedStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public isNotifyBackgroundCallerEnabled()Z
    .locals 2

    const-string v0, "pref_intent_blocker_notify_background_caller"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->getPersistedBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public setBackgroundImportanceValues(Ljava/lang/String;)V
    .locals 1

    const-string v0, "pref_intent_blocker_background_importance_values"

    invoke-virtual {p0, v0, p1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->persistString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setNotifyBackgroundCallerEnabled(Ljava/lang/Boolean;)V
    .locals 1

    const-string v0, "pref_intent_blocker_notify_background_caller"

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0, v0, p1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->persistBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public setNotifyBackgroundExceptions(Ljava/util/Set;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "pref_intent_blocker_notify_background_exceptions"

    invoke-virtual {p0, v0, p1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/BrowserPreferences;->persistStringSet(Ljava/lang/String;Ljava/util/Set;)V

    return-void
.end method
