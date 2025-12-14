.class public final enum Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataFragment$BrowsingData;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "BrowsingData"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataFragment$BrowsingData;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataFragment$BrowsingData;

.field public static final enum AUTOCOMPLETE_DATA:Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataFragment$BrowsingData;

.field public static final enum AUTOFILL_DATA:Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataFragment$BrowsingData;

.field public static final enum CACHE_DATA:Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataFragment$BrowsingData;

.field public static final enum COOKIE_DATA:Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataFragment$BrowsingData;

.field public static final enum HISTORY_DATA:Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataFragment$BrowsingData;

.field public static final enum PASSWORD_INFO_DATA:Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataFragment$BrowsingData;


# instance fields
.field private mValue:J


# direct methods
.method private static synthetic $values()[Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataFragment$BrowsingData;
    .locals 6

    sget-object v0, Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataFragment$BrowsingData;->HISTORY_DATA:Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataFragment$BrowsingData;

    sget-object v1, Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataFragment$BrowsingData;->AUTOCOMPLETE_DATA:Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataFragment$BrowsingData;

    sget-object v2, Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataFragment$BrowsingData;->COOKIE_DATA:Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataFragment$BrowsingData;

    sget-object v3, Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataFragment$BrowsingData;->CACHE_DATA:Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataFragment$BrowsingData;

    sget-object v4, Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataFragment$BrowsingData;->PASSWORD_INFO_DATA:Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataFragment$BrowsingData;

    sget-object v5, Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataFragment$BrowsingData;->AUTOFILL_DATA:Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataFragment$BrowsingData;

    filled-new-array/range {v0 .. v5}, [Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataFragment$BrowsingData;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataFragment$BrowsingData;

    const-string v1, "HISTORY_DATA"

    const/4 v2, 0x0

    const/4 v3, -0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataFragment$BrowsingData;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataFragment$BrowsingData;->HISTORY_DATA:Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataFragment$BrowsingData;

    new-instance v0, Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataFragment$BrowsingData;

    const-string v1, "AUTOCOMPLETE_DATA"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataFragment$BrowsingData;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataFragment$BrowsingData;->AUTOCOMPLETE_DATA:Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataFragment$BrowsingData;

    new-instance v0, Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataFragment$BrowsingData;

    const-string v1, "COOKIE_DATA"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataFragment$BrowsingData;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataFragment$BrowsingData;->COOKIE_DATA:Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataFragment$BrowsingData;

    new-instance v0, Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataFragment$BrowsingData;

    const-string v1, "CACHE_DATA"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataFragment$BrowsingData;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataFragment$BrowsingData;->CACHE_DATA:Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataFragment$BrowsingData;

    new-instance v0, Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataFragment$BrowsingData;

    const-string v1, "PASSWORD_INFO_DATA"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataFragment$BrowsingData;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataFragment$BrowsingData;->PASSWORD_INFO_DATA:Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataFragment$BrowsingData;

    new-instance v0, Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataFragment$BrowsingData;

    const-string v1, "AUTOFILL_DATA"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataFragment$BrowsingData;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataFragment$BrowsingData;->AUTOFILL_DATA:Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataFragment$BrowsingData;

    invoke-static {}, Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataFragment$BrowsingData;->$values()[Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataFragment$BrowsingData;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataFragment$BrowsingData;->$VALUES:[Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataFragment$BrowsingData;

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

    int-to-long p1, p3

    iput-wide p1, p0, Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataFragment$BrowsingData;->mValue:J

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataFragment$BrowsingData;
    .locals 1

    const-class v0, Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataFragment$BrowsingData;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataFragment$BrowsingData;

    return-object p0
.end method

.method public static values()[Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataFragment$BrowsingData;
    .locals 1

    sget-object v0, Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataFragment$BrowsingData;->$VALUES:[Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataFragment$BrowsingData;

    invoke-virtual {v0}, [Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataFragment$BrowsingData;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataFragment$BrowsingData;

    return-object v0
.end method


# virtual methods
.method public getValue()J
    .locals 2

    iget-wide v0, p0, Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataFragment$BrowsingData;->mValue:J

    return-wide v0
.end method

.method public setValue(J)V
    .locals 0

    iput-wide p1, p0, Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataFragment$BrowsingData;->mValue:J

    return-void
.end method
