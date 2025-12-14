.class public final enum Lvd/a;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field private static final synthetic $VALUES:[Lvd/a;

.field public static final enum BASIC:Lvd/a;

.field public static final enum BODY:Lvd/a;

.field public static final enum HEADERS:Lvd/a;

.field public static final enum NONE:Lvd/a;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lvd/a;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lvd/a;->NONE:Lvd/a;

    new-instance v1, Lvd/a;

    const-string v2, "BASIC"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lvd/a;->BASIC:Lvd/a;

    new-instance v2, Lvd/a;

    const-string v3, "HEADERS"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lvd/a;->HEADERS:Lvd/a;

    new-instance v3, Lvd/a;

    const-string v4, "BODY"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lvd/a;->BODY:Lvd/a;

    filled-new-array {v0, v1, v2, v3}, [Lvd/a;

    move-result-object v0

    sput-object v0, Lvd/a;->$VALUES:[Lvd/a;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lvd/a;
    .locals 1

    const-class v0, Lvd/a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lvd/a;

    return-object p0
.end method

.method public static values()[Lvd/a;
    .locals 1

    sget-object v0, Lvd/a;->$VALUES:[Lvd/a;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lvd/a;

    return-object v0
.end method
