.class public Lio/grpc/c;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final c:Ljava/util/logging/Logger;

.field public static final d:Lio/grpc/c;


# instance fields
.field public final a:LJ7/c;

.field public final b:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-class v0, Lio/grpc/c;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lio/grpc/c;->c:Ljava/util/logging/Logger;

    new-instance v0, LJ7/c;

    const/4 v1, 0x0

    const/16 v2, 0x11

    invoke-direct {v0, v2, v1}, LJ7/c;-><init>(ILjava/lang/Object;)V

    new-instance v2, Lio/grpc/c;

    invoke-direct {v2, v1, v0}, Lio/grpc/c;-><init>(Lio/grpc/c;LJ7/c;)V

    sput-object v2, Lio/grpc/c;->d:Lio/grpc/c;

    return-void
.end method

.method public constructor <init>(Lio/grpc/c;LJ7/c;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lio/grpc/c;->a:LJ7/c;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    iget p1, p1, Lio/grpc/c;->b:I

    add-int/lit8 p1, p1, 0x1

    :goto_0
    iput p1, p0, Lio/grpc/c;->b:I

    const/16 p0, 0x3e8

    if-ne p1, p0, :cond_1

    sget-object p0, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    new-instance p1, Ljava/lang/Exception;

    invoke-direct {p1}, Ljava/lang/Exception;-><init>()V

    sget-object p2, Lio/grpc/c;->c:Ljava/util/logging/Logger;

    const-string v0, "Context ancestry chain length is abnormally long. This suggests an error in application code. Length exceeded: 1000"

    invoke-virtual {p2, p0, v0, p1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    return-void
.end method
