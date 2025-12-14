.class final enum Lcom/sec/android/app/sbrowser/settings/HomePagePreferenceFragment$QuickAccessSubContent;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/settings/HomePagePreferenceFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "QuickAccessSubContent"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sec/android/app/sbrowser/settings/HomePagePreferenceFragment$QuickAccessSubContent;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/android/app/sbrowser/settings/HomePagePreferenceFragment$QuickAccessSubContent;

.field public static final enum MOST_VISITED:Lcom/sec/android/app/sbrowser/settings/HomePagePreferenceFragment$QuickAccessSubContent;

.field public static final enum NEWS_FEED:Lcom/sec/android/app/sbrowser/settings/HomePagePreferenceFragment$QuickAccessSubContent;

.field public static final enum NONE:Lcom/sec/android/app/sbrowser/settings/HomePagePreferenceFragment$QuickAccessSubContent;


# instance fields
.field private mId:I


# direct methods
.method private static synthetic $values()[Lcom/sec/android/app/sbrowser/settings/HomePagePreferenceFragment$QuickAccessSubContent;
    .locals 3

    sget-object v0, Lcom/sec/android/app/sbrowser/settings/HomePagePreferenceFragment$QuickAccessSubContent;->MOST_VISITED:Lcom/sec/android/app/sbrowser/settings/HomePagePreferenceFragment$QuickAccessSubContent;

    sget-object v1, Lcom/sec/android/app/sbrowser/settings/HomePagePreferenceFragment$QuickAccessSubContent;->NEWS_FEED:Lcom/sec/android/app/sbrowser/settings/HomePagePreferenceFragment$QuickAccessSubContent;

    sget-object v2, Lcom/sec/android/app/sbrowser/settings/HomePagePreferenceFragment$QuickAccessSubContent;->NONE:Lcom/sec/android/app/sbrowser/settings/HomePagePreferenceFragment$QuickAccessSubContent;

    filled-new-array {v0, v1, v2}, [Lcom/sec/android/app/sbrowser/settings/HomePagePreferenceFragment$QuickAccessSubContent;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/sec/android/app/sbrowser/settings/HomePagePreferenceFragment$QuickAccessSubContent;

    const-string v1, "MOST_VISITED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/sec/android/app/sbrowser/settings/HomePagePreferenceFragment$QuickAccessSubContent;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/android/app/sbrowser/settings/HomePagePreferenceFragment$QuickAccessSubContent;->MOST_VISITED:Lcom/sec/android/app/sbrowser/settings/HomePagePreferenceFragment$QuickAccessSubContent;

    new-instance v0, Lcom/sec/android/app/sbrowser/settings/HomePagePreferenceFragment$QuickAccessSubContent;

    const-string v1, "NEWS_FEED"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v2}, Lcom/sec/android/app/sbrowser/settings/HomePagePreferenceFragment$QuickAccessSubContent;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/android/app/sbrowser/settings/HomePagePreferenceFragment$QuickAccessSubContent;->NEWS_FEED:Lcom/sec/android/app/sbrowser/settings/HomePagePreferenceFragment$QuickAccessSubContent;

    new-instance v0, Lcom/sec/android/app/sbrowser/settings/HomePagePreferenceFragment$QuickAccessSubContent;

    const-string v1, "NONE"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2, v2}, Lcom/sec/android/app/sbrowser/settings/HomePagePreferenceFragment$QuickAccessSubContent;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/android/app/sbrowser/settings/HomePagePreferenceFragment$QuickAccessSubContent;->NONE:Lcom/sec/android/app/sbrowser/settings/HomePagePreferenceFragment$QuickAccessSubContent;

    invoke-static {}, Lcom/sec/android/app/sbrowser/settings/HomePagePreferenceFragment$QuickAccessSubContent;->$values()[Lcom/sec/android/app/sbrowser/settings/HomePagePreferenceFragment$QuickAccessSubContent;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/sbrowser/settings/HomePagePreferenceFragment$QuickAccessSubContent;->$VALUES:[Lcom/sec/android/app/sbrowser/settings/HomePagePreferenceFragment$QuickAccessSubContent;

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

    iput p3, p0, Lcom/sec/android/app/sbrowser/settings/HomePagePreferenceFragment$QuickAccessSubContent;->mId:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sec/android/app/sbrowser/settings/HomePagePreferenceFragment$QuickAccessSubContent;
    .locals 1

    const-class v0, Lcom/sec/android/app/sbrowser/settings/HomePagePreferenceFragment$QuickAccessSubContent;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/sbrowser/settings/HomePagePreferenceFragment$QuickAccessSubContent;

    return-object p0
.end method

.method public static values()[Lcom/sec/android/app/sbrowser/settings/HomePagePreferenceFragment$QuickAccessSubContent;
    .locals 1

    sget-object v0, Lcom/sec/android/app/sbrowser/settings/HomePagePreferenceFragment$QuickAccessSubContent;->$VALUES:[Lcom/sec/android/app/sbrowser/settings/HomePagePreferenceFragment$QuickAccessSubContent;

    invoke-virtual {v0}, [Lcom/sec/android/app/sbrowser/settings/HomePagePreferenceFragment$QuickAccessSubContent;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/android/app/sbrowser/settings/HomePagePreferenceFragment$QuickAccessSubContent;

    return-object v0
.end method
