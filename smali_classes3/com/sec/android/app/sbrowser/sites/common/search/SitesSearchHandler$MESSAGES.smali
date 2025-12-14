.class public final enum Lcom/sec/android/app/sbrowser/sites/common/search/SitesSearchHandler$MESSAGES;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/sites/common/search/SitesSearchHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "MESSAGES"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sec/android/app/sbrowser/sites/common/search/SitesSearchHandler$MESSAGES;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/android/app/sbrowser/sites/common/search/SitesSearchHandler$MESSAGES;

.field public static final enum DELETED:Lcom/sec/android/app/sbrowser/sites/common/search/SitesSearchHandler$MESSAGES;

.field public static final enum EDITED:Lcom/sec/android/app/sbrowser/sites/common/search/SitesSearchHandler$MESSAGES;

.field public static final enum HIDE:Lcom/sec/android/app/sbrowser/sites/common/search/SitesSearchHandler$MESSAGES;

.field public static final enum INSERTED:Lcom/sec/android/app/sbrowser/sites/common/search/SitesSearchHandler$MESSAGES;

.field public static final enum MOVED:Lcom/sec/android/app/sbrowser/sites/common/search/SitesSearchHandler$MESSAGES;

.field public static final enum REFRESH:Lcom/sec/android/app/sbrowser/sites/common/search/SitesSearchHandler$MESSAGES;

.field public static final enum SYNCED:Lcom/sec/android/app/sbrowser/sites/common/search/SitesSearchHandler$MESSAGES;


