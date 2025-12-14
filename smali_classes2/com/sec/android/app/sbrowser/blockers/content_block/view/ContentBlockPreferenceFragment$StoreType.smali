.class final enum Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockPreferenceFragment$StoreType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockPreferenceFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "StoreType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockPreferenceFragment$StoreType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockPreferenceFragment$StoreType;

.field public static final enum GALAXY_APPS:Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockPreferenceFragment$StoreType;

.field public static final enum PLAY_STORE:Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockPreferenceFragment$StoreType;


# instance fields
.field private mFallbackUri:Ljava/lang/String;

.field private mPackageName:Ljava/lang/String;

.field private mUri:Ljava/lang/String;


# direct methods
.method private static synthetic $values()[Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockPreferenceFragment$StoreType;
    .locals 2

    sget-object v0, Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockPreferenceFragment$StoreType;->GALAXY_APPS:Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockPreferenceFragment$StoreType;

    sget-object v1, Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockPreferenceFragment$StoreType;->PLAY_STORE:Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockPreferenceFragment$StoreType;

    filled-new-array {v0, v1}, [Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockPreferenceFragment$StoreType;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 13

    new-instance v6, Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockPreferenceFragment$StoreType;

    const-string v4, "samsungapps://ProductDetail/"

    const-string v5, "http://www.samsungapps.com/appquery/appDetail.as?appId="

    const-string v1, "GALAXY_APPS"

    const/4 v2, 0x0

    const-string v3, "com.sec.android.app.samsungapps"

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockPreferenceFragment$StoreType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v6, Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockPreferenceFragment$StoreType;->GALAXY_APPS:Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockPreferenceFragment$StoreType;

    new-instance v0, Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockPreferenceFragment$StoreType;

    const-string v11, "market://details?id="

    const-string v12, "http://play.google.com/store/apps/details?id="

    const-string v8, "PLAY_STORE"

    const/4 v9, 0x1

    const-string v10, "com.android.vending"

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockPreferenceFragment$StoreType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockPreferenceFragment$StoreType;->PLAY_STORE:Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockPreferenceFragment$StoreType;

    invoke-static {}, Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockPreferenceFragment$StoreType;->$values()[Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockPreferenceFragment$StoreType;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockPreferenceFragment$StoreType;->$VALUES:[Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockPreferenceFragment$StoreType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockPreferenceFragment$StoreType;->mPackageName:Ljava/lang/String;

    iput-object p4, p0, Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockPreferenceFragment$StoreType;->mUri:Ljava/lang/String;

    iput-object p5, p0, Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockPreferenceFragment$StoreType;->mFallbackUri:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockPreferenceFragment$StoreType;
    .locals 1

    const-class v0, Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockPreferenceFragment$StoreType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockPreferenceFragment$StoreType;

    return-object p0
.end method

.method public static values()[Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockPreferenceFragment$StoreType;
    .locals 1

    sget-object v0, Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockPreferenceFragment$StoreType;->$VALUES:[Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockPreferenceFragment$StoreType;

    invoke-virtual {v0}, [Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockPreferenceFragment$StoreType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockPreferenceFragment$StoreType;

    return-object v0
.end method


# virtual methods
.method public getFallbackUri()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockPreferenceFragment$StoreType;->mFallbackUri:Ljava/lang/String;

    return-object p0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockPreferenceFragment$StoreType;->mPackageName:Ljava/lang/String;

    return-object p0
.end method

.method public getUri()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockPreferenceFragment$StoreType;->mUri:Ljava/lang/String;

    return-object p0
.end method
