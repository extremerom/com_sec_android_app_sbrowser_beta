.class public final enum Lcc/j;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lic/q;


# static fields
.field private static final synthetic $VALUES:[Lcc/j;

.field public static final enum ANNOTATION_CLASS:Lcc/j;

.field public static final enum CLASS:Lcc/j;

.field public static final enum COMPANION_OBJECT:Lcc/j;

.field public static final enum ENUM_CLASS:Lcc/j;

.field public static final enum ENUM_ENTRY:Lcc/j;

.field public static final enum INTERFACE:Lcc/j;

.field public static final enum OBJECT:Lcc/j;

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
    .locals 9

    new-instance v0, Lcc/j;

    const-string v1, "CLASS"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcc/j;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcc/j;->CLASS:Lcc/j;

    new-instance v1, Lcc/j;

    const-string v2, "INTERFACE"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3, v3}, Lcc/j;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcc/j;->INTERFACE:Lcc/j;

    new-instance v2, Lcc/j;

    const-string v3, "ENUM_CLASS"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4, v4}, Lcc/j;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcc/j;->ENUM_CLASS:Lcc/j;

    new-instance v3, Lcc/j;

    const-string v4, "ENUM_ENTRY"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5, v5}, Lcc/j;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcc/j;->ENUM_ENTRY:Lcc/j;

    new-instance v4, Lcc/j;

    const-string v5, "ANNOTATION_CLASS"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6, v6}, Lcc/j;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcc/j;->ANNOTATION_CLASS:Lcc/j;

    new-instance v5, Lcc/j;

    const-string v6, "OBJECT"

    const/4 v7, 0x5

    invoke-direct {v5, v6, v7, v7}, Lcc/j;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcc/j;->OBJECT:Lcc/j;

    new-instance v6, Lcc/j;

    const-string v7, "COMPANION_OBJECT"

    const/4 v8, 0x6

    invoke-direct {v6, v7, v8, v8}, Lcc/j;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lcc/j;->COMPANION_OBJECT:Lcc/j;

    filled-new-array/range {v0 .. v6}, [Lcc/j;

    move-result-object v0

    sput-object v0, Lcc/j;->$VALUES:[Lcc/j;

    new-instance v0, LF6/e;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcc/j;->internalValueMap:Lic/r;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcc/j;->value:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcc/j;
    .locals 1

    const-class v0, Lcc/j;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcc/j;

    return-object p0
.end method

.method public static values()[Lcc/j;
    .locals 1

    sget-object v0, Lcc/j;->$VALUES:[Lcc/j;

    invoke-virtual {v0}, [Lcc/j;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcc/j;

    return-object v0
.end method


# virtual methods
.method public final getNumber()I
    .locals 0

    iget p0, p0, Lcc/j;->value:I

    return p0
.end method
