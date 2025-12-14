.class public final enum Lz7/f;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field private static final synthetic $VALUES:[Lz7/f;

.field public static final enum COMBINED:Lz7/f;

.field public static final enum GLOBAL:Lz7/f;

.field public static final enum NONE:Lz7/f;

.field public static final enum SDK:Lz7/f;


# instance fields
.field private final code:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lz7/f;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lz7/f;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lz7/f;->NONE:Lz7/f;

    new-instance v1, Lz7/f;

    const-string v2, "SDK"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3, v3}, Lz7/f;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lz7/f;->SDK:Lz7/f;

    new-instance v2, Lz7/f;

    const-string v3, "GLOBAL"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4, v4}, Lz7/f;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lz7/f;->GLOBAL:Lz7/f;

    new-instance v3, Lz7/f;

    const-string v4, "COMBINED"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5, v5}, Lz7/f;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lz7/f;->COMBINED:Lz7/f;

    filled-new-array {v0, v1, v2, v3}, [Lz7/f;

    move-result-object v0

    sput-object v0, Lz7/f;->$VALUES:[Lz7/f;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lz7/f;->code:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lz7/f;
    .locals 1

    const-class v0, Lz7/f;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lz7/f;

    return-object p0
.end method

.method public static values()[Lz7/f;
    .locals 1

    sget-object v0, Lz7/f;->$VALUES:[Lz7/f;

    invoke-virtual {v0}, [Lz7/f;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lz7/f;

    return-object v0
.end method


# virtual methods
.method public final a()I
    .locals 0

    iget p0, p0, Lz7/f;->code:I

    return p0
.end method
