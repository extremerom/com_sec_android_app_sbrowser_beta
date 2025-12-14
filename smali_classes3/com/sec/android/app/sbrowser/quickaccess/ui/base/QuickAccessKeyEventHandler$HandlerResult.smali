.class public final enum Lcom/sec/android/app/sbrowser/quickaccess/ui/base/QuickAccessKeyEventHandler$HandlerResult;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/quickaccess/ui/base/QuickAccessKeyEventHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "HandlerResult"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sec/android/app/sbrowser/quickaccess/ui/base/QuickAccessKeyEventHandler$HandlerResult;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u000b\u0008\u0086\u0081\u0002\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u0011\u0008\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007j\u0002\u0008\u0008j\u0002\u0008\tj\u0002\u0008\nj\u0002\u0008\u000bj\u0002\u0008\u000cj\u0002\u0008\r\u00a8\u0006\u000e"
    }
    d2 = {
        "Lcom/sec/android/app/sbrowser/quickaccess/ui/base/QuickAccessKeyEventHandler$HandlerResult;",
        "",
        "value",
        "",
        "<init>",
        "(Ljava/lang/String;IZ)V",
        "getValue",
        "()Z",
        "EXIT_EDIT_MODE_AND_APPLY_CHANGES",
        "EXIT_EDIT_MODE_AND_TEAR_DOWN",
        "DELETE_CHECKED_ITEMS",
        "SELECT_ALL_ITEMS",
        "JUST_TRUE",
        "JUST_FALSE",
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

.field private static final synthetic $VALUES:[Lcom/sec/android/app/sbrowser/quickaccess/ui/base/QuickAccessKeyEventHandler$HandlerResult;

.field public static final enum DELETE_CHECKED_ITEMS:Lcom/sec/android/app/sbrowser/quickaccess/ui/base/QuickAccessKeyEventHandler$HandlerResult;

.field public static final enum EXIT_EDIT_MODE_AND_APPLY_CHANGES:Lcom/sec/android/app/sbrowser/quickaccess/ui/base/QuickAccessKeyEventHandler$HandlerResult;

.field public static final enum EXIT_EDIT_MODE_AND_TEAR_DOWN:Lcom/sec/android/app/sbrowser/quickaccess/ui/base/QuickAccessKeyEventHandler$HandlerResult;

.field public static final enum JUST_FALSE:Lcom/sec/android/app/sbrowser/quickaccess/ui/base/QuickAccessKeyEventHandler$HandlerResult;

.field public static final enum JUST_TRUE:Lcom/sec/android/app/sbrowser/quickaccess/ui/base/QuickAccessKeyEventHandler$HandlerResult;

.field public static final enum SELECT_ALL_ITEMS:Lcom/sec/android/app/sbrowser/quickaccess/ui/base/QuickAccessKeyEventHandler$HandlerResult;


# instance fields
.field private final value:Z


# direct methods
.method private static final synthetic $values()[Lcom/sec/android/app/sbrowser/quickaccess/ui/base/QuickAccessKeyEventHandler$HandlerResult;
    .locals 6

    sget-object v0, Lcom/sec/android/app/sbrowser/quickaccess/ui/base/QuickAccessKeyEventHandler$HandlerResult;->EXIT_EDIT_MODE_AND_APPLY_CHANGES:Lcom/sec/android/app/sbrowser/quickaccess/ui/base/QuickAccessKeyEventHandler$HandlerResult;

    sget-object v1, Lcom/sec/android/app/sbrowser/quickaccess/ui/base/QuickAccessKeyEventHandler$HandlerResult;->EXIT_EDIT_MODE_AND_TEAR_DOWN:Lcom/sec/android/app/sbrowser/quickaccess/ui/base/QuickAccessKeyEventHandler$HandlerResult;

    sget-object v2, Lcom/sec/android/app/sbrowser/quickaccess/ui/base/QuickAccessKeyEventHandler$HandlerResult;->DELETE_CHECKED_ITEMS:Lcom/sec/android/app/sbrowser/quickaccess/ui/base/QuickAccessKeyEventHandler$HandlerResult;

    sget-object v3, Lcom/sec/android/app/sbrowser/quickaccess/ui/base/QuickAccessKeyEventHandler$HandlerResult;->SELECT_ALL_ITEMS:Lcom/sec/android/app/sbrowser/quickaccess/ui/base/QuickAccessKeyEventHandler$HandlerResult;

    sget-object v4, Lcom/sec/android/app/sbrowser/quickaccess/ui/base/QuickAccessKeyEventHandler$HandlerResult;->JUST_TRUE:Lcom/sec/android/app/sbrowser/quickaccess/ui/base/QuickAccessKeyEventHandler$HandlerResult;

    sget-object v5, Lcom/sec/android/app/sbrowser/quickaccess/ui/base/QuickAccessKeyEventHandler$HandlerResult;->JUST_FALSE:Lcom/sec/android/app/sbrowser/quickaccess/ui/base/QuickAccessKeyEventHandler$HandlerResult;

    filled-new-array/range {v0 .. v5}, [Lcom/sec/android/app/sbrowser/quickaccess/ui/base/QuickAccessKeyEventHandler$HandlerResult;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/sec/android/app/sbrowser/quickaccess/ui/base/QuickAccessKeyEventHandler$HandlerResult;

    const-string v1, "EXIT_EDIT_MODE_AND_APPLY_CHANGES"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/android/app/sbrowser/quickaccess/ui/base/QuickAccessKeyEventHandler$HandlerResult;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/sec/android/app/sbrowser/quickaccess/ui/base/QuickAccessKeyEventHandler$HandlerResult;->EXIT_EDIT_MODE_AND_APPLY_CHANGES:Lcom/sec/android/app/sbrowser/quickaccess/ui/base/QuickAccessKeyEventHandler$HandlerResult;

    new-instance v0, Lcom/sec/android/app/sbrowser/quickaccess/ui/base/QuickAccessKeyEventHandler$HandlerResult;

    const-string v1, "EXIT_EDIT_MODE_AND_TEAR_DOWN"

    invoke-direct {v0, v1, v3, v2}, Lcom/sec/android/app/sbrowser/quickaccess/ui/base/QuickAccessKeyEventHandler$HandlerResult;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/sec/android/app/sbrowser/quickaccess/ui/base/QuickAccessKeyEventHandler$HandlerResult;->EXIT_EDIT_MODE_AND_TEAR_DOWN:Lcom/sec/android/app/sbrowser/quickaccess/ui/base/QuickAccessKeyEventHandler$HandlerResult;

    new-instance v0, Lcom/sec/android/app/sbrowser/quickaccess/ui/base/QuickAccessKeyEventHandler$HandlerResult;

    const-string v1, "DELETE_CHECKED_ITEMS"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4, v3}, Lcom/sec/android/app/sbrowser/quickaccess/ui/base/QuickAccessKeyEventHandler$HandlerResult;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/sec/android/app/sbrowser/quickaccess/ui/base/QuickAccessKeyEventHandler$HandlerResult;->DELETE_CHECKED_ITEMS:Lcom/sec/android/app/sbrowser/quickaccess/ui/base/QuickAccessKeyEventHandler$HandlerResult;

    new-instance v0, Lcom/sec/android/app/sbrowser/quickaccess/ui/base/QuickAccessKeyEventHandler$HandlerResult;

    const-string v1, "SELECT_ALL_ITEMS"

    const/4 v4, 0x3

    invoke-direct {v0, v1, v4, v3}, Lcom/sec/android/app/sbrowser/quickaccess/ui/base/QuickAccessKeyEventHandler$HandlerResult;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/sec/android/app/sbrowser/quickaccess/ui/base/QuickAccessKeyEventHandler$HandlerResult;->SELECT_ALL_ITEMS:Lcom/sec/android/app/sbrowser/quickaccess/ui/base/QuickAccessKeyEventHandler$HandlerResult;

    new-instance v0, Lcom/sec/android/app/sbrowser/quickaccess/ui/base/QuickAccessKeyEventHandler$HandlerResult;

    const-string v1, "JUST_TRUE"

    const/4 v4, 0x4

    invoke-direct {v0, v1, v4, v3}, Lcom/sec/android/app/sbrowser/quickaccess/ui/base/QuickAccessKeyEventHandler$HandlerResult;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/sec/android/app/sbrowser/quickaccess/ui/base/QuickAccessKeyEventHandler$HandlerResult;->JUST_TRUE:Lcom/sec/android/app/sbrowser/quickaccess/ui/base/QuickAccessKeyEventHandler$HandlerResult;

    new-instance v0, Lcom/sec/android/app/sbrowser/quickaccess/ui/base/QuickAccessKeyEventHandler$HandlerResult;

    const-string v1, "JUST_FALSE"

    const/4 v3, 0x5

    invoke-direct {v0, v1, v3, v2}, Lcom/sec/android/app/sbrowser/quickaccess/ui/base/QuickAccessKeyEventHandler$HandlerResult;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/sec/android/app/sbrowser/quickaccess/ui/base/QuickAccessKeyEventHandler$HandlerResult;->JUST_FALSE:Lcom/sec/android/app/sbrowser/quickaccess/ui/base/QuickAccessKeyEventHandler$HandlerResult;

    invoke-static {}, Lcom/sec/android/app/sbrowser/quickaccess/ui/base/QuickAccessKeyEventHandler$HandlerResult;->$values()[Lcom/sec/android/app/sbrowser/quickaccess/ui/base/QuickAccessKeyEventHandler$HandlerResult;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/sbrowser/quickaccess/ui/base/QuickAccessKeyEventHandler$HandlerResult;->$VALUES:[Lcom/sec/android/app/sbrowser/quickaccess/ui/base/QuickAccessKeyEventHandler$HandlerResult;

    invoke-static {v0}, LP6/b;->b([Ljava/lang/Enum;)Llb/b;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/sbrowser/quickaccess/ui/base/QuickAccessKeyEventHandler$HandlerResult;->$ENTRIES:Llb/a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-boolean p3, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/base/QuickAccessKeyEventHandler$HandlerResult;->value:Z

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sec/android/app/sbrowser/quickaccess/ui/base/QuickAccessKeyEventHandler$HandlerResult;
    .locals 1

    const-class v0, Lcom/sec/android/app/sbrowser/quickaccess/ui/base/QuickAccessKeyEventHandler$HandlerResult;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/base/QuickAccessKeyEventHandler$HandlerResult;

    return-object p0
.end method

.method public static values()[Lcom/sec/android/app/sbrowser/quickaccess/ui/base/QuickAccessKeyEventHandler$HandlerResult;
    .locals 1

    sget-object v0, Lcom/sec/android/app/sbrowser/quickaccess/ui/base/QuickAccessKeyEventHandler$HandlerResult;->$VALUES:[Lcom/sec/android/app/sbrowser/quickaccess/ui/base/QuickAccessKeyEventHandler$HandlerResult;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/android/app/sbrowser/quickaccess/ui/base/QuickAccessKeyEventHandler$HandlerResult;

    return-object v0
.end method


# virtual methods
.method public final getValue()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/base/QuickAccessKeyEventHandler$HandlerResult;->value:Z

    return p0
.end method
