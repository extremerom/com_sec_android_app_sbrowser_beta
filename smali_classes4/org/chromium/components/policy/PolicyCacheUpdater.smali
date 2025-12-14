.class public Lorg/chromium/components/policy/PolicyCacheUpdater;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation

.annotation runtime Lorg/jni_zero/JNINamespace;
.end annotation


# static fields
.field static sPolicies:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Lorg/chromium/components/policy/PolicyCache$Type;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 10

    sget-object v0, Lorg/chromium/components/policy/PolicyCache$Type;->Integer:Lorg/chromium/components/policy/PolicyCache$Type;

    const-string v1, "BrowserSignin"

    invoke-static {v1, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v2

    const-string v1, "CloudManagementEnrollmentToken"

    sget-object v3, Lorg/chromium/components/policy/PolicyCache$Type;->String:Lorg/chromium/components/policy/PolicyCache$Type;

    invoke-static {v1, v3}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v3

    const-string v1, "ChromeVariations"

    invoke-static {v1, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v4

    const-string v1, "SafeSitesFilterBehavior"

    invoke-static {v1, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v5

    sget-object v0, Lorg/chromium/components/policy/PolicyCache$Type;->List:Lorg/chromium/components/policy/PolicyCache$Type;

    const-string v1, "URLAllowlist"

    invoke-static {v1, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v6

    const-string v1, "URLBlocklist"

    invoke-static {v1, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v7

    const-string v0, "FirstPartySetsEnabled"

    sget-object v1, Lorg/chromium/components/policy/PolicyCache$Type;->Boolean:Lorg/chromium/components/policy/PolicyCache$Type;

    invoke-static {v0, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v8

    const-string v0, "FirstPartySetsOverrides"

    sget-object v1, Lorg/chromium/components/policy/PolicyCache$Type;->Dict:Lorg/chromium/components/policy/PolicyCache$Type;

    invoke-static {v0, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v9

    filled-new-array/range {v2 .. v9}, [Landroid/util/Pair;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lorg/chromium/components/policy/PolicyCacheUpdater;->sPolicies:Ljava/util/List;

    return-void
.end method

.method public static cachePolicies(Lorg/chromium/components/policy/PolicyMap;)V
    .locals 2
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    invoke-static {}, Lorg/chromium/components/policy/PolicyCache;->get()Lorg/chromium/components/policy/PolicyCache;

    move-result-object v0

    sget-object v1, Lorg/chromium/components/policy/PolicyCacheUpdater;->sPolicies:Ljava/util/List;

    invoke-virtual {v0, p0, v1}, Lorg/chromium/components/policy/PolicyCache;->cachePolicies(Lorg/chromium/components/policy/PolicyMap;Ljava/util/List;)V

    return-void
.end method
