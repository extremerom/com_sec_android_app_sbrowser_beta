.class public final Lcom/sec/android/app/sbrowser/common/livedata/SharedPreferenceEnabledStringListLiveData;
.super Landroidx/lifecycle/X;
.source "SourceFile"


# annotations
.annotation build Landroidx/compose/runtime/internal/StabilityInferred;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/lifecycle/X;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0007\u0018\u00002\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00030\u00020\u0001B!\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0006\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\u0015\u0010\n\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u0002H\u0002\u00a2\u0006\u0004\u0008\n\u0010\u000bJ\u000f\u0010\r\u001a\u00020\u000cH\u0014\u00a2\u0006\u0004\u0008\r\u0010\u000eJ\u000f\u0010\u000f\u001a\u00020\u000cH\u0014\u00a2\u0006\u0004\u0008\u000f\u0010\u000eR\u0014\u0010\u0005\u001a\u00020\u00048\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0005\u0010\u0010R\u0014\u0010\u0006\u001a\u00020\u00038\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0006\u0010\u0011R\u0014\u0010\u0007\u001a\u00020\u00038\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0007\u0010\u0011R\u0014\u0010\u0013\u001a\u00020\u00128\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0013\u0010\u0014\u00a8\u0006\u0015"
    }
    d2 = {
        "Lcom/sec/android/app/sbrowser/common/livedata/SharedPreferenceEnabledStringListLiveData;",
        "Landroidx/lifecycle/X;",
        "",
        "",
        "Landroid/content/SharedPreferences;",
        "sharedPrefs",
        "categoryPrefix",
        "categoryOrderKey",
        "<init>",
        "(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;)V",
        "getCategoryList",
        "()Ljava/util/List;",
        "Ldb/r;",
        "onActive",
        "()V",
        "onInactive",
        "Landroid/content/SharedPreferences;",
        "Ljava/lang/String;",
        "Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;",
        "preferenceChangeListener",
        "Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;",
        "SBrowser_highendBetaGlobal64Release"
    }
    k = 0x1
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
.end annotation


# instance fields
.field private final categoryOrderKey:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final categoryPrefix:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final preferenceChangeListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final sharedPrefs:Landroid/content/SharedPreferences;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1    # Landroid/content/SharedPreferences;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "sharedPrefs"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "categoryPrefix"

    invoke-static {p2, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "categoryOrderKey"

    invoke-static {p3, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Landroidx/lifecycle/S;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/common/livedata/SharedPreferenceEnabledStringListLiveData;->sharedPrefs:Landroid/content/SharedPreferences;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/common/livedata/SharedPreferenceEnabledStringListLiveData;->categoryPrefix:Ljava/lang/String;

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/common/livedata/SharedPreferenceEnabledStringListLiveData;->categoryOrderKey:Ljava/lang/String;

    new-instance p1, Lcom/sec/android/app/sbrowser/common/livedata/c;

    invoke-direct {p1, p0}, Lcom/sec/android/app/sbrowser/common/livedata/c;-><init>(Lcom/sec/android/app/sbrowser/common/livedata/SharedPreferenceEnabledStringListLiveData;)V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/common/livedata/SharedPreferenceEnabledStringListLiveData;->preferenceChangeListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    return-void
.end method

.method public static synthetic b(Lcom/sec/android/app/sbrowser/common/livedata/SharedPreferenceEnabledStringListLiveData;Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/sec/android/app/sbrowser/common/livedata/SharedPreferenceEnabledStringListLiveData;->preferenceChangeListener$lambda$0(Lcom/sec/android/app/sbrowser/common/livedata/SharedPreferenceEnabledStringListLiveData;Landroid/content/SharedPreferences;Ljava/lang/String;)V

    return-void
.end method

.method private final getCategoryList()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/livedata/SharedPreferenceEnabledStringListLiveData;->sharedPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v0

    const-string v1, "getAll(...)"

    invoke-static {v0, v1}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    invoke-static {v4}, Ltb/k;->c(Ljava/lang/Object;)V

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/common/livedata/SharedPreferenceEnabledStringListLiveData;->categoryPrefix:Ljava/lang/String;

    invoke-static {v4, v6, v3}, LKc/r;->n(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_0

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v5, v3}, Ltb/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ltb/k;->c(Ljava/lang/Object;)V

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/common/livedata/SharedPreferenceEnabledStringListLiveData;->categoryPrefix:Ljava/lang/String;

    invoke-static {v2, v4}, LKc/k;->D(Ljava/lang/String;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/livedata/SharedPreferenceEnabledStringListLiveData;->categoryOrderKey:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_3

    goto :goto_3

    :cond_3
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/livedata/SharedPreferenceEnabledStringListLiveData;->sharedPrefs:Landroid/content/SharedPreferences;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/livedata/SharedPreferenceEnabledStringListLiveData;->categoryOrderKey:Ljava/lang/String;

    const-string v2, ""

    invoke-interface {v1, p0, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v1, ","

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1, v3, v3}, LKc/k;->H(Ljava/lang/CharSequence;[Ljava/lang/String;ZI)Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/lang/Iterable;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_4
    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_5
    move-object v0, v1

    :goto_3
    return-object v0
.end method

.method private static final preferenceChangeListener$lambda$0(Lcom/sec/android/app/sbrowser/common/livedata/SharedPreferenceEnabledStringListLiveData;Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/common/livedata/SharedPreferenceEnabledStringListLiveData;->getCategoryList()Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/lifecycle/X;->postValue(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public onActive()V
    .locals 2

    invoke-super {p0}, Landroidx/lifecycle/S;->onActive()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/livedata/SharedPreferenceEnabledStringListLiveData;->sharedPrefs:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/livedata/SharedPreferenceEnabledStringListLiveData;->preferenceChangeListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/common/livedata/SharedPreferenceEnabledStringListLiveData;->getCategoryList()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/lifecycle/X;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public onInactive()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/livedata/SharedPreferenceEnabledStringListLiveData;->sharedPrefs:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/livedata/SharedPreferenceEnabledStringListLiveData;->preferenceChangeListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    invoke-super {p0}, Landroidx/lifecycle/S;->onInactive()V

    return-void
.end method
