.class public final enum Lcom/google/common/util/concurrent/t;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Executor;


# static fields
.field private static final synthetic $VALUES:[Lcom/google/common/util/concurrent/t;

.field public static final enum INSTANCE:Lcom/google/common/util/concurrent/t;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/google/common/util/concurrent/t;

    const-string v1, "INSTANCE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/common/util/concurrent/t;->INSTANCE:Lcom/google/common/util/concurrent/t;

    filled-new-array {v0}, [Lcom/google/common/util/concurrent/t;

    move-result-object v0

    sput-object v0, Lcom/google/common/util/concurrent/t;->$VALUES:[Lcom/google/common/util/concurrent/t;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/common/util/concurrent/t;
    .locals 1

    const-class v0, Lcom/google/common/util/concurrent/t;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/common/util/concurrent/t;

    return-object p0
.end method

.method public static values()[Lcom/google/common/util/concurrent/t;
    .locals 1

    sget-object v0, Lcom/google/common/util/concurrent/t;->$VALUES:[Lcom/google/common/util/concurrent/t;

    invoke-virtual {v0}, [Lcom/google/common/util/concurrent/t;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/common/util/concurrent/t;

    return-object v0
.end method


# virtual methods
.method public final execute(Ljava/lang/Runnable;)V
    .locals 0

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 0

    const-string p0, "MoreExecutors.directExecutor()"

    return-object p0
.end method
