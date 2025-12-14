.class public final enum La0/j0;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field private static final synthetic $VALUES:[La0/j0;

.field public static final enum Idle:La0/j0;

.field public static final enum Inactive:La0/j0;

.field public static final enum InactivePendingWork:La0/j0;

.field public static final enum PendingWork:La0/j0;

.field public static final enum ShutDown:La0/j0;

.field public static final enum ShuttingDown:La0/j0;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    new-instance v0, La0/j0;

    const-string v1, "ShutDown"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, La0/j0;->ShutDown:La0/j0;

    new-instance v1, La0/j0;

    const-string v2, "ShuttingDown"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v1, La0/j0;->ShuttingDown:La0/j0;

    new-instance v2, La0/j0;

    const-string v3, "Inactive"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v2, La0/j0;->Inactive:La0/j0;

    new-instance v3, La0/j0;

    const-string v4, "InactivePendingWork"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v3, La0/j0;->InactivePendingWork:La0/j0;

    new-instance v4, La0/j0;

    const-string v5, "Idle"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v4, La0/j0;->Idle:La0/j0;

    new-instance v5, La0/j0;

    const-string v6, "PendingWork"

    const/4 v7, 0x5

    invoke-direct {v5, v6, v7}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v5, La0/j0;->PendingWork:La0/j0;

    filled-new-array/range {v0 .. v5}, [La0/j0;

    move-result-object v0

    sput-object v0, La0/j0;->$VALUES:[La0/j0;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)La0/j0;
    .locals 1

    const-class v0, La0/j0;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, La0/j0;

    return-object p0
.end method

.method public static values()[La0/j0;
    .locals 1

    sget-object v0, La0/j0;->$VALUES:[La0/j0;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [La0/j0;

    return-object v0
.end method
