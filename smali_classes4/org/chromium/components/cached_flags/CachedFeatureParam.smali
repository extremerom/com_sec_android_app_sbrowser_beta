.class public abstract Lorg/chromium/components/cached_flags/CachedFeatureParam;
.super Lorg/chromium/base/FeatureParam;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/components/cached_flags/CachedFeatureParam$FeatureParamType;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/chromium/base/FeatureParam<",
        "TT;>;"
    }
.end annotation

.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# virtual methods
.method public getSharedPreferenceKey()Ljava/lang/String;
    .locals 3

    sget-object v0, Lorg/chromium/components/cached_flags/CachedFlagsSharedPreferences;->FLAGS_FEATURE_PARAM_CACHED:Lorg/chromium/base/shared_preferences/KeyPrefix;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/chromium/base/FeatureParam;->getFeatureName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/chromium/base/FeatureParam;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lorg/chromium/base/shared_preferences/KeyPrefix;->createKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public abstract writeCacheValueToEditor(Landroid/content/SharedPreferences$Editor;Ljava/lang/String;)V
.end method
