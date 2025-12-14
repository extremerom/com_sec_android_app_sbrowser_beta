.class public final enum Lkc/m;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field private static final synthetic $VALUES:[Lkc/m;

.field public static final enum CONFLICT:Lkc/m;

.field public static final enum INCOMPATIBLE:Lkc/m;

.field public static final enum OVERRIDABLE:Lkc/m;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lkc/m;

    const-string v1, "OVERRIDABLE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lkc/m;->OVERRIDABLE:Lkc/m;

    new-instance v1, Lkc/m;

    const-string v2, "INCOMPATIBLE"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lkc/m;->INCOMPATIBLE:Lkc/m;

    new-instance v2, Lkc/m;

    const-string v3, "CONFLICT"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lkc/m;->CONFLICT:Lkc/m;

    filled-new-array {v0, v1, v2}, [Lkc/m;

    move-result-object v0

    sput-object v0, Lkc/m;->$VALUES:[Lkc/m;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lkc/m;
    .locals 1

    const-class v0, Lkc/m;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lkc/m;

    return-object p0
.end method

.method public static values()[Lkc/m;
    .locals 1

    sget-object v0, Lkc/m;->$VALUES:[Lkc/m;

    invoke-virtual {v0}, [Lkc/m;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lkc/m;

    return-object v0
.end method
