.class public final enum LF7/h;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field private static final synthetic $VALUES:[LF7/h;

.field public static final enum AUTH_ERROR:LF7/h;

.field public static final enum BAD_CONFIG:LF7/h;

.field public static final enum OK:LF7/h;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, LF7/h;

    const-string v1, "OK"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, LF7/h;->OK:LF7/h;

    new-instance v1, LF7/h;

    const-string v2, "BAD_CONFIG"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v1, LF7/h;->BAD_CONFIG:LF7/h;

    new-instance v2, LF7/h;

    const-string v3, "AUTH_ERROR"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v2, LF7/h;->AUTH_ERROR:LF7/h;

    filled-new-array {v0, v1, v2}, [LF7/h;

    move-result-object v0

    sput-object v0, LF7/h;->$VALUES:[LF7/h;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)LF7/h;
    .locals 1

    const-class v0, LF7/h;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, LF7/h;

    return-object p0
.end method

.method public static values()[LF7/h;
    .locals 1

    sget-object v0, LF7/h;->$VALUES:[LF7/h;

    invoke-virtual {v0}, [LF7/h;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LF7/h;

    return-object v0
.end method
