.class Lcom/sec/android/app/sbrowser/common/knox/KnoxUrlFilter$UrlFilterDelegate;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/terrace/browser/net/TerraceUrlFilter$TerraceUrlFilterDelegate$Delegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/common/knox/KnoxUrlFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UrlFilterDelegate"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isBlockedUrl(Ljava/lang/String;)Z
    .locals 10

    const-string v0, "Opening url "

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/knox/KnoxPolicy;->firewallPolicyIsUrlBlocked(Ljava/lang/String;)Z

    move-result v1

    sput-boolean v1, Lcom/sec/android/app/sbrowser/common/knox/KnoxUrlFilter;->sIsUrlBlocked:Z

    const/4 v2, 0x0

    :try_start_0
    sget-object v3, Lcom/sec/sbrowser/spl/wrapper/AuditLog;->NOTICE:Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

    invoke-virtual {v3}, Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;->get()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v4

    sget-object v3, Lcom/sec/sbrowser/spl/wrapper/AuditLog;->AUDIT_LOG_GROUP_APPLICATION:Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

    invoke-virtual {v3}, Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;->get()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v5

    xor-int/lit8 v6, v1, 0x1

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v7

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v8

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v1, :cond_0

    const-string p1, " failed - blocked"

    goto :goto_0

    :cond_0
    const-string p1, " succeeded"

    :goto_0
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static/range {v4 .. v9}, Lcom/sec/android/app/sbrowser/common/knox/KnoxPolicy;->auditLogPolicySendAuditLog(IIZILjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/sec/sbrowser/spl/util/FallbackException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :catch_0
    return v2
.end method

.method public isUrlFilterSupported()Z
    .locals 0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/knox/KnoxPolicy;->isMdmPolicySupported()Z

    move-result p0

    return p0
.end method
