.class public final enum Lxc/k;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field private static final synthetic $VALUES:[Lxc/k;

.field public static final enum COMPUTING:Lxc/k;

.field public static final enum NOT_COMPUTED:Lxc/k;

.field public static final enum RECURSION_WAS_DETECTED:Lxc/k;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lxc/k;

    const-string v1, "NOT_COMPUTED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lxc/k;->NOT_COMPUTED:Lxc/k;

    new-instance v1, Lxc/k;

    const-string v2, "COMPUTING"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lxc/k;->COMPUTING:Lxc/k;

    new-instance v2, Lxc/k;

    const-string v3, "RECURSION_WAS_DETECTED"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lxc/k;->RECURSION_WAS_DETECTED:Lxc/k;

    filled-new-array {v0, v1, v2}, [Lxc/k;

    move-result-object v0

    sput-object v0, Lxc/k;->$VALUES:[Lxc/k;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lxc/k;
    .locals 1

    const-class v0, Lxc/k;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lxc/k;

    return-object p0
.end method

.method public static values()[Lxc/k;
    .locals 1

    sget-object v0, Lxc/k;->$VALUES:[Lxc/k;

    invoke-virtual {v0}, [Lxc/k;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lxc/k;

    return-object v0
.end method
