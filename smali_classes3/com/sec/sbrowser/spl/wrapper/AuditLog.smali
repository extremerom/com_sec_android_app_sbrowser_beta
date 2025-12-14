.class public Lcom/sec/sbrowser/spl/wrapper/AuditLog;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final AUDIT_LOG_GROUP_APPLICATION:Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

.field public static final NOTICE:Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string v0, "android.sec.enterprise.auditlog.AuditLog"

    invoke-static {v0}, Lcom/sec/sbrowser/spl/util/ReflectBase;->classForName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    new-instance v1, Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

    const-string v2, "NOTICE"

    invoke-direct {v1, v0, v2}, Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v1, Lcom/sec/sbrowser/spl/wrapper/AuditLog;->NOTICE:Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

    new-instance v1, Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

    const-string v2, "AUDIT_LOG_GROUP_APPLICATION"

    invoke-direct {v1, v0, v2}, Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v1, Lcom/sec/sbrowser/spl/wrapper/AuditLog;->AUDIT_LOG_GROUP_APPLICATION:Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

    return-void
.end method
