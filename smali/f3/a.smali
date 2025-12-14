.class public final enum Lf3/a;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field private static final synthetic $VALUES:[Lf3/a;

.field public static final enum EXPONENTIAL:Lf3/a;

.field public static final enum LINEAR:Lf3/a;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lf3/a;

    const-string v1, "EXPONENTIAL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lf3/a;->EXPONENTIAL:Lf3/a;

    new-instance v1, Lf3/a;

    const-string v2, "LINEAR"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lf3/a;->LINEAR:Lf3/a;

    filled-new-array {v0, v1}, [Lf3/a;

    move-result-object v0

    sput-object v0, Lf3/a;->$VALUES:[Lf3/a;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lf3/a;
    .locals 1

    const-class v0, Lf3/a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lf3/a;

    return-object p0
.end method

.method public static values()[Lf3/a;
    .locals 1

    sget-object v0, Lf3/a;->$VALUES:[Lf3/a;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lf3/a;

    return-object v0
.end method
