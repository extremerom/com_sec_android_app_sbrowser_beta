.class public final enum Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$BookmarkSortTypes;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "BookmarkSortTypes"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$BookmarkSortTypes;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$BookmarkSortTypes;

.field public static final enum A_TO_Z:Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$BookmarkSortTypes;

.field public static final enum CUSTOM:Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$BookmarkSortTypes;

.field public static final enum NEWEST_FIRST:Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$BookmarkSortTypes;

.field public static final enum OLDEST_FIRST:Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$BookmarkSortTypes;

.field public static final enum Z_TO_A:Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$BookmarkSortTypes;


# instance fields
.field private final mResId:I


# direct methods
.method private static synthetic $values()[Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$BookmarkSortTypes;
    .locals 5

    sget-object v0, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$BookmarkSortTypes;->CUSTOM:Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$BookmarkSortTypes;

    sget-object v1, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$BookmarkSortTypes;->NEWEST_FIRST:Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$BookmarkSortTypes;

    sget-object v2, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$BookmarkSortTypes;->OLDEST_FIRST:Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$BookmarkSortTypes;

    sget-object v3, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$BookmarkSortTypes;->A_TO_Z:Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$BookmarkSortTypes;

    sget-object v4, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$BookmarkSortTypes;->Z_TO_A:Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$BookmarkSortTypes;

    filled-new-array {v0, v1, v2, v3, v4}, [Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$BookmarkSortTypes;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$BookmarkSortTypes;

    const/4 v1, 0x0

    const v2, 0x7f140246

    const-string v3, "CUSTOM"

    invoke-direct {v0, v3, v1, v2}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$BookmarkSortTypes;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$BookmarkSortTypes;->CUSTOM:Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$BookmarkSortTypes;

    new-instance v0, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$BookmarkSortTypes;

    const/4 v1, 0x1

    const v2, 0x7f140247

    const-string v3, "NEWEST_FIRST"

    invoke-direct {v0, v3, v1, v2}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$BookmarkSortTypes;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$BookmarkSortTypes;->NEWEST_FIRST:Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$BookmarkSortTypes;

    new-instance v0, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$BookmarkSortTypes;

    const/4 v1, 0x2

    const v2, 0x7f140248

    const-string v3, "OLDEST_FIRST"

    invoke-direct {v0, v3, v1, v2}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$BookmarkSortTypes;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$BookmarkSortTypes;->OLDEST_FIRST:Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$BookmarkSortTypes;

    new-instance v0, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$BookmarkSortTypes;

    const/4 v1, 0x3

    const v2, 0x7f140245

    const-string v3, "A_TO_Z"

    invoke-direct {v0, v3, v1, v2}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$BookmarkSortTypes;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$BookmarkSortTypes;->A_TO_Z:Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$BookmarkSortTypes;

    new-instance v0, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$BookmarkSortTypes;

    const/4 v1, 0x4

    const v2, 0x7f140249

    const-string v3, "Z_TO_A"

    invoke-direct {v0, v3, v1, v2}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$BookmarkSortTypes;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$BookmarkSortTypes;->Z_TO_A:Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$BookmarkSortTypes;

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$BookmarkSortTypes;->$values()[Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$BookmarkSortTypes;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$BookmarkSortTypes;->$VALUES:[Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$BookmarkSortTypes;

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

    iput p3, p0, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$BookmarkSortTypes;->mResId:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$BookmarkSortTypes;
    .locals 1

    const-class v0, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$BookmarkSortTypes;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$BookmarkSortTypes;

    return-object p0
.end method

.method public static values()[Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$BookmarkSortTypes;
    .locals 1

    sget-object v0, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$BookmarkSortTypes;->$VALUES:[Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$BookmarkSortTypes;

    invoke-virtual {v0}, [Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$BookmarkSortTypes;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$BookmarkSortTypes;

    return-object v0
.end method


# virtual methods
.method public getResId()I
    .locals 0

    iget p0, p0, Lcom/sec/android/app/sbrowser/common/constants/sites/BookmarkConstants$BookmarkSortTypes;->mResId:I

    return p0
.end method
