.class public final enum LY7/F;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field private static final synthetic $VALUES:[LY7/F;

.field public static final enum DPP:LY7/F;

.field public static final enum WIFI:LY7/F;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, LY7/F;

    const-string v1, "WIFI"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, LY7/F;->WIFI:LY7/F;

    new-instance v1, LY7/F;

    const-string v2, "DPP"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v1, LY7/F;->DPP:LY7/F;

    filled-new-array {v0, v1}, [LY7/F;

    move-result-object v0

    sput-object v0, LY7/F;->$VALUES:[LY7/F;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)LY7/F;
    .locals 1

    const-class v0, LY7/F;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, LY7/F;

    return-object p0
.end method

.method public static values()[LY7/F;
    .locals 1

    sget-object v0, LY7/F;->$VALUES:[LY7/F;

    invoke-virtual {v0}, [LY7/F;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LY7/F;

    return-object v0
.end method
