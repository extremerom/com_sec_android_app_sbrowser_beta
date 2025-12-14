.class public final enum LN3/o;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field private static final synthetic $VALUES:[LN3/o;

.field public static final enum HIGH:LN3/o;

.field public static final enum IMMEDIATE:LN3/o;

.field public static final enum LOW:LN3/o;

.field public static final enum NORMAL:LN3/o;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, LN3/o;

    const-string v1, "LOW"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, LN3/o;->LOW:LN3/o;

    new-instance v1, LN3/o;

    const-string v2, "NORMAL"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v1, LN3/o;->NORMAL:LN3/o;

    new-instance v2, LN3/o;

    const-string v3, "HIGH"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v2, LN3/o;->HIGH:LN3/o;

    new-instance v3, LN3/o;

    const-string v4, "IMMEDIATE"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v3, LN3/o;->IMMEDIATE:LN3/o;

    filled-new-array {v0, v1, v2, v3}, [LN3/o;

    move-result-object v0

    sput-object v0, LN3/o;->$VALUES:[LN3/o;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)LN3/o;
    .locals 1

    const-class v0, LN3/o;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, LN3/o;

    return-object p0
.end method

.method public static values()[LN3/o;
    .locals 1

    sget-object v0, LN3/o;->$VALUES:[LN3/o;

    invoke-virtual {v0}, [LN3/o;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LN3/o;

    return-object v0
.end method
