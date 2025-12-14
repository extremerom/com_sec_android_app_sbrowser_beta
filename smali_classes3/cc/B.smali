.class public final enum Lcc/B;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lic/q;


# static fields
.field private static final synthetic $VALUES:[Lcc/B;

.field public static final enum DECLARATION:Lcc/B;

.field public static final enum DELEGATION:Lcc/B;

.field public static final enum FAKE_OVERRIDE:Lcc/B;

.field public static final enum SYNTHESIZED:Lcc/B;

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
    .locals 6

    new-instance v0, Lcc/B;

    const-string v1, "DECLARATION"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcc/B;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcc/B;->DECLARATION:Lcc/B;

    new-instance v1, Lcc/B;

    const-string v2, "FAKE_OVERRIDE"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3, v3}, Lcc/B;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcc/B;->FAKE_OVERRIDE:Lcc/B;

    new-instance v2, Lcc/B;

    const-string v3, "DELEGATION"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4, v4}, Lcc/B;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcc/B;->DELEGATION:Lcc/B;

    new-instance v3, Lcc/B;

    const-string v4, "SYNTHESIZED"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5, v5}, Lcc/B;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcc/B;->SYNTHESIZED:Lcc/B;

    filled-new-array {v0, v1, v2, v3}, [Lcc/B;

    move-result-object v0

    sput-object v0, Lcc/B;->$VALUES:[Lcc/B;

    new-instance v0, Lz7/d;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcc/B;->internalValueMap:Lic/r;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcc/B;->value:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcc/B;
    .locals 1

    const-class v0, Lcc/B;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcc/B;

    return-object p0
.end method

.method public static values()[Lcc/B;
    .locals 1

    sget-object v0, Lcc/B;->$VALUES:[Lcc/B;

    invoke-virtual {v0}, [Lcc/B;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcc/B;

    return-object v0
.end method


# virtual methods
.method public final getNumber()I
    .locals 0

    iget p0, p0, Lcc/B;->value:I

    return p0
.end method
