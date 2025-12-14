.class public final enum Lf3/E;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field private static final synthetic $VALUES:[Lf3/E;

.field public static final enum BLOCKED:Lf3/E;

.field public static final enum CANCELLED:Lf3/E;

.field public static final enum ENQUEUED:Lf3/E;

.field public static final enum FAILED:Lf3/E;

.field public static final enum RUNNING:Lf3/E;

.field public static final enum SUCCEEDED:Lf3/E;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    new-instance v0, Lf3/E;

    const-string v1, "ENQUEUED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lf3/E;->ENQUEUED:Lf3/E;

    new-instance v1, Lf3/E;

    const-string v2, "RUNNING"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lf3/E;->RUNNING:Lf3/E;

    new-instance v2, Lf3/E;

    const-string v3, "SUCCEEDED"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lf3/E;->SUCCEEDED:Lf3/E;

    new-instance v3, Lf3/E;

    const-string v4, "FAILED"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lf3/E;->FAILED:Lf3/E;

    new-instance v4, Lf3/E;

    const-string v5, "BLOCKED"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lf3/E;->BLOCKED:Lf3/E;

    new-instance v5, Lf3/E;

    const-string v6, "CANCELLED"

    const/4 v7, 0x5

    invoke-direct {v5, v6, v7}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lf3/E;->CANCELLED:Lf3/E;

    filled-new-array/range {v0 .. v5}, [Lf3/E;

    move-result-object v0

    sput-object v0, Lf3/E;->$VALUES:[Lf3/E;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lf3/E;
    .locals 1

    const-class v0, Lf3/E;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lf3/E;

    return-object p0
.end method

.method public static values()[Lf3/E;
    .locals 1

    sget-object v0, Lf3/E;->$VALUES:[Lf3/E;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lf3/E;

    return-object v0
.end method


# virtual methods
.method public final a()Z
    .locals 1

    sget-object v0, Lf3/E;->SUCCEEDED:Lf3/E;

    if-eq p0, v0, :cond_1

    sget-object v0, Lf3/E;->FAILED:Lf3/E;

    if-eq p0, v0, :cond_1

    sget-object v0, Lf3/E;->CANCELLED:Lf3/E;

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method
