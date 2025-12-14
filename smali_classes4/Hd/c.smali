.class public final enum LHd/c;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field private static final synthetic $VALUES:[LHd/c;

.field public static final enum EXTERNAL_PROPERTY:LHd/c;

.field public static final enum PROPERTY:LHd/c;

.field public static final enum WRAPPER_ARRAY:LHd/c;

.field public static final enum WRAPPER_OBJECT:LHd/c;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, LHd/c;

    const-string v1, "PROPERTY"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, LHd/c;->PROPERTY:LHd/c;

    new-instance v1, LHd/c;

    const-string v2, "WRAPPER_OBJECT"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v1, LHd/c;->WRAPPER_OBJECT:LHd/c;

    new-instance v2, LHd/c;

    const-string v3, "WRAPPER_ARRAY"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v2, LHd/c;->WRAPPER_ARRAY:LHd/c;

    new-instance v3, LHd/c;

    const-string v4, "EXTERNAL_PROPERTY"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v3, LHd/c;->EXTERNAL_PROPERTY:LHd/c;

    filled-new-array {v0, v1, v2, v3}, [LHd/c;

    move-result-object v0

    sput-object v0, LHd/c;->$VALUES:[LHd/c;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)LHd/c;
    .locals 1

    const-class v0, LHd/c;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, LHd/c;

    return-object p0
.end method

.method public static values()[LHd/c;
    .locals 1

    sget-object v0, LHd/c;->$VALUES:[LHd/c;

    invoke-virtual {v0}, [LHd/c;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LHd/c;

    return-object v0
.end method
