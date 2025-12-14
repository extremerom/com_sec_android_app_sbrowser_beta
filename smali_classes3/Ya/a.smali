.class public abstract LYa/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/util/logging/Logger;

.field public static final b:LYa/b;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-class v0, LYa/a;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, LYa/a;->a:Ljava/util/logging/Logger;

    const-class v0, LYa/b;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    :try_start_0
    const-string v2, "io.opentelemetry.opencensusshim.OpenTelemetryContextManager"

    const/4 v3, 0x1

    invoke-static {v2, v3, v1}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1, v0}, LG5/F2;->c(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LYa/b;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string v2, "Couldn\'t load full implementation for OpenTelemetry context manager, now loading original implementation."

    sget-object v3, LYa/a;->a:Ljava/util/logging/Logger;

    invoke-virtual {v3, v1, v2, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance v0, LYa/b;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    :goto_0
    sput-object v0, LYa/a;->b:LYa/b;

    return-void
.end method

.method public static a()LI3/c;
    .locals 3

    sget-object v0, LYa/a;->b:LYa/b;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lio/grpc/c;->c:Ljava/util/logging/Logger;

    sget-object v0, Lio/grpc/a;->a:Lio/grpc/b;

    check-cast v0, Lio/grpc/g;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lio/grpc/g;->b:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/grpc/c;

    if-nez v0, :cond_0

    sget-object v0, Lio/grpc/c;->d:Lio/grpc/c;

    :cond_0
    if-nez v0, :cond_1

    sget-object v0, Lio/grpc/c;->d:Lio/grpc/c;

    :cond_1
    new-instance v1, LI3/c;

    const/16 v2, 0xd

    invoke-direct {v1, v2, v0}, LI3/c;-><init>(ILjava/lang/Object;)V

    return-object v1
.end method
