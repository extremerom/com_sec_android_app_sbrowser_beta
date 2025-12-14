.class final enum Lcom/sec/android/app/sbrowser/trans_bar/TransBarVisibleHandler$VisibilityType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/trans_bar/TransBarVisibleHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "VisibilityType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sec/android/app/sbrowser/trans_bar/TransBarVisibleHandler$VisibilityType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/android/app/sbrowser/trans_bar/TransBarVisibleHandler$VisibilityType;

.field public static final enum VISIBILITY_OFFSET_CHANGED:Lcom/sec/android/app/sbrowser/trans_bar/TransBarVisibleHandler$VisibilityType;

.field public static final enum VISIBILITY_TOUCH_EVENT:Lcom/sec/android/app/sbrowser/trans_bar/TransBarVisibleHandler$VisibilityType;


# direct methods
.method private static synthetic $values()[Lcom/sec/android/app/sbrowser/trans_bar/TransBarVisibleHandler$VisibilityType;
    .locals 2

    sget-object v0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarVisibleHandler$VisibilityType;->VISIBILITY_OFFSET_CHANGED:Lcom/sec/android/app/sbrowser/trans_bar/TransBarVisibleHandler$VisibilityType;

    sget-object v1, Lcom/sec/android/app/sbrowser/trans_bar/TransBarVisibleHandler$VisibilityType;->VISIBILITY_TOUCH_EVENT:Lcom/sec/android/app/sbrowser/trans_bar/TransBarVisibleHandler$VisibilityType;

    filled-new-array {v0, v1}, [Lcom/sec/android/app/sbrowser/trans_bar/TransBarVisibleHandler$VisibilityType;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarVisibleHandler$VisibilityType;

    const-string v1, "VISIBILITY_OFFSET_CHANGED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/sbrowser/trans_bar/TransBarVisibleHandler$VisibilityType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarVisibleHandler$VisibilityType;->VISIBILITY_OFFSET_CHANGED:Lcom/sec/android/app/sbrowser/trans_bar/TransBarVisibleHandler$VisibilityType;

    new-instance v0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarVisibleHandler$VisibilityType;

    const-string v1, "VISIBILITY_TOUCH_EVENT"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/sbrowser/trans_bar/TransBarVisibleHandler$VisibilityType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarVisibleHandler$VisibilityType;->VISIBILITY_TOUCH_EVENT:Lcom/sec/android/app/sbrowser/trans_bar/TransBarVisibleHandler$VisibilityType;

    invoke-static {}, Lcom/sec/android/app/sbrowser/trans_bar/TransBarVisibleHandler$VisibilityType;->$values()[Lcom/sec/android/app/sbrowser/trans_bar/TransBarVisibleHandler$VisibilityType;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarVisibleHandler$VisibilityType;->$VALUES:[Lcom/sec/android/app/sbrowser/trans_bar/TransBarVisibleHandler$VisibilityType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/sec/android/app/sbrowser/trans_bar/TransBarVisibleHandler$VisibilityType;
    .locals 1

    const-class v0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarVisibleHandler$VisibilityType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarVisibleHandler$VisibilityType;

    return-object p0
.end method

.method public static values()[Lcom/sec/android/app/sbrowser/trans_bar/TransBarVisibleHandler$VisibilityType;
    .locals 1

    sget-object v0, Lcom/sec/android/app/sbrowser/trans_bar/TransBarVisibleHandler$VisibilityType;->$VALUES:[Lcom/sec/android/app/sbrowser/trans_bar/TransBarVisibleHandler$VisibilityType;

    invoke-virtual {v0}, [Lcom/sec/android/app/sbrowser/trans_bar/TransBarVisibleHandler$VisibilityType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/android/app/sbrowser/trans_bar/TransBarVisibleHandler$VisibilityType;

    return-object v0
.end method
