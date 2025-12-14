.class public final enum Lfc/h;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lic/q;


# static fields
.field private static final synthetic $VALUES:[Lfc/h;

.field public static final enum DESC_TO_CLASS_ID:Lfc/h;

.field public static final enum INTERNAL_TO_CLASS_ID:Lfc/h;

.field public static final enum NONE:Lfc/h;

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

    new-instance v0, Lfc/h;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lfc/h;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lfc/h;->NONE:Lfc/h;

    new-instance v1, Lfc/h;

    const-string v2, "INTERNAL_TO_CLASS_ID"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3, v3}, Lfc/h;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lfc/h;->INTERNAL_TO_CLASS_ID:Lfc/h;

    new-instance v2, Lfc/h;

    const-string v3, "DESC_TO_CLASS_ID"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4, v4}, Lfc/h;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lfc/h;->DESC_TO_CLASS_ID:Lfc/h;

    filled-new-array {v0, v1, v2}, [Lfc/h;

    move-result-object v0

    sput-object v0, Lfc/h;->$VALUES:[Lfc/h;

    new-instance v0, LE5/v;

    const/16 v1, 0x13

    invoke-direct {v0, v1}, LE5/v;-><init>(I)V

    sput-object v0, Lfc/h;->internalValueMap:Lic/r;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lfc/h;->value:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lfc/h;
    .locals 1

    const-class v0, Lfc/h;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lfc/h;

    return-object p0
.end method

.method public static values()[Lfc/h;
    .locals 1

    sget-object v0, Lfc/h;->$VALUES:[Lfc/h;

    invoke-virtual {v0}, [Lfc/h;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lfc/h;

    return-object v0
.end method


# virtual methods
.method public final getNumber()I
    .locals 0

    iget p0, p0, Lfc/h;->value:I

    return p0
.end method
