.class public final enum Lyd/a;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field private static final synthetic $VALUES:[Lyd/a;

.field public static final enum LENIENT:Lyd/a;

.field public static final enum STRICT:Lyd/a;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lyd/a;

    const-string v1, "STRICT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lyd/a;->STRICT:Lyd/a;

    new-instance v1, Lyd/a;

    const-string v2, "LENIENT"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lyd/a;->LENIENT:Lyd/a;

    filled-new-array {v0, v1}, [Lyd/a;

    move-result-object v0

    sput-object v0, Lyd/a;->$VALUES:[Lyd/a;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lyd/a;
    .locals 1

    const-class v0, Lyd/a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lyd/a;

    return-object p0
.end method

.method public static values()[Lyd/a;
    .locals 1

    sget-object v0, Lyd/a;->$VALUES:[Lyd/a;

    invoke-virtual {v0}, [Lyd/a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lyd/a;

    return-object v0
.end method
