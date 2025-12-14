.class public final Lcom/samsung/android/app/sdk/deepsky/barcode/action/ConnectSmartThingsAction;
.super Lcom/samsung/android/app/sdk/deepsky/barcode/action/abstraction/Action;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/sdk/deepsky/barcode/action/ConnectSmartThingsAction$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0018\u0000 \u00132\u00020\u0001:\u0001\u0013B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\u000f\u0010\t\u001a\u00020\u0008H\u0016\u00a2\u0006\u0004\u0008\t\u0010\nJ\u000f\u0010\u000c\u001a\u00020\u000bH\u0016\u00a2\u0006\u0004\u0008\u000c\u0010\rJ\u000f\u0010\u000f\u001a\u00020\u000eH\u0016\u00a2\u0006\u0004\u0008\u000f\u0010\u0010R\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0003\u0010\u0011R\u0014\u0010\u0005\u001a\u00020\u00048\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0005\u0010\u0012\u00a8\u0006\u0014"
    }
    d2 = {
        "Lcom/samsung/android/app/sdk/deepsky/barcode/action/ConnectSmartThingsAction;",
        "Lcom/samsung/android/app/sdk/deepsky/barcode/action/abstraction/Action;",
        "Landroid/content/Context;",
        "context",
        "LY7/r;",
        "parsedResult",
        "<init>",
        "(Landroid/content/Context;LY7/r;)V",
        "",
        "getTitleId",
        "()I",
        "",
        "getActionId",
        "()Ljava/lang/String;",
        "Landroid/content/Intent;",
        "getIntent",
        "()Landroid/content/Intent;",
        "Landroid/content/Context;",
        "LY7/r;",
        "Companion",
        "deepsky-sdk-barcode-1.0.11_release"
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
.field public static final Companion:Lcom/samsung/android/app/sdk/deepsky/barcode/action/ConnectSmartThingsAction$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private final context:Landroid/content/Context;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final parsedResult:LY7/r;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/samsung/android/app/sdk/deepsky/barcode/action/ConnectSmartThingsAction$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/app/sdk/deepsky/barcode/action/ConnectSmartThingsAction$Companion;-><init>(Ltb/f;)V

    sput-object v0, Lcom/samsung/android/app/sdk/deepsky/barcode/action/ConnectSmartThingsAction;->Companion:Lcom/samsung/android/app/sdk/deepsky/barcode/action/ConnectSmartThingsAction$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;LY7/r;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # LY7/r;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "parsedResult"

    invoke-static {p2, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/samsung/android/app/sdk/deepsky/barcode/action/abstraction/Action;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/samsung/android/app/sdk/deepsky/barcode/action/ConnectSmartThingsAction;->context:Landroid/content/Context;

    iput-object p2, p0, Lcom/samsung/android/app/sdk/deepsky/barcode/action/ConnectSmartThingsAction;->parsedResult:LY7/r;

    return-void
.end method


# virtual methods
.method public getActionId()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "ConnectSmartThings"

    return-object p0
.end method

.method public getIntent()Landroid/content/Intent;
    .locals 5
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/sdk/deepsky/barcode/action/ConnectSmartThingsAction;->parsedResult:LY7/r;

    const-string v1, "null cannot be cast to non-null type com.google.zxing.client.result.iot.IoTParsedResult"

    invoke-static {v0, v1}, Ltb/k;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, LZ7/a;

    sget-object v1, LZ7/c;->SMART_TAG_QR:LZ7/c;

    iget-object v2, v0, LZ7/a;->c:LZ7/c;

    iget-object v0, v0, LZ7/a;->b:Ljava/lang/String;

    if-ne v2, v1, :cond_0

    sget-object p0, Lcom/samsung/android/app/sdk/deepsky/barcode/action/common/ActionUtil;->INSTANCE:Lcom/samsung/android/app/sdk/deepsky/barcode/action/common/ActionUtil;

    invoke-static {v0}, Ltb/k;->c(Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/sdk/deepsky/barcode/action/common/ActionUtil;->getLaunchBrowserIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p0

    return-object p0

    :cond_0
    const-string v1, "scapp_qronboarding://"

    invoke-static {v1, v0}, Lt/b;->h(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.VIEW"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-direct {v3, v4, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/high16 v1, 0x10000000

    invoke-virtual {v3, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    sget-object v1, Lcom/samsung/android/app/sdk/deepsky/barcode/action/common/ActionUtil;->INSTANCE:Lcom/samsung/android/app/sdk/deepsky/barcode/action/common/ActionUtil;

    iget-object p0, p0, Lcom/samsung/android/app/sdk/deepsky/barcode/action/ConnectSmartThingsAction;->context:Landroid/content/Context;

    invoke-virtual {v1, p0, v3}, Lcom/samsung/android/app/sdk/deepsky/barcode/action/common/ActionUtil;->isLauncherActivityAvailable(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result p0

    if-nez p0, :cond_2

    const-string p0, "ConnectSmartThingsAction"

    const-string v3, "getConnectSmartThingsIntent : Activity cannot found"

    invoke-static {p0, v3}, Lcom/samsung/android/app/sdk/deepsky/barcode/logger/LibLogger;->w(Ljava/lang/String;Ljava/lang/String;)I

    sget-object p0, LZ7/c;->ON_BOARDING_STANDARD_QR:LZ7/c;

    if-ne v2, p0, :cond_1

    invoke-static {v0}, Ltb/k;->c(Ljava/lang/Object;)V

    invoke-virtual {v1, v0}, Lcom/samsung/android/app/sdk/deepsky/barcode/action/common/ActionUtil;->getLaunchBrowserIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p0

    goto :goto_0

    :cond_1
    const-string p0, "https://qr.samsungiots.com"

    invoke-virtual {v1, p0}, Lcom/samsung/android/app/sdk/deepsky/barcode/action/common/ActionUtil;->getLaunchBrowserIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p0

    :goto_0
    return-object p0

    :cond_2
    return-object v3
.end method

.method public getTitleId()I
    .locals 0

    sget p0, Lcom/samsung/android/app/sdk/deepsky/barcode/R$string;->barcode_dialog_action_add_now:I

    return p0
.end method
