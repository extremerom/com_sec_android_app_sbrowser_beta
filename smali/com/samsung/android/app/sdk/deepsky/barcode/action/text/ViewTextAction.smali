.class public final Lcom/samsung/android/app/sdk/deepsky/barcode/action/text/ViewTextAction;
.super Lcom/samsung/android/app/sdk/deepsky/barcode/action/abstraction/Action;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/sdk/deepsky/barcode/action/text/ViewTextAction$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0004\n\u0002\u0010\u000b\n\u0002\u0008\u0006\u0018\u0000 \u001b2\u00020\u0001:\u0001\u001bB!\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\u0013\u0010\u000c\u001a\u00020\u000b*\u00020\nH\u0002\u00a2\u0006\u0004\u0008\u000c\u0010\rJ\u000f\u0010\u000f\u001a\u00020\u000eH\u0016\u00a2\u0006\u0004\u0008\u000f\u0010\u0010J\u000f\u0010\u0012\u001a\u00020\u0011H\u0016\u00a2\u0006\u0004\u0008\u0012\u0010\u0013J\u000f\u0010\u0014\u001a\u00020\nH\u0016\u00a2\u0006\u0004\u0008\u0014\u0010\u0015J\r\u0010\u0017\u001a\u00020\u0016\u00a2\u0006\u0004\u0008\u0017\u0010\u0018R\u0014\u0010\u0005\u001a\u00020\u00048\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0005\u0010\u0019R\u0014\u0010\u0007\u001a\u00020\u00068\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0007\u0010\u001a\u00a8\u0006\u001c"
    }
    d2 = {
        "Lcom/samsung/android/app/sdk/deepsky/barcode/action/text/ViewTextAction;",
        "Lcom/samsung/android/app/sdk/deepsky/barcode/action/abstraction/Action;",
        "Landroid/content/Context;",
        "context",
        "LY7/r;",
        "parsedResult",
        "Lcom/samsung/android/app/sdk/deepsky/barcode/action/di/Injector;",
        "injector",
        "<init>",
        "(Landroid/content/Context;LY7/r;Lcom/samsung/android/app/sdk/deepsky/barcode/action/di/Injector;)V",
        "Landroid/content/Intent;",
        "Ldb/r;",
        "setTarget",
        "(Landroid/content/Intent;)V",
        "",
        "getTitleId",
        "()I",
        "",
        "getActionId",
        "()Ljava/lang/String;",
        "getIntent",
        "()Landroid/content/Intent;",
        "",
        "isActionAddible",
        "()Z",
        "LY7/r;",
        "Lcom/samsung/android/app/sdk/deepsky/barcode/action/di/Injector;",
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
.field public static final Companion:Lcom/samsung/android/app/sdk/deepsky/barcode/action/text/ViewTextAction$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private final injector:Lcom/samsung/android/app/sdk/deepsky/barcode/action/di/Injector;
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

    new-instance v0, Lcom/samsung/android/app/sdk/deepsky/barcode/action/text/ViewTextAction$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/app/sdk/deepsky/barcode/action/text/ViewTextAction$Companion;-><init>(Ltb/f;)V

    sput-object v0, Lcom/samsung/android/app/sdk/deepsky/barcode/action/text/ViewTextAction;->Companion:Lcom/samsung/android/app/sdk/deepsky/barcode/action/text/ViewTextAction$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;LY7/r;Lcom/samsung/android/app/sdk/deepsky/barcode/action/di/Injector;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # LY7/r;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/samsung/android/app/sdk/deepsky/barcode/action/di/Injector;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "parsedResult"

    invoke-static {p2, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "injector"

    invoke-static {p3, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/samsung/android/app/sdk/deepsky/barcode/action/abstraction/Action;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/samsung/android/app/sdk/deepsky/barcode/action/text/ViewTextAction;->parsedResult:LY7/r;

    iput-object p3, p0, Lcom/samsung/android/app/sdk/deepsky/barcode/action/text/ViewTextAction;->injector:Lcom/samsung/android/app/sdk/deepsky/barcode/action/di/Injector;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;LY7/r;Lcom/samsung/android/app/sdk/deepsky/barcode/action/di/Injector;ILtb/f;)V
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    new-instance p3, Lcom/samsung/android/app/sdk/deepsky/barcode/action/text/ViewTextAction$1;

    invoke-direct {p3}, Lcom/samsung/android/app/sdk/deepsky/barcode/action/text/ViewTextAction$1;-><init>()V

    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/app/sdk/deepsky/barcode/action/text/ViewTextAction;-><init>(Landroid/content/Context;LY7/r;Lcom/samsung/android/app/sdk/deepsky/barcode/action/di/Injector;)V

    return-void
.end method

.method private final setTarget(Landroid/content/Intent;)V
    .locals 3

    sget-object v0, Lcom/samsung/android/app/sdk/deepsky/barcode/action/common/ActionUtil;->INSTANCE:Lcom/samsung/android/app/sdk/deepsky/barcode/action/common/ActionUtil;

    invoke-virtual {p0}, Lcom/samsung/android/app/sdk/deepsky/barcode/action/abstraction/Action;->getAppContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "com.samsung.android.app.memo"

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/app/sdk/deepsky/barcode/action/common/ActionUtil;->isPackageInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance p0, Landroid/content/ComponentName;

    const-string v0, "com.samsung.android.app.memo.Main"

    invoke-direct {p0, v2, v0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/app/sdk/deepsky/barcode/action/abstraction/Action;->getAppContext()Landroid/content/Context;

    move-result-object p0

    const-string v1, "com.samsung.android.app.notes"

    invoke-virtual {v0, p0, v1}, Lcom/samsung/android/app/sdk/deepsky/barcode/action/common/ActionUtil;->isPackageInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    const-string p0, "text/plain"

    invoke-virtual {p1, p0}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    new-instance p0, Landroid/content/ComponentName;

    const-string v0, "com.samsung.android.app.notes.composer.ComposerBaseActivity"

    invoke-direct {p0, v1, v0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public getActionId()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "ViewText"

    return-object p0
.end method

.method public getIntent()Landroid/content/Intent;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/sdk/deepsky/barcode/action/text/ViewTextAction;->injector:Lcom/samsung/android/app/sdk/deepsky/barcode/action/di/Injector;

    invoke-interface {v0}, Lcom/samsung/android/app/sdk/deepsky/barcode/action/di/Injector;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "android.intent.action.SEND"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-direct {p0, v0}, Lcom/samsung/android/app/sdk/deepsky/barcode/action/text/ViewTextAction;->setTarget(Landroid/content/Intent;)V

    iget-object p0, p0, Lcom/samsung/android/app/sdk/deepsky/barcode/action/text/ViewTextAction;->parsedResult:LY7/r;

    invoke-virtual {p0}, LY7/r;->a()Ljava/lang/String;

    move-result-object p0

    const-string v1, "android.intent.extra.TEXT"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 p0, 0x10000000

    invoke-virtual {v0, p0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    return-object v0
.end method

.method public getTitleId()I
    .locals 0

    sget p0, Lcom/samsung/android/app/sdk/deepsky/barcode/R$string;->barcode_dialog_action_view:I

    return p0
.end method

.method public final isActionAddible()Z
    .locals 3

    sget-object v0, Lcom/samsung/android/app/sdk/deepsky/barcode/action/common/ActionUtil;->INSTANCE:Lcom/samsung/android/app/sdk/deepsky/barcode/action/common/ActionUtil;

    invoke-virtual {p0}, Lcom/samsung/android/app/sdk/deepsky/barcode/action/abstraction/Action;->getAppContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "com.samsung.android.app.memo"

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/app/sdk/deepsky/barcode/action/common/ActionUtil;->isPackageInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/app/sdk/deepsky/barcode/action/abstraction/Action;->getAppContext()Landroid/content/Context;

    move-result-object p0

    const-string v1, "com.samsung.android.app.notes"

    invoke-virtual {v0, p0, v1}, Lcom/samsung/android/app/sdk/deepsky/barcode/action/common/ActionUtil;->isPackageInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method
