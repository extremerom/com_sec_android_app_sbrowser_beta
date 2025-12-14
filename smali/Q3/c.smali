.class public final enum LQ3/c;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field private static final synthetic $VALUES:[LQ3/c;

.field public static final enum NONE:LQ3/c;

.field public static final enum SOURCE:LQ3/c;

.field public static final enum TRANSFORMED:LQ3/c;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, LQ3/c;

    const-string v1, "SOURCE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, LQ3/c;->SOURCE:LQ3/c;

    new-instance v1, LQ3/c;

    const-string v2, "TRANSFORMED"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v1, LQ3/c;->TRANSFORMED:LQ3/c;

    new-instance v2, LQ3/c;

    const-string v3, "NONE"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v2, LQ3/c;->NONE:LQ3/c;

    filled-new-array {v0, v1, v2}, [LQ3/c;

    move-result-object v0

    sput-object v0, LQ3/c;->$VALUES:[LQ3/c;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)LQ3/c;
    .locals 1

    const-class v0, LQ3/c;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, LQ3/c;

    return-object p0
.end method

.method public static values()[LQ3/c;
    .locals 1

    sget-object v0, LQ3/c;->$VALUES:[LQ3/c;

    invoke-virtual {v0}, [LQ3/c;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LQ3/c;

    return-object v0
.end method
