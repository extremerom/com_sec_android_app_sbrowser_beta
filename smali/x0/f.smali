.class public final enum Lx0/f;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field private static final synthetic $VALUES:[Lx0/f;

.field public static final enum Dispatching:Lx0/f;

.field public static final enum NotDispatching:Lx0/f;

.field public static final enum Unknown:Lx0/f;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lx0/f;

    const-string v1, "Unknown"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lx0/f;->Unknown:Lx0/f;

    new-instance v1, Lx0/f;

    const-string v2, "Dispatching"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lx0/f;->Dispatching:Lx0/f;

    new-instance v2, Lx0/f;

    const-string v3, "NotDispatching"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lx0/f;->NotDispatching:Lx0/f;

    filled-new-array {v0, v1, v2}, [Lx0/f;

    move-result-object v0

    sput-object v0, Lx0/f;->$VALUES:[Lx0/f;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lx0/f;
    .locals 1

    const-class v0, Lx0/f;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lx0/f;

    return-object p0
.end method

.method public static values()[Lx0/f;
    .locals 1

    sget-object v0, Lx0/f;->$VALUES:[Lx0/f;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lx0/f;

    return-object v0
.end method
