.class public final enum Lmc/m;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field private static final synthetic $ENTRIES:Llb/a;

.field private static final synthetic $VALUES:[Lmc/m;

.field public static final enum COMMON_SUPER_TYPE:Lmc/m;

.field public static final enum INTERSECTION_TYPE:Lmc/m;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lmc/m;

    const-string v1, "COMMON_SUPER_TYPE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmc/m;->COMMON_SUPER_TYPE:Lmc/m;

    new-instance v1, Lmc/m;

    const-string v2, "INTERSECTION_TYPE"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lmc/m;->INTERSECTION_TYPE:Lmc/m;

    filled-new-array {v0, v1}, [Lmc/m;

    move-result-object v0

    sput-object v0, Lmc/m;->$VALUES:[Lmc/m;

    invoke-static {v0}, LP6/b;->b([Ljava/lang/Enum;)Llb/b;

    move-result-object v0

    sput-object v0, Lmc/m;->$ENTRIES:Llb/a;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lmc/m;
    .locals 1

    const-class v0, Lmc/m;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lmc/m;

    return-object p0
.end method

.method public static values()[Lmc/m;
    .locals 1

    sget-object v0, Lmc/m;->$VALUES:[Lmc/m;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lmc/m;

    return-object v0
.end method
