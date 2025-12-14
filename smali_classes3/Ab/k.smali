.class public final enum LAb/k;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field private static final synthetic $ENTRIES:Llb/a;

.field private static final synthetic $VALUES:[LAb/k;

.field public static final enum EXTENSION_RECEIVER:LAb/k;

.field public static final enum INSTANCE:LAb/k;

.field public static final enum VALUE:LAb/k;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, LAb/k;

    const-string v1, "INSTANCE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, LAb/k;->INSTANCE:LAb/k;

    new-instance v1, LAb/k;

    const-string v2, "EXTENSION_RECEIVER"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v1, LAb/k;->EXTENSION_RECEIVER:LAb/k;

    new-instance v2, LAb/k;

    const-string v3, "VALUE"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v2, LAb/k;->VALUE:LAb/k;

    filled-new-array {v0, v1, v2}, [LAb/k;

    move-result-object v0

    sput-object v0, LAb/k;->$VALUES:[LAb/k;

    invoke-static {v0}, LP6/b;->b([Ljava/lang/Enum;)Llb/b;

    move-result-object v0

    sput-object v0, LAb/k;->$ENTRIES:Llb/a;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)LAb/k;
    .locals 1

    const-class v0, LAb/k;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, LAb/k;

    return-object p0
.end method

.method public static values()[LAb/k;
    .locals 1

    sget-object v0, LAb/k;->$VALUES:[LAb/k;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LAb/k;

    return-object v0
.end method
