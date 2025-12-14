.class public final enum Lcom/sec/android/app/sbrowser/common/artificial_intelligence/AIViewControllerUtil$ChildDialogEvent;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/common/artificial_intelligence/AIViewControllerUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ChildDialogEvent"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sec/android/app/sbrowser/common/artificial_intelligence/AIViewControllerUtil$ChildDialogEvent;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0008\u0006\u0008\u0086\u0081\u0002\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003j\u0002\u0008\u0004j\u0002\u0008\u0005j\u0002\u0008\u0006\u00a8\u0006\u0007"
    }
    d2 = {
        "Lcom/sec/android/app/sbrowser/common/artificial_intelligence/AIViewControllerUtil$ChildDialogEvent;",
        "",
        "<init>",
        "(Ljava/lang/String;I)V",
        "SUMMARY_STYLE_CHANGE",
        "SUMMARY_STYLE_DIALOG_DISMISS",
        "INFO_DETAIL_DIALOG_DISMISS",
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

.field private static final synthetic $VALUES:[Lcom/sec/android/app/sbrowser/common/artificial_intelligence/AIViewControllerUtil$ChildDialogEvent;

.field public static final enum INFO_DETAIL_DIALOG_DISMISS:Lcom/sec/android/app/sbrowser/common/artificial_intelligence/AIViewControllerUtil$ChildDialogEvent;

.field public static final enum SUMMARY_STYLE_CHANGE:Lcom/sec/android/app/sbrowser/common/artificial_intelligence/AIViewControllerUtil$ChildDialogEvent;

.field public static final enum SUMMARY_STYLE_DIALOG_DISMISS:Lcom/sec/android/app/sbrowser/common/artificial_intelligence/AIViewControllerUtil$ChildDialogEvent;


# direct methods
.method private static final synthetic $values()[Lcom/sec/android/app/sbrowser/common/artificial_intelligence/AIViewControllerUtil$ChildDialogEvent;
    .locals 3

    sget-object v0, Lcom/sec/android/app/sbrowser/common/artificial_intelligence/AIViewControllerUtil$ChildDialogEvent;->SUMMARY_STYLE_CHANGE:Lcom/sec/android/app/sbrowser/common/artificial_intelligence/AIViewControllerUtil$ChildDialogEvent;

    sget-object v1, Lcom/sec/android/app/sbrowser/common/artificial_intelligence/AIViewControllerUtil$ChildDialogEvent;->SUMMARY_STYLE_DIALOG_DISMISS:Lcom/sec/android/app/sbrowser/common/artificial_intelligence/AIViewControllerUtil$ChildDialogEvent;

    sget-object v2, Lcom/sec/android/app/sbrowser/common/artificial_intelligence/AIViewControllerUtil$ChildDialogEvent;->INFO_DETAIL_DIALOG_DISMISS:Lcom/sec/android/app/sbrowser/common/artificial_intelligence/AIViewControllerUtil$ChildDialogEvent;

    filled-new-array {v0, v1, v2}, [Lcom/sec/android/app/sbrowser/common/artificial_intelligence/AIViewControllerUtil$ChildDialogEvent;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/sec/android/app/sbrowser/common/artificial_intelligence/AIViewControllerUtil$ChildDialogEvent;

    const-string v1, "SUMMARY_STYLE_CHANGE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/sbrowser/common/artificial_intelligence/AIViewControllerUtil$ChildDialogEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/app/sbrowser/common/artificial_intelligence/AIViewControllerUtil$ChildDialogEvent;->SUMMARY_STYLE_CHANGE:Lcom/sec/android/app/sbrowser/common/artificial_intelligence/AIViewControllerUtil$ChildDialogEvent;

    new-instance v0, Lcom/sec/android/app/sbrowser/common/artificial_intelligence/AIViewControllerUtil$ChildDialogEvent;

    const-string v1, "SUMMARY_STYLE_DIALOG_DISMISS"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/sbrowser/common/artificial_intelligence/AIViewControllerUtil$ChildDialogEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/app/sbrowser/common/artificial_intelligence/AIViewControllerUtil$ChildDialogEvent;->SUMMARY_STYLE_DIALOG_DISMISS:Lcom/sec/android/app/sbrowser/common/artificial_intelligence/AIViewControllerUtil$ChildDialogEvent;

    new-instance v0, Lcom/sec/android/app/sbrowser/common/artificial_intelligence/AIViewControllerUtil$ChildDialogEvent;

    const-string v1, "INFO_DETAIL_DIALOG_DISMISS"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/sbrowser/common/artificial_intelligence/AIViewControllerUtil$ChildDialogEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/app/sbrowser/common/artificial_intelligence/AIViewControllerUtil$ChildDialogEvent;->INFO_DETAIL_DIALOG_DISMISS:Lcom/sec/android/app/sbrowser/common/artificial_intelligence/AIViewControllerUtil$ChildDialogEvent;

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/artificial_intelligence/AIViewControllerUtil$ChildDialogEvent;->$values()[Lcom/sec/android/app/sbrowser/common/artificial_intelligence/AIViewControllerUtil$ChildDialogEvent;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/sbrowser/common/artificial_intelligence/AIViewControllerUtil$ChildDialogEvent;->$VALUES:[Lcom/sec/android/app/sbrowser/common/artificial_intelligence/AIViewControllerUtil$ChildDialogEvent;

    invoke-static {v0}, LP6/b;->b([Ljava/lang/Enum;)Llb/b;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/sbrowser/common/artificial_intelligence/AIViewControllerUtil$ChildDialogEvent;->$ENTRIES:Llb/a;

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

.method public static valueOf(Ljava/lang/String;)Lcom/sec/android/app/sbrowser/common/artificial_intelligence/AIViewControllerUtil$ChildDialogEvent;
    .locals 1

    const-class v0, Lcom/sec/android/app/sbrowser/common/artificial_intelligence/AIViewControllerUtil$ChildDialogEvent;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/sbrowser/common/artificial_intelligence/AIViewControllerUtil$ChildDialogEvent;

    return-object p0
.end method

.method public static values()[Lcom/sec/android/app/sbrowser/common/artificial_intelligence/AIViewControllerUtil$ChildDialogEvent;
    .locals 1

    sget-object v0, Lcom/sec/android/app/sbrowser/common/artificial_intelligence/AIViewControllerUtil$ChildDialogEvent;->$VALUES:[Lcom/sec/android/app/sbrowser/common/artificial_intelligence/AIViewControllerUtil$ChildDialogEvent;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/android/app/sbrowser/common/artificial_intelligence/AIViewControllerUtil$ChildDialogEvent;

    return-object v0
.end method
