.class public final enum Ljb/a;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field private static final synthetic $ENTRIES:Llb/a;

.field private static final synthetic $VALUES:[Ljb/a;

.field public static final enum COROUTINE_SUSPENDED:Ljb/a;

.field public static final enum RESUMED:Ljb/a;

.field public static final enum UNDECIDED:Ljb/a;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Ljb/a;

    const-string v1, "COROUTINE_SUSPENDED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljb/a;->COROUTINE_SUSPENDED:Ljb/a;

    new-instance v1, Ljb/a;

    const-string v2, "UNDECIDED"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v1, Ljb/a;->UNDECIDED:Ljb/a;

    new-instance v2, Ljb/a;

    const-string v3, "RESUMED"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v2, Ljb/a;->RESUMED:Ljb/a;

    filled-new-array {v0, v1, v2}, [Ljb/a;

    move-result-object v0

    sput-object v0, Ljb/a;->$VALUES:[Ljb/a;

    invoke-static {v0}, LP6/b;->b([Ljava/lang/Enum;)Llb/b;

    move-result-object v0

    sput-object v0, Ljb/a;->$ENTRIES:Llb/a;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Ljb/a;
    .locals 1

    const-class v0, Ljb/a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Ljb/a;

    return-object p0
.end method

.method public static values()[Ljb/a;
    .locals 1

    sget-object v0, Ljb/a;->$VALUES:[Ljb/a;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljb/a;

    return-object v0
.end method
