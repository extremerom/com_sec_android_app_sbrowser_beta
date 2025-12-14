.class public final enum Lbb/a;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field private static final synthetic $VALUES:[Lbb/a;

.field public static final enum ALWAYS:Lbb/a;

.field public static final enum MAYBE:Lbb/a;

.field public static final enum NEVER:Lbb/a;

.field public static final enum UNKNOWN:Lbb/a;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lbb/a;

    const-string v1, "ALWAYS"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lbb/a;->ALWAYS:Lbb/a;

    new-instance v1, Lbb/a;

    const-string v2, "UNKNOWN"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lbb/a;->UNKNOWN:Lbb/a;

    new-instance v2, Lbb/a;

    const-string v3, "MAYBE"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lbb/a;->MAYBE:Lbb/a;

    new-instance v3, Lbb/a;

    const-string v4, "NEVER"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lbb/a;->NEVER:Lbb/a;

    filled-new-array {v0, v1, v2, v3}, [Lbb/a;

    move-result-object v0

    sput-object v0, Lbb/a;->$VALUES:[Lbb/a;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lbb/a;
    .locals 1

    const-class v0, Lbb/a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lbb/a;

    return-object p0
.end method

.method public static values()[Lbb/a;
    .locals 1

    sget-object v0, Lbb/a;->$VALUES:[Lbb/a;

    invoke-virtual {v0}, [Lbb/a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lbb/a;

    return-object v0
.end method
