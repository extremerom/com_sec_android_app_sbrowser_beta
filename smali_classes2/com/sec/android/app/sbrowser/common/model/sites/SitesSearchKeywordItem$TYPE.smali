.class public final enum Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchKeywordItem$TYPE;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchKeywordItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "TYPE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchKeywordItem$TYPE;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchKeywordItem$TYPE;

.field public static final enum BOOKMARK:Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchKeywordItem$TYPE;

.field public static final enum DEFAULT:Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchKeywordItem$TYPE;

.field public static final enum HISTORY:Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchKeywordItem$TYPE;

.field public static final enum SAVED_PAGE:Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchKeywordItem$TYPE;


# instance fields
.field private mNumVal:I


# direct methods
.method private static synthetic $values()[Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchKeywordItem$TYPE;
    .locals 4

    sget-object v0, Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchKeywordItem$TYPE;->DEFAULT:Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchKeywordItem$TYPE;

    sget-object v1, Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchKeywordItem$TYPE;->BOOKMARK:Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchKeywordItem$TYPE;

    sget-object v2, Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchKeywordItem$TYPE;->HISTORY:Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchKeywordItem$TYPE;

    sget-object v3, Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchKeywordItem$TYPE;->SAVED_PAGE:Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchKeywordItem$TYPE;

    filled-new-array {v0, v1, v2, v3}, [Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchKeywordItem$TYPE;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchKeywordItem$TYPE;

    const-string v1, "DEFAULT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchKeywordItem$TYPE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchKeywordItem$TYPE;->DEFAULT:Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchKeywordItem$TYPE;

    new-instance v0, Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchKeywordItem$TYPE;

    const-string v1, "BOOKMARK"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v2}, Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchKeywordItem$TYPE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchKeywordItem$TYPE;->BOOKMARK:Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchKeywordItem$TYPE;

    new-instance v0, Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchKeywordItem$TYPE;

    const-string v1, "HISTORY"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2, v2}, Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchKeywordItem$TYPE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchKeywordItem$TYPE;->HISTORY:Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchKeywordItem$TYPE;

    new-instance v0, Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchKeywordItem$TYPE;

    const-string v1, "SAVED_PAGE"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2, v2}, Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchKeywordItem$TYPE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchKeywordItem$TYPE;->SAVED_PAGE:Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchKeywordItem$TYPE;

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchKeywordItem$TYPE;->$values()[Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchKeywordItem$TYPE;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchKeywordItem$TYPE;->$VALUES:[Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchKeywordItem$TYPE;

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

    iput p3, p0, Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchKeywordItem$TYPE;->mNumVal:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchKeywordItem$TYPE;
    .locals 1

    const-class v0, Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchKeywordItem$TYPE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchKeywordItem$TYPE;

    return-object p0
.end method

.method public static values()[Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchKeywordItem$TYPE;
    .locals 1

    sget-object v0, Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchKeywordItem$TYPE;->$VALUES:[Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchKeywordItem$TYPE;

    invoke-virtual {v0}, [Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchKeywordItem$TYPE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchKeywordItem$TYPE;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 0

    iget p0, p0, Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchKeywordItem$TYPE;->mNumVal:I

    return p0
.end method
