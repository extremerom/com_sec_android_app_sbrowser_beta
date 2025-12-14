.class public final enum LB0/x;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field private static final synthetic $VALUES:[LB0/x;

.field public static final enum InLayoutBlock:LB0/x;

.field public static final enum InMeasureBlock:LB0/x;

.field public static final enum NotUsed:LB0/x;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, LB0/x;

    const-string v1, "InMeasureBlock"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, LB0/x;->InMeasureBlock:LB0/x;

    new-instance v1, LB0/x;

    const-string v2, "InLayoutBlock"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v1, LB0/x;->InLayoutBlock:LB0/x;

    new-instance v2, LB0/x;

    const-string v3, "NotUsed"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v2, LB0/x;->NotUsed:LB0/x;

    filled-new-array {v0, v1, v2}, [LB0/x;

    move-result-object v0

    sput-object v0, LB0/x;->$VALUES:[LB0/x;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)LB0/x;
    .locals 1

    const-class v0, LB0/x;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, LB0/x;

    return-object p0
.end method

.method public static values()[LB0/x;
    .locals 1

    sget-object v0, LB0/x;->$VALUES:[LB0/x;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LB0/x;

    return-object v0
.end method
