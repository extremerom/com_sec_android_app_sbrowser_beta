.class public Lorg/chromium/components/policy/CombinedPolicyProvider;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/components/policy/CombinedPolicyProvider$Natives;,
        Lorg/chromium/components/policy/CombinedPolicyProvider$PolicyChangeListener;
    }
.end annotation

.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation

.annotation runtime Lorg/jni_zero/JNINamespace;
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static sInstance:Lorg/chromium/components/policy/CombinedPolicyProvider;


# instance fields
.field private final mCachedPolicies:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation
.end field

.field private mNativeCombinedPolicyProvider:J

.field private mPolicyCacheProvider:Lorg/chromium/components/policy/PolicyCacheProvider;

.field private final mPolicyChangeListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/chromium/components/policy/CombinedPolicyProvider$PolicyChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field private mPolicyConverter:Lorg/chromium/components/policy/PolicyConverter;

.field private final mPolicyProviders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/chromium/components/policy/PolicyProvider;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/chromium/components/policy/CombinedPolicyProvider;->mPolicyProviders:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/chromium/components/policy/CombinedPolicyProvider;->mCachedPolicies:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/chromium/components/policy/CombinedPolicyProvider;->mPolicyChangeListeners:Ljava/util/List;

    return-void
.end method

.method public static get()Lorg/chromium/components/policy/CombinedPolicyProvider;
    .locals 1

    sget-object v0, Lorg/chromium/components/policy/CombinedPolicyProvider;->sInstance:Lorg/chromium/components/policy/CombinedPolicyProvider;

    if-nez v0, :cond_0

    new-instance v0, Lorg/chromium/components/policy/CombinedPolicyProvider;

    invoke-direct {v0}, Lorg/chromium/components/policy/CombinedPolicyProvider;-><init>()V

    sput-object v0, Lorg/chromium/components/policy/CombinedPolicyProvider;->sInstance:Lorg/chromium/components/policy/CombinedPolicyProvider;

    :cond_0
    sget-object v0, Lorg/chromium/components/policy/CombinedPolicyProvider;->sInstance:Lorg/chromium/components/policy/CombinedPolicyProvider;

    return-object v0
.end method

.method public static linkNative(JLorg/chromium/components/policy/PolicyConverter;)Lorg/chromium/components/policy/CombinedPolicyProvider;
    .locals 1
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    invoke-static {}, Lorg/chromium/base/ThreadUtils;->assertOnUiThread()V

    invoke-static {}, Lorg/chromium/components/policy/CombinedPolicyProvider;->get()Lorg/chromium/components/policy/CombinedPolicyProvider;

    move-result-object v0

    invoke-direct {v0, p0, p1, p2}, Lorg/chromium/components/policy/CombinedPolicyProvider;->linkNativeInternal(JLorg/chromium/components/policy/PolicyConverter;)V

    invoke-static {}, Lorg/chromium/components/policy/CombinedPolicyProvider;->get()Lorg/chromium/components/policy/CombinedPolicyProvider;

    move-result-object p0

    return-object p0
.end method

.method private linkNativeInternal(JLorg/chromium/components/policy/PolicyConverter;)V
    .locals 2

    iput-wide p1, p0, Lorg/chromium/components/policy/CombinedPolicyProvider;->mNativeCombinedPolicyProvider:J

    iput-object p3, p0, Lorg/chromium/components/policy/CombinedPolicyProvider;->mPolicyConverter:Lorg/chromium/components/policy/PolicyConverter;

    const-wide/16 v0, 0x0

    cmp-long p1, p1, v0

    if-nez p1, :cond_0

    return-void

    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "#linkNativeInternal() "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p2, p0, Lorg/chromium/components/policy/CombinedPolicyProvider;->mPolicyProviders:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "CombinedPProvider"

    invoke-static {p2, p1}, Lorg/chromium/base/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lorg/chromium/components/policy/CombinedPolicyProvider;->mPolicyProviders:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_1

    new-instance p1, Lorg/chromium/components/policy/PolicyCacheProvider;

    invoke-direct {p1}, Lorg/chromium/components/policy/PolicyCacheProvider;-><init>()V

    iput-object p1, p0, Lorg/chromium/components/policy/CombinedPolicyProvider;->mPolicyCacheProvider:Lorg/chromium/components/policy/PolicyCacheProvider;

    const/4 p2, 0x0

    invoke-virtual {p1, p0, p2}, Lorg/chromium/components/policy/PolicyProvider;->setManagerAndSource(Lorg/chromium/components/policy/CombinedPolicyProvider;I)V

    :cond_1
    invoke-virtual {p0}, Lorg/chromium/components/policy/CombinedPolicyProvider;->refreshPolicies()V

    return-void
.end method


