.class public Lcom/sec/android/app/sbrowser/quickaccess/domain/RefererDomainUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final REFERER_URL_SET:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Ljava/util/HashSet;

    const-string v1, "https://r-stg.internet.apps.samsung.com"

    const-string v2, "https://r.internet.apps.samsung.com"

    const-string v3, "https://r-dev.internet.apps.samsung.com"

    filled-new-array {v3, v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/sec/android/app/sbrowser/quickaccess/domain/RefererDomainUtils;->REFERER_URL_SET:Ljava/util/Set;

    return-void
.end method

.method public static startsWithRefererUrl(Ljava/lang/String;)Z
    .locals 2

    sget-object v0, Lcom/sec/android/app/sbrowser/quickaccess/domain/RefererDomainUtils;->REFERER_URL_SET:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method
