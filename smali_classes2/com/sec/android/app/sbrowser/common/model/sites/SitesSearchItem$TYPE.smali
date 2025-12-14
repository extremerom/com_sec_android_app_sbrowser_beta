.class public final enum Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem$TYPE;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "TYPE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem$TYPE;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem$TYPE;

.field public static final enum BOOKMARK:Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem$TYPE;

.field public static final enum HISTORY:Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem$TYPE;

.field public static final enum INVALID:Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem$TYPE;

.field public static final enum SAVED_PAGE:Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem$TYPE;


# instance fields
.field private mValue:Ljava/lang/String;


# direct methods
.method private static synthetic $values()[Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem$TYPE;
    .locals 4

    sget-object v0, Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem$TYPE;->BOOKMARK:Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem$TYPE;

    sget-object v1, Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem$TYPE;->HISTORY:Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem$TYPE;

    sget-object v2, Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem$TYPE;->SAVED_PAGE:Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem$TYPE;

    sget-object v3, Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem$TYPE;->INVALID:Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem$TYPE;

    filled-new-array {v0, v1, v2, v3}, [Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem$TYPE;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem$TYPE;

    const/4 v1, 0x0

    const-string v2, "Bookmark"

    const-string v3, "BOOKMARK"

    invoke-direct {v0, v3, v1, v2}, Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem$TYPE;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem$TYPE;->BOOKMARK:Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem$TYPE;

    new-instance v0, Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem$TYPE;

    const/4 v1, 0x1

    const-string v2, "History"

    const-string v3, "HISTORY"

    invoke-direct {v0, v3, v1, v2}, Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem$TYPE;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem$TYPE;->HISTORY:Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem$TYPE;

    new-instance v0, Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem$TYPE;

    const/4 v1, 0x2

    const-string v2, "Saved_Pages"

    const-string v3, "SAVED_PAGE"

    invoke-direct {v0, v3, v1, v2}, Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem$TYPE;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem$TYPE;->SAVED_PAGE:Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem$TYPE;

    new-instance v0, Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem$TYPE;

    const/4 v1, 0x3

    const-string v2, "Invalid"

    const-string v3, "INVALID"

    invoke-direct {v0, v3, v1, v2}, Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem$TYPE;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem$TYPE;->INVALID:Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem$TYPE;

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem$TYPE;->$values()[Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem$TYPE;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem$TYPE;->$VALUES:[Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem$TYPE;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem$TYPE;->mValue:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem$TYPE;
    .locals 1

    const-class v0, Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem$TYPE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem$TYPE;

    return-object p0
.end method

.method public static values()[Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem$TYPE;
    .locals 1

    sget-object v0, Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem$TYPE;->$VALUES:[Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem$TYPE;

    invoke-virtual {v0}, [Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem$TYPE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem$TYPE;

    return-object v0
.end method


# virtual methods
.method public getValue()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/model/sites/SitesSearchItem$TYPE;->mValue:Ljava/lang/String;

    return-object p0
.end method
