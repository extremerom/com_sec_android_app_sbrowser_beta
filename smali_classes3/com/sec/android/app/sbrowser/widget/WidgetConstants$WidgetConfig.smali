.class public final enum Lcom/sec/android/app/sbrowser/widget/WidgetConstants$WidgetConfig;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/widget/WidgetConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "WidgetConfig"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sec/android/app/sbrowser/widget/WidgetConstants$WidgetConfig;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0008\u0006\u0008\u0086\u0081\u0002\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003j\u0002\u0008\u0004j\u0002\u0008\u0005j\u0002\u0008\u0006\u00a8\u0006\u0007"
    }
    d2 = {
        "Lcom/sec/android/app/sbrowser/widget/WidgetConstants$WidgetConfig;",
        "",
        "<init>",
        "(Ljava/lang/String;I)V",
        "WIDGET_COLOR",
        "COLOR_MODE",
        "ALPHA_VALUE",
        "SBrowser_highendBetaGlobal64Release"
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

.field private static final synthetic $VALUES:[Lcom/sec/android/app/sbrowser/widget/WidgetConstants$WidgetConfig;

.field public static final enum ALPHA_VALUE:Lcom/sec/android/app/sbrowser/widget/WidgetConstants$WidgetConfig;

.field public static final enum COLOR_MODE:Lcom/sec/android/app/sbrowser/widget/WidgetConstants$WidgetConfig;

.field public static final enum WIDGET_COLOR:Lcom/sec/android/app/sbrowser/widget/WidgetConstants$WidgetConfig;


# direct methods
.method private static final synthetic $values()[Lcom/sec/android/app/sbrowser/widget/WidgetConstants$WidgetConfig;
    .locals 3

    sget-object v0, Lcom/sec/android/app/sbrowser/widget/WidgetConstants$WidgetConfig;->WIDGET_COLOR:Lcom/sec/android/app/sbrowser/widget/WidgetConstants$WidgetConfig;

    sget-object v1, Lcom/sec/android/app/sbrowser/widget/WidgetConstants$WidgetConfig;->COLOR_MODE:Lcom/sec/android/app/sbrowser/widget/WidgetConstants$WidgetConfig;

    sget-object v2, Lcom/sec/android/app/sbrowser/widget/WidgetConstants$WidgetConfig;->ALPHA_VALUE:Lcom/sec/android/app/sbrowser/widget/WidgetConstants$WidgetConfig;

    filled-new-array {v0, v1, v2}, [Lcom/sec/android/app/sbrowser/widget/WidgetConstants$WidgetConfig;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/sec/android/app/sbrowser/widget/WidgetConstants$WidgetConfig;

    const-string v1, "WIDGET_COLOR"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/sbrowser/widget/WidgetConstants$WidgetConfig;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/app/sbrowser/widget/WidgetConstants$WidgetConfig;->WIDGET_COLOR:Lcom/sec/android/app/sbrowser/widget/WidgetConstants$WidgetConfig;

    new-instance v0, Lcom/sec/android/app/sbrowser/widget/WidgetConstants$WidgetConfig;

    const-string v1, "COLOR_MODE"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/sbrowser/widget/WidgetConstants$WidgetConfig;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/app/sbrowser/widget/WidgetConstants$WidgetConfig;->COLOR_MODE:Lcom/sec/android/app/sbrowser/widget/WidgetConstants$WidgetConfig;

    new-instance v0, Lcom/sec/android/app/sbrowser/widget/WidgetConstants$WidgetConfig;

    const-string v1, "ALPHA_VALUE"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/sbrowser/widget/WidgetConstants$WidgetConfig;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/app/sbrowser/widget/WidgetConstants$WidgetConfig;->ALPHA_VALUE:Lcom/sec/android/app/sbrowser/widget/WidgetConstants$WidgetConfig;

    invoke-static {}, Lcom/sec/android/app/sbrowser/widget/WidgetConstants$WidgetConfig;->$values()[Lcom/sec/android/app/sbrowser/widget/WidgetConstants$WidgetConfig;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/sbrowser/widget/WidgetConstants$WidgetConfig;->$VALUES:[Lcom/sec/android/app/sbrowser/widget/WidgetConstants$WidgetConfig;

    invoke-static {v0}, LP6/b;->b([Ljava/lang/Enum;)Llb/b;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/sbrowser/widget/WidgetConstants$WidgetConfig;->$ENTRIES:Llb/a;

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

.method public static valueOf(Ljava/lang/String;)Lcom/sec/android/app/sbrowser/widget/WidgetConstants$WidgetConfig;
    .locals 1

    const-class v0, Lcom/sec/android/app/sbrowser/widget/WidgetConstants$WidgetConfig;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/sbrowser/widget/WidgetConstants$WidgetConfig;

    return-object p0
.end method

.method public static values()[Lcom/sec/android/app/sbrowser/widget/WidgetConstants$WidgetConfig;
    .locals 1

    sget-object v0, Lcom/sec/android/app/sbrowser/widget/WidgetConstants$WidgetConfig;->$VALUES:[Lcom/sec/android/app/sbrowser/widget/WidgetConstants$WidgetConfig;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/android/app/sbrowser/widget/WidgetConstants$WidgetConfig;

    return-object v0
.end method
