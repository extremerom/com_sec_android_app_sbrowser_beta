.class public final enum Lx7/c;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field private static final synthetic $VALUES:[Lx7/c;

.field public static final enum DEFAULT:Lx7/c;

.field public static final enum FIXED:Lx7/c;

.field public static final enum SIGNED:Lx7/c;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lx7/c;

    const-string v1, "DEFAULT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lx7/c;->DEFAULT:Lx7/c;

    new-instance v1, Lx7/c;

    const-string v2, "SIGNED"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lx7/c;->SIGNED:Lx7/c;

    new-instance v2, Lx7/c;

    const-string v3, "FIXED"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lx7/c;->FIXED:Lx7/c;

    filled-new-array {v0, v1, v2}, [Lx7/c;

    move-result-object v0

    sput-object v0, Lx7/c;->$VALUES:[Lx7/c;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lx7/c;
    .locals 1

    const-class v0, Lx7/c;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lx7/c;

    return-object p0
.end method

.method public static values()[Lx7/c;
    .locals 1

    sget-object v0, Lx7/c;->$VALUES:[Lx7/c;

    invoke-virtual {v0}, [Lx7/c;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lx7/c;

    return-object v0
.end method
