.class public final enum Lcc/s;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lic/q;


# static fields
.field private static final synthetic $VALUES:[Lcc/s;

.field public static final enum AT_LEAST_ONCE:Lcc/s;

.field public static final enum AT_MOST_ONCE:Lcc/s;

.field public static final enum EXACTLY_ONCE:Lcc/s;

.field private static internalValueMap:Lic/r;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lic/r;"
        }
    .end annotation
.end field


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcc/s;

    const-string v1, "AT_MOST_ONCE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcc/s;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcc/s;->AT_MOST_ONCE:Lcc/s;

    new-instance v1, Lcc/s;

    const-string v2, "EXACTLY_ONCE"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3, v3}, Lcc/s;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcc/s;->EXACTLY_ONCE:Lcc/s;

    new-instance v2, Lcc/s;

    const-string v3, "AT_LEAST_ONCE"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4, v4}, Lcc/s;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcc/s;->AT_LEAST_ONCE:Lcc/s;

    filled-new-array {v0, v1, v2}, [Lcc/s;

    move-result-object v0

    sput-object v0, Lcc/s;->$VALUES:[Lcc/s;

    new-instance v0, LR7/a;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcc/s;->internalValueMap:Lic/r;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcc/s;->value:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcc/s;
    .locals 1

    const-class v0, Lcc/s;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcc/s;

    return-object p0
.end method

.method public static values()[Lcc/s;
    .locals 1

    sget-object v0, Lcc/s;->$VALUES:[Lcc/s;

    invoke-virtual {v0}, [Lcc/s;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcc/s;

    return-object v0
.end method


# virtual methods
.method public final getNumber()I
    .locals 0

    iget p0, p0, Lcc/s;->value:I

    return p0
.end method
