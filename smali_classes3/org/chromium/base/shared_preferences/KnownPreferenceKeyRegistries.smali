.class public Lorg/chromium/base/shared_preferences/KnownPreferenceKeyRegistries;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lorg/chromium/build/annotations/CheckDiscard;
.end annotation

.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static sKnownRegistries:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lorg/chromium/base/shared_preferences/PreferenceKeyRegistry;",
            ">;"
        }
    .end annotation
.end field

.field private static sRegistriesUsedBeforeInitialization:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lorg/chromium/base/shared_preferences/PreferenceKeyRegistry;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lorg/chromium/base/shared_preferences/KnownPreferenceKeyRegistries;->sRegistriesUsedBeforeInitialization:Ljava/util/Set;

    return-void
.end method

.method public static onRegistryUsed(Lorg/chromium/base/shared_preferences/PreferenceKeyRegistry;)V
    .locals 3

    sget-boolean v0, Lorg/chromium/build/BuildConfig;->ENABLE_ASSERTS:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lorg/chromium/base/shared_preferences/KnownPreferenceKeyRegistries;->sKnownRegistries:Ljava/util/Set;

    if-nez v0, :cond_1

    sget-object v0, Lorg/chromium/base/shared_preferences/KnownPreferenceKeyRegistries;->sRegistriesUsedBeforeInitialization:Ljava/util/Set;

    invoke-static {v0}, Lorg/chromium/build/NullUtil;->assumeNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "An unknown registry was used, PreferenceKeyRegistries must be declared as known in AllPreferenceKeyRegistries: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/chromium/base/shared_preferences/PreferenceKeyRegistry;->toDebugString()Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/CharSequence;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const-string p0, ","

    invoke-static {p0, v1}, Ljava/lang/String;->join(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    :goto_0
    return-void
.end method
