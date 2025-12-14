.class Lorg/chromium/base/shared_preferences/StrictPreferenceKeyChecker;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/base/shared_preferences/PreferenceKeyChecker;


# annotations
.annotation build Lorg/chromium/build/annotations/CheckDiscard;
.end annotation

.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation


# static fields
.field private static final DYNAMIC_PART_PATTERN:Ljava/util/regex/Pattern;


# instance fields
.field private final mRegistry:Lorg/chromium/base/shared_preferences/PreferenceKeyRegistry;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "[^\\*]+"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/chromium/base/shared_preferences/StrictPreferenceKeyChecker;->DYNAMIC_PART_PATTERN:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(Lorg/chromium/base/shared_preferences/PreferenceKeyRegistry;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lorg/chromium/build/NullUtil;->assumeNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/chromium/base/shared_preferences/PreferenceKeyRegistry;

    iput-object p1, p0, Lorg/chromium/base/shared_preferences/StrictPreferenceKeyChecker;->mRegistry:Lorg/chromium/base/shared_preferences/PreferenceKeyRegistry;

    return-void
.end method

.method private isKeyInUse(Ljava/lang/String;)Z
    .locals 6

    iget-object v0, p0, Lorg/chromium/base/shared_preferences/StrictPreferenceKeyChecker;->mRegistry:Lorg/chromium/base/shared_preferences/PreferenceKeyRegistry;

    iget-object v0, v0, Lorg/chromium/base/shared_preferences/PreferenceKeyRegistry;->mLegacyFormatKeys:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lorg/chromium/base/shared_preferences/StrictPreferenceKeyChecker;->mRegistry:Lorg/chromium/base/shared_preferences/PreferenceKeyRegistry;

    iget-object v0, v0, Lorg/chromium/base/shared_preferences/PreferenceKeyRegistry;->mLegacyPrefixes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/chromium/base/shared_preferences/KeyPrefix;

    invoke-virtual {v2, p1}, Lorg/chromium/base/shared_preferences/KeyPrefix;->hasGenerated(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    return v1

    :cond_2
    const-string v0, "\\."

    const/4 v2, 0x4

    invoke-virtual {p1, v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    array-length v3, v0

    const/4 v4, 0x3

    const/4 v5, 0x0

    if-ge v3, v4, :cond_3

    return v5

    :cond_3
    array-length v3, v0

    if-lt v3, v2, :cond_5

    aget-object p1, v0, v5

    aget-object v1, v0, v1

    const/4 v2, 0x2

    aget-object v2, v0, v2

    const-string v3, "*"

    filled-new-array {p1, v1, v2, v3}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    const-string v1, "."

    invoke-static {v1, p1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lorg/chromium/base/shared_preferences/StrictPreferenceKeyChecker;->mRegistry:Lorg/chromium/base/shared_preferences/PreferenceKeyRegistry;

    iget-object p0, p0, Lorg/chromium/base/shared_preferences/PreferenceKeyRegistry;->mKeysInUse:Ljava/util/HashSet;

    invoke-virtual {p0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4

    return v5

    :cond_4
    aget-object p0, v0, v4

    sget-object p1, Lorg/chromium/base/shared_preferences/StrictPreferenceKeyChecker;->DYNAMIC_PART_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {p1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/regex/Matcher;->matches()Z

    move-result p0

    return p0

    :cond_5
    iget-object p0, p0, Lorg/chromium/base/shared_preferences/StrictPreferenceKeyChecker;->mRegistry:Lorg/chromium/base/shared_preferences/PreferenceKeyRegistry;

    iget-object p0, p0, Lorg/chromium/base/shared_preferences/PreferenceKeyRegistry;->mKeysInUse:Ljava/util/HashSet;

    invoke-virtual {p0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public checkIsKeyInUse(Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0, p1}, Lorg/chromium/base/shared_preferences/StrictPreferenceKeyChecker;->isKeyInUse(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lorg/chromium/base/shared_preferences/StrictPreferenceKeyChecker;->mRegistry:Lorg/chromium/base/shared_preferences/PreferenceKeyRegistry;

    invoke-static {p0}, Lorg/chromium/base/shared_preferences/KnownPreferenceKeyRegistries;->onRegistryUsed(Lorg/chromium/base/shared_preferences/PreferenceKeyRegistry;)V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "SharedPreferences key \""

    const-string v1, "\" is not registered in PreferenceKeyRegistry.mKeysInUse"

    invoke-static {v0, p1, v1}, LV0/c;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public checkIsPrefixInUse(Lorg/chromium/base/shared_preferences/KeyPrefix;)V
    .locals 2

    iget-object v0, p0, Lorg/chromium/base/shared_preferences/StrictPreferenceKeyChecker;->mRegistry:Lorg/chromium/base/shared_preferences/PreferenceKeyRegistry;

    iget-object v0, v0, Lorg/chromium/base/shared_preferences/PreferenceKeyRegistry;->mLegacyPrefixes:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lorg/chromium/base/shared_preferences/StrictPreferenceKeyChecker;->mRegistry:Lorg/chromium/base/shared_preferences/PreferenceKeyRegistry;

    iget-object p0, p0, Lorg/chromium/base/shared_preferences/PreferenceKeyRegistry;->mKeysInUse:Ljava/util/HashSet;

    invoke-virtual {p1}, Lorg/chromium/base/shared_preferences/KeyPrefix;->pattern()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    return-void

    :cond_1
    new-instance p0, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SharedPreferences KeyPrefix \""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/chromium/base/shared_preferences/KeyPrefix;->pattern()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\" is not registered in PreferenceKeyRegistry.mKeysInUse()"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
