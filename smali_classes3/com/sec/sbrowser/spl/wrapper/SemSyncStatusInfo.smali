.class public Lcom/sec/sbrowser/spl/wrapper/SemSyncStatusInfo;
.super Lcom/sec/sbrowser/spl/util/ReflectBase;
.source "SourceFile"


# static fields
.field private static sLastFailureTime:Lcom/sec/sbrowser/spl/util/ReflectField$L;

.field private static sLastSuccessTime:Lcom/sec/sbrowser/spl/util/ReflectField$L;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string v0, "android.content.SemSyncStatusInfo"

    invoke-static {v0}, Lcom/sec/sbrowser/spl/util/ReflectBase;->classForName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    new-instance v1, Lcom/sec/sbrowser/spl/util/ReflectField$L;

    const-string v2, "lastSuccessTime"

    invoke-direct {v1, v0, v2}, Lcom/sec/sbrowser/spl/util/ReflectField$L;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v1, Lcom/sec/sbrowser/spl/wrapper/SemSyncStatusInfo;->sLastSuccessTime:Lcom/sec/sbrowser/spl/util/ReflectField$L;

    new-instance v1, Lcom/sec/sbrowser/spl/util/ReflectField$L;

    const-string v2, "lastFailureTime"

    invoke-direct {v1, v0, v2}, Lcom/sec/sbrowser/spl/util/ReflectField$L;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v1, Lcom/sec/sbrowser/spl/wrapper/SemSyncStatusInfo;->sLastFailureTime:Lcom/sec/sbrowser/spl/util/ReflectField$L;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/sbrowser/spl/util/ReflectBase;-><init>(Ljava/lang/Object;)V

    return-void
.end method

.method public static reflectSucceeded(Ljava/lang/String;)Z
    .locals 1
    .annotation build Lcom/sec/sbrowser/spl/test/VisibleForTesting;
    .end annotation

    const-string v0, "lastSuccessTime"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p0, Lcom/sec/sbrowser/spl/wrapper/SemSyncStatusInfo;->sLastSuccessTime:Lcom/sec/sbrowser/spl/util/ReflectField$L;

    invoke-virtual {p0}, Lcom/sec/sbrowser/spl/util/ReflectField;->reflectSucceeded()Z

    move-result p0

    return p0

    :cond_0
    const-string v0, "lastFailureTime"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    sget-object p0, Lcom/sec/sbrowser/spl/wrapper/SemSyncStatusInfo;->sLastFailureTime:Lcom/sec/sbrowser/spl/util/ReflectField$L;

    invoke-virtual {p0}, Lcom/sec/sbrowser/spl/util/ReflectField;->reflectSucceeded()Z

    move-result p0

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public getLastFailureTime()J
    .locals 2

    sget-object v0, Lcom/sec/sbrowser/spl/wrapper/SemSyncStatusInfo;->sLastFailureTime:Lcom/sec/sbrowser/spl/util/ReflectField$L;

    invoke-virtual {v0, p0}, Lcom/sec/sbrowser/spl/util/ReflectField$L;->get(Lcom/sec/sbrowser/spl/util/ReflectBase;)Ljava/lang/Long;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public getLastSuccessTime()J
    .locals 2

    sget-object v0, Lcom/sec/sbrowser/spl/wrapper/SemSyncStatusInfo;->sLastSuccessTime:Lcom/sec/sbrowser/spl/util/ReflectField$L;

    invoke-virtual {v0, p0}, Lcom/sec/sbrowser/spl/util/ReflectField$L;->get(Lcom/sec/sbrowser/spl/util/ReflectBase;)Ljava/lang/Long;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public isBaseInstanceNull()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/sbrowser/spl/util/ReflectBase;->mInstance:Ljava/lang/Object;

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
