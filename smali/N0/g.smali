.class public final enum LN0/g;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field private static final synthetic $VALUES:[LN0/g;

.field public static final enum FIXED:LN0/g;

.field public static final enum MATCH_CONSTRAINT:LN0/g;

.field public static final enum MATCH_PARENT:LN0/g;

.field public static final enum WRAP_CONTENT:LN0/g;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, LN0/g;

    const-string v1, "FIXED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, LN0/g;->FIXED:LN0/g;

    new-instance v1, LN0/g;

    const-string v2, "WRAP_CONTENT"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v1, LN0/g;->WRAP_CONTENT:LN0/g;

    new-instance v2, LN0/g;

    const-string v3, "MATCH_CONSTRAINT"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v2, LN0/g;->MATCH_CONSTRAINT:LN0/g;

    new-instance v3, LN0/g;

    const-string v4, "MATCH_PARENT"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v3, LN0/g;->MATCH_PARENT:LN0/g;

    filled-new-array {v0, v1, v2, v3}, [LN0/g;

    move-result-object v0

    sput-object v0, LN0/g;->$VALUES:[LN0/g;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)LN0/g;
    .locals 1

    const-class v0, LN0/g;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, LN0/g;

    return-object p0
.end method

.method public static values()[LN0/g;
    .locals 1

    sget-object v0, LN0/g;->$VALUES:[LN0/g;

    invoke-virtual {v0}, [LN0/g;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LN0/g;

    return-object v0
.end method
