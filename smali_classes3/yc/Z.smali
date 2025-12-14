.class public final enum Lyc/Z;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field private static final synthetic $ENTRIES:Llb/a;

.field private static final synthetic $VALUES:[Lyc/Z;

.field public static final enum COMMON:Lyc/Z;

.field public static final enum SUPERTYPE:Lyc/Z;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lyc/Z;

    const-string v1, "SUPERTYPE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lyc/Z;->SUPERTYPE:Lyc/Z;

    new-instance v1, Lyc/Z;

    const-string v2, "COMMON"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lyc/Z;->COMMON:Lyc/Z;

    filled-new-array {v0, v1}, [Lyc/Z;

    move-result-object v0

    sput-object v0, Lyc/Z;->$VALUES:[Lyc/Z;

    invoke-static {v0}, LP6/b;->b([Ljava/lang/Enum;)Llb/b;

    move-result-object v0

    sput-object v0, Lyc/Z;->$ENTRIES:Llb/a;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lyc/Z;
    .locals 1

    const-class v0, Lyc/Z;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lyc/Z;

    return-object p0
.end method

.method public static values()[Lyc/Z;
    .locals 1

    sget-object v0, Lyc/Z;->$VALUES:[Lyc/Z;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lyc/Z;

    return-object v0
.end method
