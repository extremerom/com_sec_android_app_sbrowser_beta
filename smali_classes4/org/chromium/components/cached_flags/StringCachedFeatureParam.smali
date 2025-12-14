.class public Lorg/chromium/components/cached_flags/StringCachedFeatureParam;
.super Lorg/chromium/components/cached_flags/CachedFeatureParam;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/chromium/components/cached_flags/CachedFeatureParam<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation

.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation


# virtual methods
.method public getDefaultValue()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/chromium/base/FeatureParam;->mDefaultValue:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public writeCacheValueToEditor(Landroid/content/SharedPreferences$Editor;Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p0}, Lorg/chromium/components/cached_flags/CachedFeatureParam;->getSharedPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lorg/chromium/components/cached_flags/StringCachedFeatureParam;->getDefaultValue()Ljava/lang/String;

    move-result-object p2

    :cond_0
    invoke-interface {p1, v0, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    return-void
.end method