# direct methods
.method private static synthetic $values()[Lcom/sec/android/app/sbrowser/sites/common/search/SitesSearchHandler$MESSAGES;
    .locals 7

    sget-object v0, Lcom/sec/android/app/sbrowser/sites/common/search/SitesSearchHandler$MESSAGES;->INSERTED:Lcom/sec/android/app/sbrowser/sites/common/search/SitesSearchHandler$MESSAGES;

    sget-object v1, Lcom/sec/android/app/sbrowser/sites/common/search/SitesSearchHandler$MESSAGES;->DELETED:Lcom/sec/android/app/sbrowser/sites/common/search/SitesSearchHandler$MESSAGES;

    sget-object v2, Lcom/sec/android/app/sbrowser/sites/common/search/SitesSearchHandler$MESSAGES;->EDITED:Lcom/sec/android/app/sbrowser/sites/common/search/SitesSearchHandler$MESSAGES;

    sget-object v3, Lcom/sec/android/app/sbrowser/sites/common/search/SitesSearchHandler$MESSAGES;->HIDE:Lcom/sec/android/app/sbrowser/sites/common/search/SitesSearchHandler$MESSAGES;

    sget-object v4, Lcom/sec/android/app/sbrowser/sites/common/search/SitesSearchHandler$MESSAGES;->REFRESH:Lcom/sec/android/app/sbrowser/sites/common/search/SitesSearchHandler$MESSAGES;

    sget-object v5, Lcom/sec/android/app/sbrowser/sites/common/search/SitesSearchHandler$MESSAGES;->MOVED:Lcom/sec/android/app/sbrowser/sites/common/search/SitesSearchHandler$MESSAGES;

    sget-object v6, Lcom/sec/android/app/sbrowser/sites/common/search/SitesSearchHandler$MESSAGES;->SYNCED:Lcom/sec/android/app/sbrowser/sites/common/search/SitesSearchHandler$MESSAGES;

    filled-new-array/range {v0 .. v6}, [Lcom/sec/android/app/sbrowser/sites/common/search/SitesSearchHandler$MESSAGES;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/sec/android/app/sbrowser/sites/common/search/SitesSearchHandler$MESSAGES;

    const-string v1, "INSERTED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/sbrowser/sites/common/search/SitesSearchHandler$MESSAGES;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/app/sbrowser/sites/common/search/SitesSearchHandler$MESSAGES;->INSERTED:Lcom/sec/android/app/sbrowser/sites/common/search/SitesSearchHandler$MESSAGES;

    new-instance v0, Lcom/sec/android/app/sbrowser/sites/common/search/SitesSearchHandler$MESSAGES;

    const-string v1, "DELETED"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/sbrowser/sites/common/search/SitesSearchHandler$MESSAGES;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/app/sbrowser/sites/common/search/SitesSearchHandler$MESSAGES;->DELETED:Lcom/sec/android/app/sbrowser/sites/common/search/SitesSearchHandler$MESSAGES;

    new-instance v0, Lcom/sec/android/app/sbrowser/sites/common/search/SitesSearchHandler$MESSAGES;

    const-string v1, "EDITED"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/sbrowser/sites/common/search/SitesSearchHandler$MESSAGES;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/app/sbrowser/sites/common/search/SitesSearchHandler$MESSAGES;->EDITED:Lcom/sec/android/app/sbrowser/sites/common/search/SitesSearchHandler$MESSAGES;

    new-instance v0, Lcom/sec/android/app/sbrowser/sites/common/search/SitesSearchHandler$MESSAGES;

    const-string v1, "HIDE"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/sbrowser/sites/common/search/SitesSearchHandler$MESSAGES;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/app/sbrowser/sites/common/search/SitesSearchHandler$MESSAGES;->HIDE:Lcom/sec/android/app/sbrowser/sites/common/search/SitesSearchHandler$MESSAGES;

    new-instance v0, Lcom/sec/android/app/sbrowser/sites/common/search/SitesSearchHandler$MESSAGES;

    const-string v1, "REFRESH"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/sbrowser/sites/common/search/SitesSearchHandler$MESSAGES;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/app/sbrowser/sites/common/search/SitesSearchHandler$MESSAGES;->REFRESH:Lcom/sec/android/app/sbrowser/sites/common/search/SitesSearchHandler$MESSAGES;

    new-instance v0, Lcom/sec/android/app/sbrowser/sites/common/search/SitesSearchHandler$MESSAGES;

    const-string v1, "MOVED"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/sbrowser/sites/common/search/SitesSearchHandler$MESSAGES;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/app/sbrowser/sites/common/search/SitesSearchHandler$MESSAGES;->MOVED:Lcom/sec/android/app/sbrowser/sites/common/search/SitesSearchHandler$MESSAGES;

    new-instance v0, Lcom/sec/android/app/sbrowser/sites/common/search/SitesSearchHandler$MESSAGES;

    const-string v1, "SYNCED"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/sbrowser/sites/common/search/SitesSearchHandler$MESSAGES;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/app/sbrowser/sites/common/search/SitesSearchHandler$MESSAGES;->SYNCED:Lcom/sec/android/app/sbrowser/sites/common/search/SitesSearchHandler$MESSAGES;

    invoke-static {}, Lcom/sec/android/app/sbrowser/sites/common/search/SitesSearchHandler$MESSAGES;->$values()[Lcom/sec/android/app/sbrowser/sites/common/search/SitesSearchHandler$MESSAGES;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/sbrowser/sites/common/search/SitesSearchHandler$MESSAGES;->$VALUES:[Lcom/sec/android/app/sbrowser/sites/common/search/SitesSearchHandler$MESSAGES;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static getMessages(I)Lcom/sec/android/app/sbrowser/sites/common/search/SitesSearchHandler$MESSAGES;
    .locals 5

    invoke-static {}, Lcom/sec/android/app/sbrowser/sites/common/search/SitesSearchHandler$MESSAGES;->values()[Lcom/sec/android/app/sbrowser/sites/common/search/SitesSearchHandler$MESSAGES;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

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

.method public static valueOf(Ljava/lang/String;)Lcom/sec/android/app/sbrowser/sites/common/search/SitesSearchHandler$MESSAGES;
    .locals 1

    const-class v0, Lcom/sec/android/app/sbrowser/sites/common/search/SitesSearchHandler$MESSAGES;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/sbrowser/sites/common/search/SitesSearchHandler$MESSAGES;

    return-object p0
.end method

.method public static values()[Lcom/sec/android/app/sbrowser/sites/common/search/SitesSearchHandler$MESSAGES;
    .locals 1

    sget-object v0, Lcom/sec/android/app/sbrowser/sites/common/search/SitesSearchHandler$MESSAGES;->$VALUES:[Lcom/sec/android/app/sbrowser/sites/common/search/SitesSearchHandler$MESSAGES;

    invoke-virtual {v0}, [Lcom/sec/android/app/sbrowser/sites/common/search/SitesSearchHandler$MESSAGES;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/android/app/sbrowser/sites/common/search/SitesSearchHandler$MESSAGES;

    return-object v0
.end method