# virtual methods
.method public isPolicyCacheEnabled()Z
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    iget-object p0, p0, Lorg/chromium/components/policy/CombinedPolicyProvider;->mPolicyCacheProvider:Lorg/chromium/components/policy/PolicyCacheProvider;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public onSettingsAvailable(ILandroid/os/Bundle;)V
    .locals 6

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "#onSettingsAvailable() "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CombinedPProvider"

    invoke-static {v1, v0}, Lorg/chromium/base/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-wide v2, p0, Lorg/chromium/components/policy/CombinedPolicyProvider;->mNativeCombinedPolicyProvider:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lorg/chromium/components/policy/CombinedPolicyProvider;->isPolicyCacheEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    filled-new-array {p2}, [Landroid/os/Bundle;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lorg/chromium/components/policy/CombinedPolicyProvider;->mCachedPolicies:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lorg/chromium/components/policy/CombinedPolicyProvider;->mCachedPolicies:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/os/Bundle;

    if-nez p2, :cond_2

    return-void

    :cond_3
    iget-object p1, p0, Lorg/chromium/components/policy/CombinedPolicyProvider;->mCachedPolicies:Ljava/util/List;

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/os/Bundle;

    invoke-virtual {p2}, Landroid/os/BaseBundle;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, "#setPolicy() "

    const-string v4, " -> "

    invoke-static {v3, v2, v4}, LV0/c;->q(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p2, v2}, Landroid/os/BaseBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lorg/chromium/base/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lorg/chromium/components/policy/CombinedPolicyProvider;->mPolicyConverter:Lorg/chromium/components/policy/PolicyConverter;

    invoke-static {v3}, Lorg/chromium/build/NullUtil;->assumeNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/chromium/components/policy/PolicyConverter;

    invoke-virtual {p2, v2}, Landroid/os/BaseBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Lorg/chromium/components/policy/PolicyConverter;->setPolicy(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_1

    :cond_5
    const-string p1, "#flushPolicies()"

    invoke-static {v1, p1}, Lorg/chromium/base/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lorg/chromium/components/policy/CombinedPolicyProviderJni;->get()Lorg/chromium/components/policy/CombinedPolicyProvider$Natives;

    move-result-object p1

    iget-wide v0, p0, Lorg/chromium/components/policy/CombinedPolicyProvider;->mNativeCombinedPolicyProvider:J

    invoke-static {}, Lorg/chromium/components/policy/CombinedPolicyProvider;->get()Lorg/chromium/components/policy/CombinedPolicyProvider;

    move-result-object p0

    invoke-interface {p1, v0, v1, p0}, Lorg/chromium/components/policy/CombinedPolicyProvider$Natives;->flushPolicies(JLorg/chromium/components/policy/CombinedPolicyProvider;)V

    return-void
.end method

.method public refreshPolicies()V
    .locals 3
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    invoke-virtual {p0}, Lorg/chromium/components/policy/CombinedPolicyProvider;->isPolicyCacheEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lorg/chromium/components/policy/CombinedPolicyProvider;->mPolicyCacheProvider:Lorg/chromium/components/policy/PolicyCacheProvider;

    invoke-static {p0}, Lorg/chromium/build/NullUtil;->assumeNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/chromium/components/policy/PolicyCacheProvider;

    invoke-virtual {p0}, Lorg/chromium/components/policy/PolicyCacheProvider;->refresh()V

    return-void

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lorg/chromium/components/policy/CombinedPolicyProvider;->mCachedPolicies:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lorg/chromium/components/policy/CombinedPolicyProvider;->mCachedPolicies:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lorg/chromium/components/policy/CombinedPolicyProvider;->mPolicyProviders:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/components/policy/PolicyProvider;

    invoke-virtual {v0}, Lorg/chromium/components/policy/PolicyProvider;->refresh()V

    goto :goto_1

    :cond_2
    return-void
.end method

.method public registerProvider(Lorg/chromium/components/policy/PolicyProvider;)V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "#registerProvider() provider:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " isPolicyCacheEnabled:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/chromium/components/policy/CombinedPolicyProvider;->isPolicyCacheEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " policyProvidersSize:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/chromium/components/policy/CombinedPolicyProvider;->mPolicyProviders:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CombinedPProvider"

    invoke-static {v1, v0}, Lorg/chromium/base/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/chromium/components/policy/CombinedPolicyProvider;->isPolicyCacheEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iput-object v1, p0, Lorg/chromium/components/policy/CombinedPolicyProvider;->mPolicyCacheProvider:Lorg/chromium/components/policy/PolicyCacheProvider;

    :cond_0
    iget-object v0, p0, Lorg/chromium/components/policy/CombinedPolicyProvider;->mPolicyProviders:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lorg/chromium/components/policy/CombinedPolicyProvider;->mCachedPolicies:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lorg/chromium/components/policy/CombinedPolicyProvider;->mPolicyProviders:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p1, p0, v0}, Lorg/chromium/components/policy/PolicyProvider;->setManagerAndSource(Lorg/chromium/components/policy/CombinedPolicyProvider;I)V

    iget-wide v0, p0, Lorg/chromium/components/policy/CombinedPolicyProvider;->mNativeCombinedPolicyProvider:J

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-eqz p0, :cond_1

    invoke-virtual {p1}, Lorg/chromium/components/policy/PolicyProvider;->refresh()V

    :cond_1
    return-void
.end method
