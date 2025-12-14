.class public final enum Lcc/x;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lic/q;


# static fields
.field private static final synthetic $VALUES:[Lcc/x;

.field public static final enum FALSE:Lcc/x;

.field public static final enum NULL:Lcc/x;

.field public static final enum TRUE:Lcc/x;

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

    new-instance v0, Lcc/x;

    const-string v1, "TRUE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcc/x;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcc/x;->TRUE:Lcc/x;

    new-instance v1, Lcc/x;

    const-string v2, "FALSE"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3, v3}, Lcc/x;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcc/x;->FALSE:Lcc/x;

    new-instance v2, Lcc/x;

    const-string v3, "NULL"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4, v4}, Lcc/x;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcc/x;->NULL:Lcc/x;

    filled-new-array {v0, v1, v2}, [Lcc/x;

    move-result-object v0

    sput-object v0, Lcc/x;->$VALUES:[Lcc/x;

    new-instance v0, Lu5/d;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcc/x;->internalValueMap:Lic/r;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcc/x;->value:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcc/x;
    .locals 1

    const-class v0, Lcc/x;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcc/x;

    return-object p0
.end method

.method public static values()[Lcc/x;
    .locals 1

    sget-object v0, Lcc/x;->$VALUES:[Lcc/x;

    invoke-virtual {v0}, [Lcc/x;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcc/x;

    return-object v0
.end method


# virtual methods
.method public final getNumber()I
    .locals 0

    iget p0, p0, Lcc/x;->value:I

    return p0
.end method
