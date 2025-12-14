.class public final enum LEb/a;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field private static final synthetic $ENTRIES:Llb/a;

.field private static final synthetic $VALUES:[LEb/a;

.field public static final enum CALL_BY_NAME:LEb/a;

.field public static final enum POSITIONAL_CALL:LEb/a;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, LEb/a;

    const-string v1, "CALL_BY_NAME"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, LEb/a;->CALL_BY_NAME:LEb/a;

    new-instance v1, LEb/a;

    const-string v2, "POSITIONAL_CALL"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v1, LEb/a;->POSITIONAL_CALL:LEb/a;

    filled-new-array {v0, v1}, [LEb/a;

    move-result-object v0

    sput-object v0, LEb/a;->$VALUES:[LEb/a;

    invoke-static {v0}, LP6/b;->b([Ljava/lang/Enum;)Llb/b;

    move-result-object v0

    sput-object v0, LEb/a;->$ENTRIES:Llb/a;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)LEb/a;
    .locals 1

    const-class v0, LEb/a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, LEb/a;

    return-object p0
.end method

.method public static values()[LEb/a;
    .locals 1

    sget-object v0, LEb/a;->$VALUES:[LEb/a;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LEb/a;

    return-object v0
.end method
