.class public final enum LY7/k;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field private static final synthetic $VALUES:[LY7/k;

.field public static final enum ANNIVERSARY:LY7/k;

.field public static final enum CUSTOM:LY7/k;

.field public static final enum OTHER:LY7/k;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, LY7/k;

    const-string v1, "CUSTOM"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, LY7/k;->CUSTOM:LY7/k;

    new-instance v1, LY7/k;

    const-string v2, "ANNIVERSARY"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v1, LY7/k;->ANNIVERSARY:LY7/k;

    new-instance v2, LY7/k;

    const-string v3, "OTHER"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v2, LY7/k;->OTHER:LY7/k;

    filled-new-array {v0, v1, v2}, [LY7/k;

    move-result-object v0

    sput-object v0, LY7/k;->$VALUES:[LY7/k;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)LY7/k;
    .locals 1

    const-class v0, LY7/k;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, LY7/k;

    return-object p0
.end method

.method public static values()[LY7/k;
    .locals 1

    sget-object v0, LY7/k;->$VALUES:[LY7/k;

    invoke-virtual {v0}, [LY7/k;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LY7/k;

    return-object v0
.end method
