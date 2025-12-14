.class public final enum Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$AccountType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "AccountType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$AccountType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$AccountType;

.field public static final enum ALL:Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$AccountType;

.field public static final enum DEVICE:Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$AccountType;

.field public static final enum FIREFOX:Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$AccountType;

.field public static final enum NONE:Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$AccountType;

.field public static final enum OPERATOR:Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$AccountType;

.field public static final enum SAMSUNG:Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$AccountType;

.field public static final enum SAMSUNG_DESKTOP:Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$AccountType;


# instance fields
.field private mNumVal:I


# direct methods
.method private static synthetic $values()[Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$AccountType;
    .locals 7

    sget-object v0, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$AccountType;->ALL:Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$AccountType;

    sget-object v1, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$AccountType;->DEVICE:Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$AccountType;

    sget-object v2, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$AccountType;->OPERATOR:Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$AccountType;

    sget-object v3, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$AccountType;->SAMSUNG:Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$AccountType;

    sget-object v4, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$AccountType;->SAMSUNG_DESKTOP:Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$AccountType;

    sget-object v5, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$AccountType;->FIREFOX:Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$AccountType;

    sget-object v6, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$AccountType;->NONE:Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$AccountType;

    filled-new-array/range {v0 .. v6}, [Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$AccountType;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$AccountType;

    const/4 v1, -0x1

    const-string v2, "ALL"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$AccountType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$AccountType;->ALL:Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$AccountType;

    new-instance v0, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$AccountType;

    const-string v1, "DEVICE"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$AccountType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$AccountType;->DEVICE:Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$AccountType;

    new-instance v0, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$AccountType;

    const-string v1, "OPERATOR"

    const/4 v3, 0x2

    invoke-direct {v0, v1, v3, v2}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$AccountType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$AccountType;->OPERATOR:Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$AccountType;

    new-instance v0, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$AccountType;

    const-string v1, "SAMSUNG"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$AccountType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$AccountType;->SAMSUNG:Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$AccountType;

    new-instance v0, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$AccountType;

    const-string v1, "SAMSUNG_DESKTOP"

    const/4 v3, 0x4

    invoke-direct {v0, v1, v3, v2}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$AccountType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$AccountType;->SAMSUNG_DESKTOP:Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$AccountType;

    new-instance v0, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$AccountType;

    const-string v1, "FIREFOX"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$AccountType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$AccountType;->FIREFOX:Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$AccountType;

    new-instance v0, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$AccountType;

    const-string v1, "NONE"

    const/4 v3, 0x6

    invoke-direct {v0, v1, v3, v2}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$AccountType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$AccountType;->NONE:Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$AccountType;

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$AccountType;->$values()[Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$AccountType;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$AccountType;->$VALUES:[Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$AccountType;

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

    iput p3, p0, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$AccountType;->mNumVal:I

    return-void
.end method

.method public static getAccountTypeForValue(I)Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$AccountType;
    .locals 5

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$AccountType;->values()[Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$AccountType;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    iget v4, v3, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$AccountType;->mNumVal:I

    if-ne v4, p0, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$AccountType;
    .locals 1

    const-class v0, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$AccountType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$AccountType;

    return-object p0
.end method

.method public static values()[Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$AccountType;
    .locals 1

    sget-object v0, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$AccountType;->$VALUES:[Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$AccountType;

    invoke-virtual {v0}, [Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$AccountType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$AccountType;

    return-object v0
.end method


# virtual methods
.method public getNumVal()I
    .locals 0

    iget p0, p0, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$AccountType;->mNumVal:I

    return p0
.end method
