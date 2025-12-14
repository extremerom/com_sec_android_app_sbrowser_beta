.class public final enum Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataFragment$Options;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Options"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataFragment$Options;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataFragment$Options;

.field public static final enum CLEAR_AUTOFILL_DATA:Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataFragment$Options;

.field public static final enum CLEAR_CACHE:Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataFragment$Options;

.field public static final enum CLEAR_COOKIES_AND_SITE_DATA:Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataFragment$Options;

.field public static final enum CLEAR_HISTORY:Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataFragment$Options;

.field public static final enum CLEAR_PASSWORDS:Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataFragment$Options;


# instance fields
.field private final mResourceId:I


# direct methods
.method private static synthetic $values()[Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataFragment$Options;
    .locals 5

    sget-object v0, Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataFragment$Options;->CLEAR_HISTORY:Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataFragment$Options;

    sget-object v1, Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataFragment$Options;->CLEAR_COOKIES_AND_SITE_DATA:Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataFragment$Options;

    sget-object v2, Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataFragment$Options;->CLEAR_CACHE:Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataFragment$Options;

    sget-object v3, Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataFragment$Options;->CLEAR_PASSWORDS:Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataFragment$Options;

    sget-object v4, Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataFragment$Options;->CLEAR_AUTOFILL_DATA:Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataFragment$Options;

    filled-new-array {v0, v1, v2, v3, v4}, [Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataFragment$Options;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataFragment$Options;

    const/4 v1, 0x0

    const v2, 0x7f1402ee

    const-string v3, "CLEAR_HISTORY"

    invoke-direct {v0, v3, v1, v2}, Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataFragment$Options;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataFragment$Options;->CLEAR_HISTORY:Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataFragment$Options;

    new-instance v0, Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataFragment$Options;

    const/4 v1, 0x1

    const v2, 0x7f1402e8

    const-string v3, "CLEAR_COOKIES_AND_SITE_DATA"

    invoke-direct {v0, v3, v1, v2}, Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataFragment$Options;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataFragment$Options;->CLEAR_COOKIES_AND_SITE_DATA:Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataFragment$Options;

    new-instance v0, Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataFragment$Options;

    const/4 v1, 0x2

    const v2, 0x7f1402e7

    const-string v3, "CLEAR_CACHE"

    invoke-direct {v0, v3, v1, v2}, Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataFragment$Options;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataFragment$Options;->CLEAR_CACHE:Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataFragment$Options;

    new-instance v0, Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataFragment$Options;

    const/4 v1, 0x3

    const v2, 0x7f1402ef

    const-string v3, "CLEAR_PASSWORDS"

    invoke-direct {v0, v3, v1, v2}, Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataFragment$Options;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataFragment$Options;->CLEAR_PASSWORDS:Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataFragment$Options;

    new-instance v0, Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataFragment$Options;

    const/4 v1, 0x4

    const v2, 0x7f140437

    const-string v3, "CLEAR_AUTOFILL_DATA"

    invoke-direct {v0, v3, v1, v2}, Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataFragment$Options;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataFragment$Options;->CLEAR_AUTOFILL_DATA:Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataFragment$Options;

    invoke-static {}, Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataFragment$Options;->$values()[Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataFragment$Options;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataFragment$Options;->$VALUES:[Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataFragment$Options;

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

    iput p3, p0, Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataFragment$Options;->mResourceId:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataFragment$Options;
    .locals 1

    const-class v0, Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataFragment$Options;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataFragment$Options;

    return-object p0
.end method

.method public static values()[Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataFragment$Options;
    .locals 1

    sget-object v0, Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataFragment$Options;->$VALUES:[Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataFragment$Options;

    invoke-virtual {v0}, [Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataFragment$Options;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataFragment$Options;

    return-object v0
.end method


# virtual methods
.method public getResourceId()I
    .locals 0

    iget p0, p0, Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataFragment$Options;->mResourceId:I

    return p0
.end method
