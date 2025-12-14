.class public final enum Lyc/I;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field private static final synthetic $ENTRIES:Llb/a;

.field private static final synthetic $VALUES:[Lyc/I;

.field public static final enum CHECK_ONLY_LOWER:Lyc/I;

.field public static final enum CHECK_SUBTYPE_AND_LOWER:Lyc/I;

.field public static final enum SKIP_LOWER:Lyc/I;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lyc/I;

    const-string v1, "CHECK_ONLY_LOWER"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lyc/I;->CHECK_ONLY_LOWER:Lyc/I;

    new-instance v1, Lyc/I;

    const-string v2, "CHECK_SUBTYPE_AND_LOWER"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lyc/I;->CHECK_SUBTYPE_AND_LOWER:Lyc/I;

    new-instance v2, Lyc/I;

    const-string v3, "SKIP_LOWER"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lyc/I;->SKIP_LOWER:Lyc/I;

    filled-new-array {v0, v1, v2}, [Lyc/I;

    move-result-object v0

    sput-object v0, Lyc/I;->$VALUES:[Lyc/I;

    invoke-static {v0}, LP6/b;->b([Ljava/lang/Enum;)Llb/b;

    move-result-object v0

    sput-object v0, Lyc/I;->$ENTRIES:Llb/a;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lyc/I;
    .locals 1

    const-class v0, Lyc/I;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lyc/I;

    return-object p0
.end method

.method public static values()[Lyc/I;
    .locals 1

    sget-object v0, Lyc/I;->$VALUES:[Lyc/I;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lyc/I;

    return-object v0
.end method
