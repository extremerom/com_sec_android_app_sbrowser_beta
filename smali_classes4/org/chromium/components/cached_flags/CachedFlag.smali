.class public Lorg/chromium/components/cached_flags/CachedFlag;
.super Lorg/chromium/base/Flag;
.source "SourceFile"


# annotations
.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation


# instance fields
.field private mPreferenceKey:Ljava/lang/String;


# virtual methods
.method public getSharedPreferenceKey()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lorg/chromium/components/cached_flags/CachedFlag;->mPreferenceKey:Ljava/lang/String;

    if-nez v0, :cond_0

    sget-object v0, Lorg/chromium/components/cached_flags/CachedFlagsSharedPreferences;->FLAGS_CACHED:Lorg/chromium/base/shared_preferences/KeyPrefix;

    iget-object v1, p0, Lorg/chromium/base/Flag;->mFeatureName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/chromium/base/shared_preferences/KeyPrefix;->createKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/components/cached_flags/CachedFlag;->mPreferenceKey:Ljava/lang/String;

    :cond_0
    iget-object p0, p0, Lorg/chromium/components/cached_flags/CachedFlag;->mPreferenceKey:Ljava/lang/String;

    return-object p0
.end method

.method public writeCacheValueToEditor(Landroid/content/SharedPreferences$Editor;Z)V
    .locals 0

    invoke-virtual {p0}, Lorg/chromium/components/cached_flags/CachedFlag;->getSharedPreferenceKey()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p0, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    return-void
.end method
