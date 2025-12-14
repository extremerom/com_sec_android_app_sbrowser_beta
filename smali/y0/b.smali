.class public final enum Ly0/b;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field private static final synthetic $VALUES:[Ly0/b;

.field public static final enum Impulse:Ly0/b;

.field public static final enum Lsq2:Ly0/b;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Ly0/b;

    const-string v1, "Lsq2"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ly0/b;->Lsq2:Ly0/b;

    new-instance v1, Ly0/b;

    const-string v2, "Impulse"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v1, Ly0/b;->Impulse:Ly0/b;

    filled-new-array {v0, v1}, [Ly0/b;

    move-result-object v0

    sput-object v0, Ly0/b;->$VALUES:[Ly0/b;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Ly0/b;
    .locals 1

    const-class v0, Ly0/b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Ly0/b;

    return-object p0
.end method

.method public static values()[Ly0/b;
    .locals 1

    sget-object v0, Ly0/b;->$VALUES:[Ly0/b;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ly0/b;

    return-object v0
.end method
