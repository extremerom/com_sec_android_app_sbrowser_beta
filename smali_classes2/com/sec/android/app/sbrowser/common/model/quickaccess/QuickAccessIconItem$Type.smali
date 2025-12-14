.class public final enum Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem$Type;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem$Type;

.field public static final enum DEFAULT_LOCAL:Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem$Type;

.field public static final enum DEFAULT_SERVER:Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem$Type;

.field public static final enum RESERVED:Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem$Type;

.field public static final enum USER:Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem$Type;


# instance fields
.field private mValue:I


# direct methods
.method private static synthetic $values()[Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem$Type;
    .locals 4

    sget-object v0, Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem$Type;->USER:Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem$Type;

    sget-object v1, Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem$Type;->DEFAULT_SERVER:Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem$Type;

    sget-object v2, Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem$Type;->DEFAULT_LOCAL:Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem$Type;

    sget-object v3, Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem$Type;->RESERVED:Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem$Type;

    filled-new-array {v0, v1, v2, v3}, [Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem$Type;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem$Type;

    const-string v1, "USER"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem$Type;->USER:Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem$Type;

    new-instance v0, Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem$Type;

    const-string v1, "DEFAULT_SERVER"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v2}, Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem$Type;->DEFAULT_SERVER:Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem$Type;

    new-instance v0, Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem$Type;

    const-string v1, "DEFAULT_LOCAL"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2, v2}, Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem$Type;->DEFAULT_LOCAL:Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem$Type;

    new-instance v0, Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem$Type;

    const-string v1, "RESERVED"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2, v2}, Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem$Type;->RESERVED:Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem$Type;

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem$Type;->$values()[Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem$Type;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem$Type;->$VALUES:[Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem$Type;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem$Type;->mValue:I

    return-void
.end method

.method public static valueOf(I)Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem$Type;
    .locals 5

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem$Type;->values()[Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem$Type;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    iget v4, v3, Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem$Type;->mValue:I

    if-ne v4, p0, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    sget-object p0, Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem$Type;->USER:Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem$Type;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem$Type;
    .locals 1

    const-class v0, Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem$Type;

    return-object p0
.end method

.method public static values()[Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem$Type;
    .locals 1

    sget-object v0, Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem$Type;->$VALUES:[Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem$Type;

    invoke-virtual {v0}, [Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem$Type;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 0

    iget p0, p0, Lcom/sec/android/app/sbrowser/common/model/quickaccess/QuickAccessIconItem$Type;->mValue:I

    return p0
.end method
