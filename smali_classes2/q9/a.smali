.class public final enum Lq9/a;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field private static final synthetic $ENTRIES:Llb/a;

.field private static final synthetic $VALUES:[Lq9/a;

.field public static final enum Palette512:Lq9/a;

.field public static final enum Palette64:Lq9/a;


# instance fields
.field private final divider:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lq9/a;

    const-wide v1, 0x404fe00000000000L    # 63.75

    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-int v1, v1

    const-string v2, "Palette64"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1}, Lq9/a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lq9/a;->Palette64:Lq9/a;

    new-instance v1, Lq9/a;

    const-wide v2, 0x403fe00000000000L    # 31.875

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v2, v2

    const-string v3, "Palette512"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v2}, Lq9/a;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lq9/a;->Palette512:Lq9/a;

    filled-new-array {v0, v1}, [Lq9/a;

    move-result-object v0

    sput-object v0, Lq9/a;->$VALUES:[Lq9/a;

    invoke-static {v0}, LP6/b;->b([Ljava/lang/Enum;)Llb/b;

    move-result-object v0

    sput-object v0, Lq9/a;->$ENTRIES:Llb/a;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lq9/a;->divider:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lq9/a;
    .locals 1

    const-class v0, Lq9/a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lq9/a;

    return-object p0
.end method

.method public static values()[Lq9/a;
    .locals 1

    sget-object v0, Lq9/a;->$VALUES:[Lq9/a;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lq9/a;

    return-object v0
.end method


# virtual methods
.method public final a()I
    .locals 0

    iget p0, p0, Lq9/a;->divider:I

    return p0
.end method
