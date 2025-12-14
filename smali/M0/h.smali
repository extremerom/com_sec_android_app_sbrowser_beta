.class public final enum LM0/h;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field private static final synthetic $VALUES:[LM0/h;

.field public static final enum CONSTANT:LM0/h;

.field public static final enum ERROR:LM0/h;

.field public static final enum SLACK:LM0/h;

.field public static final enum UNKNOWN:LM0/h;

.field public static final enum UNRESTRICTED:LM0/h;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, LM0/h;

    const-string v1, "UNRESTRICTED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, LM0/h;->UNRESTRICTED:LM0/h;

    new-instance v1, LM0/h;

    const-string v2, "CONSTANT"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v1, LM0/h;->CONSTANT:LM0/h;

    new-instance v2, LM0/h;

    const-string v3, "SLACK"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v2, LM0/h;->SLACK:LM0/h;

    new-instance v3, LM0/h;

    const-string v4, "ERROR"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v3, LM0/h;->ERROR:LM0/h;

    new-instance v4, LM0/h;

    const-string v5, "UNKNOWN"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v4, LM0/h;->UNKNOWN:LM0/h;

    filled-new-array {v0, v1, v2, v3, v4}, [LM0/h;

    move-result-object v0

    sput-object v0, LM0/h;->$VALUES:[LM0/h;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)LM0/h;
    .locals 1

    const-class v0, LM0/h;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, LM0/h;

    return-object p0
.end method

.method public static values()[LM0/h;
    .locals 1

    sget-object v0, LM0/h;->$VALUES:[LM0/h;

    invoke-virtual {v0}, [LM0/h;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LM0/h;

    return-object v0
.end method
