.class public final enum LR2/h;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field private static final synthetic $VALUES:[LR2/h;

.field public static final enum AES256_GCM:LR2/h;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, LR2/h;

    const-string v1, "AES256_GCM"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, LR2/h;->AES256_GCM:LR2/h;

    filled-new-array {v0}, [LR2/h;

    move-result-object v0

    sput-object v0, LR2/h;->$VALUES:[LR2/h;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)LR2/h;
    .locals 1

    const-class v0, LR2/h;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, LR2/h;

    return-object p0
.end method

.method public static values()[LR2/h;
    .locals 1

    sget-object v0, LR2/h;->$VALUES:[LR2/h;

    invoke-virtual {v0}, [LR2/h;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LR2/h;

    return-object v0
.end method
