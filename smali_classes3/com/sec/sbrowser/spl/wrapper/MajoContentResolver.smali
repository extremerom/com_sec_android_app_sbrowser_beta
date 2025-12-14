.class public Lcom/sec/sbrowser/spl/wrapper/MajoContentResolver;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static sSemGetSyncStatusInfo:Lcom/sec/sbrowser/spl/util/ReflectMethod$O;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/sec/sbrowser/spl/util/ReflectMethod$O;

    const-class v1, Landroid/accounts/Account;

    const-class v2, Ljava/lang/String;

    filled-new-array {v1, v2}, [Ljava/lang/Class;

    move-result-object v1

    const-class v2, Landroid/content/ContentResolver;

    const-string v3, "semGetSyncStatusInfo"

    invoke-direct {v0, v2, v3, v1}, Lcom/sec/sbrowser/spl/util/ReflectMethod$O;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    sput-object v0, Lcom/sec/sbrowser/spl/wrapper/MajoContentResolver;->sSemGetSyncStatusInfo:Lcom/sec/sbrowser/spl/util/ReflectMethod$O;

    return-void
.end method

.method public static reflectSucceeded(Ljava/lang/String;)Z
    .locals 1
    .annotation build Lcom/sec/sbrowser/spl/test/VisibleForTesting;
    .end annotation

    const-string v0, "semGetSyncStatusInfo"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    sget-object p0, Lcom/sec/sbrowser/spl/wrapper/MajoContentResolver;->sSemGetSyncStatusInfo:Lcom/sec/sbrowser/spl/util/ReflectMethod$O;

    invoke-virtual {p0}, Lcom/sec/sbrowser/spl/util/ReflectMethod;->reflectSucceeded()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static semGetSyncStatusInfo(Landroid/accounts/Account;Ljava/lang/String;)Lcom/sec/sbrowser/spl/wrapper/SemSyncStatusInfo;
    .locals 3

    new-instance v0, Lcom/sec/sbrowser/spl/wrapper/SemSyncStatusInfo;

    sget-object v1, Lcom/sec/sbrowser/spl/wrapper/MajoContentResolver;->sSemGetSyncStatusInfo:Lcom/sec/sbrowser/spl/util/ReflectMethod$O;

    sget-object v2, Lcom/sec/sbrowser/spl/util/ReflectBase;->STATIC:Lcom/sec/sbrowser/spl/util/ReflectBase;

    filled-new-array {p0, p1}, [Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v1, v2, p0}, Lcom/sec/sbrowser/spl/util/ReflectMethod$O;->invoke(Lcom/sec/sbrowser/spl/util/ReflectBase;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/sec/sbrowser/spl/wrapper/SemSyncStatusInfo;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method
