.class final enum Lcom/sec/android/app/sbrowser/settings/QuickAccessPreferenceFragment$SubContent;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/settings/QuickAccessPreferenceFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SubContent"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sec/android/app/sbrowser/settings/QuickAccessPreferenceFragment$SubContent;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/android/app/sbrowser/settings/QuickAccessPreferenceFragment$SubContent;

.field public static final enum MOST_VISITED:Lcom/sec/android/app/sbrowser/settings/QuickAccessPreferenceFragment$SubContent;

.field public static final enum NEWS_FEED:Lcom/sec/android/app/sbrowser/settings/QuickAccessPreferenceFragment$SubContent;

.field public static final enum NONE:Lcom/sec/android/app/sbrowser/settings/QuickAccessPreferenceFragment$SubContent;


# instance fields
.field private mId:I


# direct methods
.method private static synthetic $values()[Lcom/sec/android/app/sbrowser/settings/QuickAccessPreferenceFragment$SubContent;
    .locals 3

    sget-object v0, Lcom/sec/android/app/sbrowser/settings/QuickAccessPreferenceFragment$SubContent;->MOST_VISITED:Lcom/sec/android/app/sbrowser/settings/QuickAccessPreferenceFragment$SubContent;

    sget-object v1, Lcom/sec/android/app/sbrowser/settings/QuickAccessPreferenceFragment$SubContent;->NEWS_FEED:Lcom/sec/android/app/sbrowser/settings/QuickAccessPreferenceFragment$SubContent;

    sget-object v2, Lcom/sec/android/app/sbrowser/settings/QuickAccessPreferenceFragment$SubContent;->NONE:Lcom/sec/android/app/sbrowser/settings/QuickAccessPreferenceFragment$SubContent;

    filled-new-array {v0, v1, v2}, [Lcom/sec/android/app/sbrowser/settings/QuickAccessPreferenceFragment$SubContent;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/sec/android/app/sbrowser/settings/QuickAccessPreferenceFragment$SubContent;

    const-string v1, "MOST_VISITED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/sec/android/app/sbrowser/settings/QuickAccessPreferenceFragment$SubContent;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/android/app/sbrowser/settings/QuickAccessPreferenceFragment$SubContent;->MOST_VISITED:Lcom/sec/android/app/sbrowser/settings/QuickAccessPreferenceFragment$SubContent;

    new-instance v0, Lcom/sec/android/app/sbrowser/settings/QuickAccessPreferenceFragment$SubContent;

    const-string v1, "NEWS_FEED"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v2}, Lcom/sec/android/app/sbrowser/settings/QuickAccessPreferenceFragment$SubContent;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/android/app/sbrowser/settings/QuickAccessPreferenceFragment$SubContent;->NEWS_FEED:Lcom/sec/android/app/sbrowser/settings/QuickAccessPreferenceFragment$SubContent;

    new-instance v0, Lcom/sec/android/app/sbrowser/settings/QuickAccessPreferenceFragment$SubContent;

    const-string v1, "NONE"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2, v2}, Lcom/sec/android/app/sbrowser/settings/QuickAccessPreferenceFragment$SubContent;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/android/app/sbrowser/settings/QuickAccessPreferenceFragment$SubContent;->NONE:Lcom/sec/android/app/sbrowser/settings/QuickAccessPreferenceFragment$SubContent;

    invoke-static {}, Lcom/sec/android/app/sbrowser/settings/QuickAccessPreferenceFragment$SubContent;->$values()[Lcom/sec/android/app/sbrowser/settings/QuickAccessPreferenceFragment$SubContent;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/sbrowser/settings/QuickAccessPreferenceFragment$SubContent;->$VALUES:[Lcom/sec/android/app/sbrowser/settings/QuickAccessPreferenceFragment$SubContent;

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

    iput p3, p0, Lcom/sec/android/app/sbrowser/settings/QuickAccessPreferenceFragment$SubContent;->mId:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sec/android/app/sbrowser/settings/QuickAccessPreferenceFragment$SubContent;
    .locals 1

    const-class v0, Lcom/sec/android/app/sbrowser/settings/QuickAccessPreferenceFragment$SubContent;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/sbrowser/settings/QuickAccessPreferenceFragment$SubContent;

    return-object p0
.end method

.method public static values()[Lcom/sec/android/app/sbrowser/settings/QuickAccessPreferenceFragment$SubContent;
    .locals 1

    sget-object v0, Lcom/sec/android/app/sbrowser/settings/QuickAccessPreferenceFragment$SubContent;->$VALUES:[Lcom/sec/android/app/sbrowser/settings/QuickAccessPreferenceFragment$SubContent;

    invoke-virtual {v0}, [Lcom/sec/android/app/sbrowser/settings/QuickAccessPreferenceFragment$SubContent;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/android/app/sbrowser/settings/QuickAccessPreferenceFragment$SubContent;

    return-object v0
.end method


# virtual methods
.method public getId()I
    .locals 0

    iget p0, p0, Lcom/sec/android/app/sbrowser/settings/QuickAccessPreferenceFragment$SubContent;->mId:I

    return p0
.end method
