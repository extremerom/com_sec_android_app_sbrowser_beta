.class final enum Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/view/CustomizeToolbarScrollView$Direction;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/view/CustomizeToolbarScrollView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Direction"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/view/CustomizeToolbarScrollView$Direction;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/view/CustomizeToolbarScrollView$Direction;

.field public static final enum DOWNWARD:Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/view/CustomizeToolbarScrollView$Direction;

.field public static final enum NONE:Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/view/CustomizeToolbarScrollView$Direction;

.field public static final enum UPWARD:Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/view/CustomizeToolbarScrollView$Direction;


# direct methods
.method private static synthetic $values()[Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/view/CustomizeToolbarScrollView$Direction;
    .locals 3

    sget-object v0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/view/CustomizeToolbarScrollView$Direction;->NONE:Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/view/CustomizeToolbarScrollView$Direction;

    sget-object v1, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/view/CustomizeToolbarScrollView$Direction;->UPWARD:Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/view/CustomizeToolbarScrollView$Direction;

    sget-object v2, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/view/CustomizeToolbarScrollView$Direction;->DOWNWARD:Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/view/CustomizeToolbarScrollView$Direction;

    filled-new-array {v0, v1, v2}, [Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/view/CustomizeToolbarScrollView$Direction;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/view/CustomizeToolbarScrollView$Direction;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/view/CustomizeToolbarScrollView$Direction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/view/CustomizeToolbarScrollView$Direction;->NONE:Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/view/CustomizeToolbarScrollView$Direction;

    new-instance v0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/view/CustomizeToolbarScrollView$Direction;

    const-string v1, "UPWARD"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/view/CustomizeToolbarScrollView$Direction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/view/CustomizeToolbarScrollView$Direction;->UPWARD:Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/view/CustomizeToolbarScrollView$Direction;

    new-instance v0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/view/CustomizeToolbarScrollView$Direction;

    const-string v1, "DOWNWARD"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/view/CustomizeToolbarScrollView$Direction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/view/CustomizeToolbarScrollView$Direction;->DOWNWARD:Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/view/CustomizeToolbarScrollView$Direction;

    invoke-static {}, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/view/CustomizeToolbarScrollView$Direction;->$values()[Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/view/CustomizeToolbarScrollView$Direction;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/view/CustomizeToolbarScrollView$Direction;->$VALUES:[Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/view/CustomizeToolbarScrollView$Direction;

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

.method public static valueOf(Ljava/lang/String;)Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/view/CustomizeToolbarScrollView$Direction;
    .locals 1

    const-class v0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/view/CustomizeToolbarScrollView$Direction;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/view/CustomizeToolbarScrollView$Direction;

    return-object p0
.end method

.method public static values()[Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/view/CustomizeToolbarScrollView$Direction;
    .locals 1

    sget-object v0, Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/view/CustomizeToolbarScrollView$Direction;->$VALUES:[Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/view/CustomizeToolbarScrollView$Direction;

    invoke-virtual {v0}, [Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/view/CustomizeToolbarScrollView$Direction;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/android/app/sbrowser/settings/customize_toolbar/ui/view/CustomizeToolbarScrollView$Direction;

    return-object v0
.end method
