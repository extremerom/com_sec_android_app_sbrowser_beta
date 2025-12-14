.class public abstract Lcom/sec/android/app/sbrowser/common/livedata/SharedPreferenceLiveData;
.super Landroidx/lifecycle/X;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Landroidx/lifecycle/X;"
    }
.end annotation


# instance fields
.field private final mDefaultValue:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final mKey:Ljava/lang/String;

.field private final mPreferenceChangeListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

.field private final mSharedPreferences:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .param p1    # Landroid/content/SharedPreferences;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/SharedPreferences;",
            "Ljava/lang/String;",
            "TT;)V"
        }
    .end annotation

    invoke-direct {p0}, Landroidx/lifecycle/S;-><init>()V

    new-instance v0, Lcom/sec/android/app/sbrowser/common/livedata/SharedPreferenceLiveData$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/common/livedata/SharedPreferenceLiveData$1;-><init>(Lcom/sec/android/app/sbrowser/common/livedata/SharedPreferenceLiveData;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/common/livedata/SharedPreferenceLiveData;->mPreferenceChangeListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/common/livedata/SharedPreferenceLiveData;->mSharedPreferences:Landroid/content/SharedPreferences;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/common/livedata/SharedPreferenceLiveData;->mKey:Ljava/lang/String;

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/common/livedata/SharedPreferenceLiveData;->mDefaultValue:Ljava/lang/Object;

    return-void
.end method

.method public static bridge synthetic b(Lcom/sec/android/app/sbrowser/common/livedata/SharedPreferenceLiveData;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/livedata/SharedPreferenceLiveData;->mDefaultValue:Ljava/lang/Object;

    return-object p0
.end method

.method public static bridge synthetic c(Lcom/sec/android/app/sbrowser/common/livedata/SharedPreferenceLiveData;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/livedata/SharedPreferenceLiveData;->mKey:Ljava/lang/String;

    return-object p0
.end method

.method public static bridge synthetic d(Lcom/sec/android/app/sbrowser/common/livedata/SharedPreferenceLiveData;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/common/livedata/SharedPreferenceLiveData;->updateValue(Ljava/lang/Object;)V

    return-void
.end method

.method private updateValue(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    invoke-virtual {p0}, Landroidx/lifecycle/S;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Landroidx/lifecycle/X;->postValue(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public getSharedPreferences()Landroid/content/SharedPreferences;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/livedata/SharedPreferenceLiveData;->mSharedPreferences:Landroid/content/SharedPreferences;

    return-object p0
.end method

.method public abstract getValueFromPreferences(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "TT;)TT;"
        }
    .end annotation
.end method

.method public onActive()V
    .locals 2

    invoke-super {p0}, Landroidx/lifecycle/S;->onActive()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/livedata/SharedPreferenceLiveData;->mKey:Ljava/lang/String;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/livedata/SharedPreferenceLiveData;->mDefaultValue:Ljava/lang/Object;

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/sbrowser/common/livedata/SharedPreferenceLiveData;->getValueFromPreferences(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/lifecycle/X;->setValue(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/livedata/SharedPreferenceLiveData;->mSharedPreferences:Landroid/content/SharedPreferences;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/livedata/SharedPreferenceLiveData;->mPreferenceChangeListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    return-void
.end method

.method public onInactive()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/livedata/SharedPreferenceLiveData;->mSharedPreferences:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/livedata/SharedPreferenceLiveData;->mPreferenceChangeListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    invoke-super {p0}, Landroidx/lifecycle/S;->onInactive()V

    return-void
.end method
