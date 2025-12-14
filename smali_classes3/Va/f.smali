.class public final enum LVa/f;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field private static final synthetic $VALUES:[LVa/f;

.field public static final enum RECEIVED:LVa/f;

.field public static final enum SENT:LVa/f;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, LVa/f;

    const-string v1, "SENT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, LVa/f;->SENT:LVa/f;

    new-instance v1, LVa/f;

    const-string v2, "RECEIVED"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v1, LVa/f;->RECEIVED:LVa/f;

    filled-new-array {v0, v1}, [LVa/f;

    move-result-object v0

    sput-object v0, LVa/f;->$VALUES:[LVa/f;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)LVa/f;
    .locals 1

    const-class v0, LVa/f;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, LVa/f;

    return-object p0
.end method

.method public static values()[LVa/f;
    .locals 1

    sget-object v0, LVa/f;->$VALUES:[LVa/f;

    invoke-virtual {v0}, [LVa/f;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LVa/f;

    return-object v0
.end method
