.class public final enum LE7/d;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field private static final synthetic $VALUES:[LE7/d;

.field public static final enum ATTEMPT_MIGRATION:LE7/d;

.field public static final enum NOT_GENERATED:LE7/d;

.field public static final enum REGISTERED:LE7/d;

.field public static final enum REGISTER_ERROR:LE7/d;

.field public static final enum UNREGISTERED:LE7/d;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, LE7/d;

    const-string v1, "ATTEMPT_MIGRATION"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, LE7/d;->ATTEMPT_MIGRATION:LE7/d;

    new-instance v1, LE7/d;

    const-string v2, "NOT_GENERATED"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v1, LE7/d;->NOT_GENERATED:LE7/d;

    new-instance v2, LE7/d;

    const-string v3, "UNREGISTERED"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v2, LE7/d;->UNREGISTERED:LE7/d;

    new-instance v3, LE7/d;

    const-string v4, "REGISTERED"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v3, LE7/d;->REGISTERED:LE7/d;

    new-instance v4, LE7/d;

    const-string v5, "REGISTER_ERROR"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v4, LE7/d;->REGISTER_ERROR:LE7/d;

    filled-new-array {v0, v1, v2, v3, v4}, [LE7/d;

    move-result-object v0

    sput-object v0, LE7/d;->$VALUES:[LE7/d;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)LE7/d;
    .locals 1

    const-class v0, LE7/d;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, LE7/d;

    return-object p0
.end method

.method public static values()[LE7/d;
    .locals 1

    sget-object v0, LE7/d;->$VALUES:[LE7/d;

    invoke-virtual {v0}, [LE7/d;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LE7/d;

    return-object v0
.end method
