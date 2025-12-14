.class public final enum Luc/b;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field private static final synthetic $VALUES:[Luc/b;

.field public static final enum FUNCTION:Luc/b;

.field public static final enum PROPERTY:Luc/b;

.field public static final enum PROPERTY_GETTER:Luc/b;

.field public static final enum PROPERTY_SETTER:Luc/b;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Luc/b;

    const-string v1, "FUNCTION"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Luc/b;->FUNCTION:Luc/b;

    new-instance v1, Luc/b;

    const-string v2, "PROPERTY"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v1, Luc/b;->PROPERTY:Luc/b;

    new-instance v2, Luc/b;

    const-string v3, "PROPERTY_GETTER"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v2, Luc/b;->PROPERTY_GETTER:Luc/b;

    new-instance v3, Luc/b;

    const-string v4, "PROPERTY_SETTER"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v3, Luc/b;->PROPERTY_SETTER:Luc/b;

    filled-new-array {v0, v1, v2, v3}, [Luc/b;

    move-result-object v0

    sput-object v0, Luc/b;->$VALUES:[Luc/b;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Luc/b;
    .locals 1

    const-class v0, Luc/b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Luc/b;

    return-object p0
.end method

.method public static values()[Luc/b;
    .locals 1

    sget-object v0, Luc/b;->$VALUES:[Luc/b;

    invoke-virtual {v0}, [Luc/b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Luc/b;

    return-object v0
.end method
