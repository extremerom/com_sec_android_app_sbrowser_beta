.class public final enum LQ/s;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field private static final synthetic $VALUES:[LQ/s;

.field public static final enum Default:LQ/s;

.field public static final enum PreventUserInput:LQ/s;

.field public static final enum UserInput:LQ/s;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, LQ/s;

    const-string v1, "Default"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, LQ/s;->Default:LQ/s;

    new-instance v1, LQ/s;

    const-string v2, "UserInput"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v1, LQ/s;->UserInput:LQ/s;

    new-instance v2, LQ/s;

    const-string v3, "PreventUserInput"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v2, LQ/s;->PreventUserInput:LQ/s;

    filled-new-array {v0, v1, v2}, [LQ/s;

    move-result-object v0

    sput-object v0, LQ/s;->$VALUES:[LQ/s;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)LQ/s;
    .locals 1

    const-class v0, LQ/s;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, LQ/s;

    return-object p0
.end method

.method public static values()[LQ/s;
    .locals 1

    sget-object v0, LQ/s;->$VALUES:[LQ/s;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LQ/s;

    return-object v0
.end method
