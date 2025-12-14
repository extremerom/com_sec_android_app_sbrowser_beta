.class public final enum Lcom/sec/android/app/sbrowser/common/model/sites/SitePages;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sec/android/app/sbrowser/common/model/sites/SitePages;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/android/app/sbrowser/common/model/sites/SitePages;

.field public static final enum BOOKMARKS:Lcom/sec/android/app/sbrowser/common/model/sites/SitePages;

.field public static final enum HISTORY:Lcom/sec/android/app/sbrowser/common/model/sites/SitePages;

.field public static final enum SAVEPAGES:Lcom/sec/android/app/sbrowser/common/model/sites/SitePages;

.field public static final enum SEARCH:Lcom/sec/android/app/sbrowser/common/model/sites/SitePages;


# instance fields
.field mValue:I


# direct methods
.method private static synthetic $values()[Lcom/sec/android/app/sbrowser/common/model/sites/SitePages;
    .locals 4

    sget-object v0, Lcom/sec/android/app/sbrowser/common/model/sites/SitePages;->BOOKMARKS:Lcom/sec/android/app/sbrowser/common/model/sites/SitePages;

    sget-object v1, Lcom/sec/android/app/sbrowser/common/model/sites/SitePages;->HISTORY:Lcom/sec/android/app/sbrowser/common/model/sites/SitePages;

    sget-object v2, Lcom/sec/android/app/sbrowser/common/model/sites/SitePages;->SAVEPAGES:Lcom/sec/android/app/sbrowser/common/model/sites/SitePages;

    sget-object v3, Lcom/sec/android/app/sbrowser/common/model/sites/SitePages;->SEARCH:Lcom/sec/android/app/sbrowser/common/model/sites/SitePages;

    filled-new-array {v0, v1, v2, v3}, [Lcom/sec/android/app/sbrowser/common/model/sites/SitePages;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/sec/android/app/sbrowser/common/model/sites/SitePages;

    const-string v1, "BOOKMARKS"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/sec/android/app/sbrowser/common/model/sites/SitePages;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/android/app/sbrowser/common/model/sites/SitePages;->BOOKMARKS:Lcom/sec/android/app/sbrowser/common/model/sites/SitePages;

    new-instance v0, Lcom/sec/android/app/sbrowser/common/model/sites/SitePages;

    const-string v1, "HISTORY"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v2}, Lcom/sec/android/app/sbrowser/common/model/sites/SitePages;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/android/app/sbrowser/common/model/sites/SitePages;->HISTORY:Lcom/sec/android/app/sbrowser/common/model/sites/SitePages;

    new-instance v0, Lcom/sec/android/app/sbrowser/common/model/sites/SitePages;

    const-string v1, "SAVEPAGES"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2, v2}, Lcom/sec/android/app/sbrowser/common/model/sites/SitePages;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/android/app/sbrowser/common/model/sites/SitePages;->SAVEPAGES:Lcom/sec/android/app/sbrowser/common/model/sites/SitePages;

    new-instance v0, Lcom/sec/android/app/sbrowser/common/model/sites/SitePages;

    const-string v1, "SEARCH"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2, v2}, Lcom/sec/android/app/sbrowser/common/model/sites/SitePages;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/android/app/sbrowser/common/model/sites/SitePages;->SEARCH:Lcom/sec/android/app/sbrowser/common/model/sites/SitePages;

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/model/sites/SitePages;->$values()[Lcom/sec/android/app/sbrowser/common/model/sites/SitePages;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/sbrowser/common/model/sites/SitePages;->$VALUES:[Lcom/sec/android/app/sbrowser/common/model/sites/SitePages;

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

    iput p3, p0, Lcom/sec/android/app/sbrowser/common/model/sites/SitePages;->mValue:I

    return-void
.end method

.method public static getSitePages(I)Lcom/sec/android/app/sbrowser/common/model/sites/SitePages;
    .locals 5

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/model/sites/SitePages;->values()[Lcom/sec/android/app/sbrowser/common/model/sites/SitePages;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/common/model/sites/SitePages;->getValue()I

    move-result v4

    if-ne v4, p0, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sec/android/app/sbrowser/common/model/sites/SitePages;
    .locals 1

    const-class v0, Lcom/sec/android/app/sbrowser/common/model/sites/SitePages;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/sbrowser/common/model/sites/SitePages;

    return-object p0
.end method

.method public static values()[Lcom/sec/android/app/sbrowser/common/model/sites/SitePages;
    .locals 1

    sget-object v0, Lcom/sec/android/app/sbrowser/common/model/sites/SitePages;->$VALUES:[Lcom/sec/android/app/sbrowser/common/model/sites/SitePages;

    invoke-virtual {v0}, [Lcom/sec/android/app/sbrowser/common/model/sites/SitePages;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/android/app/sbrowser/common/model/sites/SitePages;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 0

    iget p0, p0, Lcom/sec/android/app/sbrowser/common/model/sites/SitePages;->mValue:I

    return p0
.end method
