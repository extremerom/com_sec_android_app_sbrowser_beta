.class public final enum Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataFragment$Position;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Position"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataFragment$Position;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataFragment$Position;

.field public static final enum AUTOFILL_DATA_POS:Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataFragment$Position;

.field public static final enum CACHE_POS:Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataFragment$Position;

.field public static final enum COOKIES_AND_SITE_POS:Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataFragment$Position;

.field public static final enum HISTORY_POS:Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataFragment$Position;

.field public static final enum PASSWORD_INFO_POS:Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataFragment$Position;


# instance fields
.field private final mPos:I


# direct methods
.method private static synthetic $values()[Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataFragment$Position;
    .locals 5

    sget-object v0, Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataFragment$Position;->HISTORY_POS:Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataFragment$Position;

    sget-object v1, Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataFragment$Position;->COOKIES_AND_SITE_POS:Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataFragment$Position;

    sget-object v2, Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataFragment$Position;->CACHE_POS:Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataFragment$Position;

    sget-object v3, Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataFragment$Position;->PASSWORD_INFO_POS:Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataFragment$Position;

    sget-object v4, Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataFragment$Position;->AUTOFILL_DATA_POS:Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataFragment$Position;

    filled-new-array {v0, v1, v2, v3, v4}, [Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataFragment$Position;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataFragment$Position;

    const-string v1, "HISTORY_POS"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataFragment$Position;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataFragment$Position;->HISTORY_POS:Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataFragment$Position;

    new-instance v0, Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataFragment$Position;

    const-string v1, "COOKIES_AND_SITE_POS"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v2}, Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataFragment$Position;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataFragment$Position;->COOKIES_AND_SITE_POS:Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataFragment$Position;

    new-instance v0, Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataFragment$Position;

    const-string v1, "CACHE_POS"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2, v2}, Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataFragment$Position;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataFragment$Position;->CACHE_POS:Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataFragment$Position;

    new-instance v0, Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataFragment$Position;

    const-string v1, "PASSWORD_INFO_POS"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2, v2}, Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataFragment$Position;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataFragment$Position;->PASSWORD_INFO_POS:Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataFragment$Position;

    new-instance v0, Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataFragment$Position;

    const-string v1, "AUTOFILL_DATA_POS"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2, v2}, Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataFragment$Position;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataFragment$Position;->AUTOFILL_DATA_POS:Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataFragment$Position;

    invoke-static {}, Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataFragment$Position;->$values()[Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataFragment$Position;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataFragment$Position;->$VALUES:[Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataFragment$Position;

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

    iput p3, p0, Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataFragment$Position;->mPos:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataFragment$Position;
    .locals 1

    const-class v0, Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataFragment$Position;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataFragment$Position;

    return-object p0
.end method

.method public static values()[Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataFragment$Position;
    .locals 1

    sget-object v0, Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataFragment$Position;->$VALUES:[Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataFragment$Position;

    invoke-virtual {v0}, [Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataFragment$Position;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataFragment$Position;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 0

    iget p0, p0, Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataFragment$Position;->mPos:I

    return p0
.end method
