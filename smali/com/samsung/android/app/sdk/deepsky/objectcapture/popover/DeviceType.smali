.class public final enum Lcom/samsung/android/app/sdk/deepsky/objectcapture/popover/DeviceType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/app/sdk/deepsky/objectcapture/popover/DeviceType;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0008\u0006\u0008\u0086\u0081\u0002\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003j\u0002\u0008\u0004j\u0002\u0008\u0005j\u0002\u0008\u0006\u00a8\u0006\u0007"
    }
    d2 = {
        "Lcom/samsung/android/app/sdk/deepsky/objectcapture/popover/DeviceType;",
        "",
        "<init>",
        "(Ljava/lang/String;I)V",
        "NORMAL_TYPE",
        "FOLD_BOOK_TYPE",
        "LARGE_SCREEN",
        "deepsky-sdk-objectcapture-8.5.4_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field private static final synthetic $ENTRIES:Llb/a;

.field private static final synthetic $VALUES:[Lcom/samsung/android/app/sdk/deepsky/objectcapture/popover/DeviceType;

.field public static final enum FOLD_BOOK_TYPE:Lcom/samsung/android/app/sdk/deepsky/objectcapture/popover/DeviceType;

.field public static final enum LARGE_SCREEN:Lcom/samsung/android/app/sdk/deepsky/objectcapture/popover/DeviceType;

.field public static final enum NORMAL_TYPE:Lcom/samsung/android/app/sdk/deepsky/objectcapture/popover/DeviceType;


# direct methods
.method private static final synthetic $values()[Lcom/samsung/android/app/sdk/deepsky/objectcapture/popover/DeviceType;
    .locals 3

    sget-object v0, Lcom/samsung/android/app/sdk/deepsky/objectcapture/popover/DeviceType;->NORMAL_TYPE:Lcom/samsung/android/app/sdk/deepsky/objectcapture/popover/DeviceType;

    sget-object v1, Lcom/samsung/android/app/sdk/deepsky/objectcapture/popover/DeviceType;->FOLD_BOOK_TYPE:Lcom/samsung/android/app/sdk/deepsky/objectcapture/popover/DeviceType;

    sget-object v2, Lcom/samsung/android/app/sdk/deepsky/objectcapture/popover/DeviceType;->LARGE_SCREEN:Lcom/samsung/android/app/sdk/deepsky/objectcapture/popover/DeviceType;

    filled-new-array {v0, v1, v2}, [Lcom/samsung/android/app/sdk/deepsky/objectcapture/popover/DeviceType;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/samsung/android/app/sdk/deepsky/objectcapture/popover/DeviceType;

    const-string v1, "NORMAL_TYPE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/app/sdk/deepsky/objectcapture/popover/DeviceType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/app/sdk/deepsky/objectcapture/popover/DeviceType;->NORMAL_TYPE:Lcom/samsung/android/app/sdk/deepsky/objectcapture/popover/DeviceType;

    new-instance v0, Lcom/samsung/android/app/sdk/deepsky/objectcapture/popover/DeviceType;

    const-string v1, "FOLD_BOOK_TYPE"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/app/sdk/deepsky/objectcapture/popover/DeviceType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/app/sdk/deepsky/objectcapture/popover/DeviceType;->FOLD_BOOK_TYPE:Lcom/samsung/android/app/sdk/deepsky/objectcapture/popover/DeviceType;

    new-instance v0, Lcom/samsung/android/app/sdk/deepsky/objectcapture/popover/DeviceType;

    const-string v1, "LARGE_SCREEN"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/app/sdk/deepsky/objectcapture/popover/DeviceType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/app/sdk/deepsky/objectcapture/popover/DeviceType;->LARGE_SCREEN:Lcom/samsung/android/app/sdk/deepsky/objectcapture/popover/DeviceType;

    invoke-static {}, Lcom/samsung/android/app/sdk/deepsky/objectcapture/popover/DeviceType;->$values()[Lcom/samsung/android/app/sdk/deepsky/objectcapture/popover/DeviceType;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/sdk/deepsky/objectcapture/popover/DeviceType;->$VALUES:[Lcom/samsung/android/app/sdk/deepsky/objectcapture/popover/DeviceType;

    invoke-static {v0}, LP6/b;->b([Ljava/lang/Enum;)Llb/b;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/sdk/deepsky/objectcapture/popover/DeviceType;->$ENTRIES:Llb/a;

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

.method public static getEntries()Llb/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Llb/a;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, Lcom/samsung/android/app/sdk/deepsky/objectcapture/popover/DeviceType;->$ENTRIES:Llb/a;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/app/sdk/deepsky/objectcapture/popover/DeviceType;
    .locals 1

    const-class v0, Lcom/samsung/android/app/sdk/deepsky/objectcapture/popover/DeviceType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/app/sdk/deepsky/objectcapture/popover/DeviceType;

    return-object p0
.end method

.method public static values()[Lcom/samsung/android/app/sdk/deepsky/objectcapture/popover/DeviceType;
    .locals 1

    sget-object v0, Lcom/samsung/android/app/sdk/deepsky/objectcapture/popover/DeviceType;->$VALUES:[Lcom/samsung/android/app/sdk/deepsky/objectcapture/popover/DeviceType;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/app/sdk/deepsky/objectcapture/popover/DeviceType;

    return-object v0
.end method
