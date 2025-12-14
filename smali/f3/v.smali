.class public final enum Lf3/v;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field private static final synthetic $VALUES:[Lf3/v;

.field public static final enum CONNECTED:Lf3/v;

.field public static final enum METERED:Lf3/v;

.field public static final enum NOT_REQUIRED:Lf3/v;

.field public static final enum NOT_ROAMING:Lf3/v;

.field public static final enum TEMPORARILY_UNMETERED:Lf3/v;
    .annotation build Landroidx/annotation/RequiresApi;
    .end annotation
.end field

.field public static final enum UNMETERED:Lf3/v;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    new-instance v0, Lf3/v;

    const-string v1, "NOT_REQUIRED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lf3/v;->NOT_REQUIRED:Lf3/v;

    new-instance v1, Lf3/v;

    const-string v2, "CONNECTED"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lf3/v;->CONNECTED:Lf3/v;

    new-instance v2, Lf3/v;

    const-string v3, "UNMETERED"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lf3/v;->UNMETERED:Lf3/v;

    new-instance v3, Lf3/v;

    const-string v4, "NOT_ROAMING"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lf3/v;->NOT_ROAMING:Lf3/v;

    new-instance v4, Lf3/v;

    const-string v5, "METERED"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lf3/v;->METERED:Lf3/v;

    new-instance v5, Lf3/v;

    const-string v6, "TEMPORARILY_UNMETERED"

    const/4 v7, 0x5

    invoke-direct {v5, v6, v7}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lf3/v;->TEMPORARILY_UNMETERED:Lf3/v;

    filled-new-array/range {v0 .. v5}, [Lf3/v;

    move-result-object v0

    sput-object v0, Lf3/v;->$VALUES:[Lf3/v;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lf3/v;
    .locals 1

    const-class v0, Lf3/v;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lf3/v;

    return-object p0
.end method

.method public static values()[Lf3/v;
    .locals 1

    sget-object v0, Lf3/v;->$VALUES:[Lf3/v;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lf3/v;

    return-object v0
.end method
