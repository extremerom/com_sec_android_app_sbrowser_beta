.class public final enum LVa/g;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field private static final synthetic $VALUES:[LVa/g;

.field public static final enum RECORD_EVENTS:LVa/g;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, LVa/g;

    const-string v1, "RECORD_EVENTS"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, LVa/g;->RECORD_EVENTS:LVa/g;

    filled-new-array {v0}, [LVa/g;

    move-result-object v0

    sput-object v0, LVa/g;->$VALUES:[LVa/g;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)LVa/g;
    .locals 1

    const-class v0, LVa/g;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, LVa/g;

    return-object p0
.end method

.method public static values()[LVa/g;
    .locals 1

    sget-object v0, LVa/g;->$VALUES:[LVa/g;

    invoke-virtual {v0}, [LVa/g;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LVa/g;

    return-object v0
.end method
