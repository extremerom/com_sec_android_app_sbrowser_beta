.class public final enum Lu/a;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field private static final synthetic $VALUES:[Lu/a;

.field public static final enum MODULE_LIBRARIES:Lu/a;

.field public static final enum PRIVILEGED_APPS:Lu/a;

.field public static final enum SYSTEM_SERVER:Lu/a;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lu/a;

    const-string v1, "PRIVILEGED_APPS"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lu/a;->PRIVILEGED_APPS:Lu/a;

    new-instance v1, Lu/a;

    const-string v2, "MODULE_LIBRARIES"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lu/a;->MODULE_LIBRARIES:Lu/a;

    new-instance v2, Lu/a;

    const-string v3, "SYSTEM_SERVER"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lu/a;->SYSTEM_SERVER:Lu/a;

    filled-new-array {v0, v1, v2}, [Lu/a;

    move-result-object v0

    sput-object v0, Lu/a;->$VALUES:[Lu/a;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lu/a;
    .locals 1

    const-class v0, Lu/a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lu/a;

    return-object p0
.end method

.method public static values()[Lu/a;
    .locals 1

    sget-object v0, Lu/a;->$VALUES:[Lu/a;

    invoke-virtual {v0}, [Lu/a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lu/a;

    return-object v0
.end method
