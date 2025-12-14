.class public final enum Lq4/g;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field private static final synthetic $VALUES:[Lq4/g;

.field public static final enum CIRCLE:Lq4/g;

.field public static final enum DEFAULT:Lq4/g;

.field public static final enum EMPTY:Lq4/g;

.field public static final enum LINE:Lq4/g;

.field public static final enum NONE:Lq4/g;

.field public static final enum SQUARE:Lq4/g;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    new-instance v0, Lq4/g;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lq4/g;->NONE:Lq4/g;

    new-instance v1, Lq4/g;

    const-string v2, "EMPTY"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lq4/g;->EMPTY:Lq4/g;

    new-instance v2, Lq4/g;

    const-string v3, "DEFAULT"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lq4/g;->DEFAULT:Lq4/g;

    new-instance v3, Lq4/g;

    const-string v4, "SQUARE"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lq4/g;->SQUARE:Lq4/g;

    new-instance v4, Lq4/g;

    const-string v5, "CIRCLE"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lq4/g;->CIRCLE:Lq4/g;

    new-instance v5, Lq4/g;

    const-string v6, "LINE"

    const/4 v7, 0x5

    invoke-direct {v5, v6, v7}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lq4/g;->LINE:Lq4/g;

    filled-new-array/range {v0 .. v5}, [Lq4/g;

    move-result-object v0

    sput-object v0, Lq4/g;->$VALUES:[Lq4/g;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lq4/g;
    .locals 1

    const-class v0, Lq4/g;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lq4/g;

    return-object p0
.end method

.method public static values()[Lq4/g;
    .locals 1

    sget-object v0, Lq4/g;->$VALUES:[Lq4/g;

    invoke-virtual {v0}, [Lq4/g;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lq4/g;

    return-object v0
.end method
