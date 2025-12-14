.class public final enum Lcom/sec/android/app/sbrowser/common/utils/WebContentFetcher$ContentType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/common/utils/WebContentFetcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ContentType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sec/android/app/sbrowser/common/utils/WebContentFetcher$ContentType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/android/app/sbrowser/common/utils/WebContentFetcher$ContentType;

.field public static final enum NO_CONTENT:Lcom/sec/android/app/sbrowser/common/utils/WebContentFetcher$ContentType;

.field public static final enum OG_IMAGE:Lcom/sec/android/app/sbrowser/common/utils/WebContentFetcher$ContentType;

.field public static final enum OG_TITLE:Lcom/sec/android/app/sbrowser/common/utils/WebContentFetcher$ContentType;

.field public static final enum TITLE:Lcom/sec/android/app/sbrowser/common/utils/WebContentFetcher$ContentType;

.field public static final enum TOUCH_ICON:Lcom/sec/android/app/sbrowser/common/utils/WebContentFetcher$ContentType;

.field public static final enum TOUCH_ICON_URL:Lcom/sec/android/app/sbrowser/common/utils/WebContentFetcher$ContentType;

.field public static final enum VERSION:Lcom/sec/android/app/sbrowser/common/utils/WebContentFetcher$ContentType;


# direct methods
.method private static synthetic $values()[Lcom/sec/android/app/sbrowser/common/utils/WebContentFetcher$ContentType;
    .locals 7

    sget-object v0, Lcom/sec/android/app/sbrowser/common/utils/WebContentFetcher$ContentType;->NO_CONTENT:Lcom/sec/android/app/sbrowser/common/utils/WebContentFetcher$ContentType;

    sget-object v1, Lcom/sec/android/app/sbrowser/common/utils/WebContentFetcher$ContentType;->TOUCH_ICON:Lcom/sec/android/app/sbrowser/common/utils/WebContentFetcher$ContentType;

    sget-object v2, Lcom/sec/android/app/sbrowser/common/utils/WebContentFetcher$ContentType;->TOUCH_ICON_URL:Lcom/sec/android/app/sbrowser/common/utils/WebContentFetcher$ContentType;

    sget-object v3, Lcom/sec/android/app/sbrowser/common/utils/WebContentFetcher$ContentType;->TITLE:Lcom/sec/android/app/sbrowser/common/utils/WebContentFetcher$ContentType;

    sget-object v4, Lcom/sec/android/app/sbrowser/common/utils/WebContentFetcher$ContentType;->OG_TITLE:Lcom/sec/android/app/sbrowser/common/utils/WebContentFetcher$ContentType;

    sget-object v5, Lcom/sec/android/app/sbrowser/common/utils/WebContentFetcher$ContentType;->OG_IMAGE:Lcom/sec/android/app/sbrowser/common/utils/WebContentFetcher$ContentType;

    sget-object v6, Lcom/sec/android/app/sbrowser/common/utils/WebContentFetcher$ContentType;->VERSION:Lcom/sec/android/app/sbrowser/common/utils/WebContentFetcher$ContentType;

    filled-new-array/range {v0 .. v6}, [Lcom/sec/android/app/sbrowser/common/utils/WebContentFetcher$ContentType;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/sec/android/app/sbrowser/common/utils/WebContentFetcher$ContentType;

    const-string v1, "NO_CONTENT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/sbrowser/common/utils/WebContentFetcher$ContentType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/app/sbrowser/common/utils/WebContentFetcher$ContentType;->NO_CONTENT:Lcom/sec/android/app/sbrowser/common/utils/WebContentFetcher$ContentType;

    new-instance v0, Lcom/sec/android/app/sbrowser/common/utils/WebContentFetcher$ContentType;

    const-string v1, "TOUCH_ICON"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/sbrowser/common/utils/WebContentFetcher$ContentType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/app/sbrowser/common/utils/WebContentFetcher$ContentType;->TOUCH_ICON:Lcom/sec/android/app/sbrowser/common/utils/WebContentFetcher$ContentType;

    new-instance v0, Lcom/sec/android/app/sbrowser/common/utils/WebContentFetcher$ContentType;

    const-string v1, "TOUCH_ICON_URL"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/sbrowser/common/utils/WebContentFetcher$ContentType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/app/sbrowser/common/utils/WebContentFetcher$ContentType;->TOUCH_ICON_URL:Lcom/sec/android/app/sbrowser/common/utils/WebContentFetcher$ContentType;

    new-instance v0, Lcom/sec/android/app/sbrowser/common/utils/WebContentFetcher$ContentType;

    const-string v1, "TITLE"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/sbrowser/common/utils/WebContentFetcher$ContentType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/app/sbrowser/common/utils/WebContentFetcher$ContentType;->TITLE:Lcom/sec/android/app/sbrowser/common/utils/WebContentFetcher$ContentType;

    new-instance v0, Lcom/sec/android/app/sbrowser/common/utils/WebContentFetcher$ContentType;

    const-string v1, "OG_TITLE"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/sbrowser/common/utils/WebContentFetcher$ContentType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/app/sbrowser/common/utils/WebContentFetcher$ContentType;->OG_TITLE:Lcom/sec/android/app/sbrowser/common/utils/WebContentFetcher$ContentType;

    new-instance v0, Lcom/sec/android/app/sbrowser/common/utils/WebContentFetcher$ContentType;

    const-string v1, "OG_IMAGE"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/sbrowser/common/utils/WebContentFetcher$ContentType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/app/sbrowser/common/utils/WebContentFetcher$ContentType;->OG_IMAGE:Lcom/sec/android/app/sbrowser/common/utils/WebContentFetcher$ContentType;

    new-instance v0, Lcom/sec/android/app/sbrowser/common/utils/WebContentFetcher$ContentType;

    const-string v1, "VERSION"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/sbrowser/common/utils/WebContentFetcher$ContentType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/app/sbrowser/common/utils/WebContentFetcher$ContentType;->VERSION:Lcom/sec/android/app/sbrowser/common/utils/WebContentFetcher$ContentType;

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/utils/WebContentFetcher$ContentType;->$values()[Lcom/sec/android/app/sbrowser/common/utils/WebContentFetcher$ContentType;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/sbrowser/common/utils/WebContentFetcher$ContentType;->$VALUES:[Lcom/sec/android/app/sbrowser/common/utils/WebContentFetcher$ContentType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/sec/android/app/sbrowser/common/utils/WebContentFetcher$ContentType;
    .locals 1

    const-class v0, Lcom/sec/android/app/sbrowser/common/utils/WebContentFetcher$ContentType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/sbrowser/common/utils/WebContentFetcher$ContentType;

    return-object p0
.end method

.method public static values()[Lcom/sec/android/app/sbrowser/common/utils/WebContentFetcher$ContentType;
    .locals 1

    sget-object v0, Lcom/sec/android/app/sbrowser/common/utils/WebContentFetcher$ContentType;->$VALUES:[Lcom/sec/android/app/sbrowser/common/utils/WebContentFetcher$ContentType;

    invoke-virtual {v0}, [Lcom/sec/android/app/sbrowser/common/utils/WebContentFetcher$ContentType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/android/app/sbrowser/common/utils/WebContentFetcher$ContentType;

    return-object v0
.end method
