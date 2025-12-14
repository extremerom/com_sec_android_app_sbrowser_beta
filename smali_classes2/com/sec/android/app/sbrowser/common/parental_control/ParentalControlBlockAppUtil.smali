.class public final Lcom/sec/android/app/sbrowser/common/parental_control/ParentalControlBlockAppUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/compose/runtime/internal/StabilityInferred;
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u00c7\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0017\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0004H\u0002\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\u001b\u0010\u000c\u001a\u00020\u00062\u000c\u0010\u000b\u001a\u0008\u0012\u0004\u0012\u00020\n0\t\u00a2\u0006\u0004\u0008\u000c\u0010\rJ\u001d\u0010\u0010\u001a\u00020\u00062\u0006\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\u0005\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u0010\u0010\u0011\u00a8\u0006\u0012"
    }
    d2 = {
        "Lcom/sec/android/app/sbrowser/common/parental_control/ParentalControlBlockAppUtil;",
        "",
        "<init>",
        "()V",
        "Landroid/app/Activity;",
        "activity",
        "Ldb/r;",
        "finish",
        "(Landroid/app/Activity;)V",
        "Landroidx/activity/result/b;",
        "Landroid/content/Intent;",
        "launcher",
        "launchBlockedActivity",
        "(Landroidx/activity/result/b;)V",
        "Landroidx/activity/result/ActivityResult;",
        "result",
        "onBlockLauncherResult",
        "(Landroidx/activity/result/ActivityResult;Landroid/app/Activity;)V",
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
.field public static final INSTANCE:Lcom/sec/android/app/sbrowser/common/parental_control/ParentalControlBlockAppUtil;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/sec/android/app/sbrowser/common/parental_control/ParentalControlBlockAppUtil;

    invoke-direct {v0}, Lcom/sec/android/app/sbrowser/common/parental_control/ParentalControlBlockAppUtil;-><init>()V

    sput-object v0, Lcom/sec/android/app/sbrowser/common/parental_control/ParentalControlBlockAppUtil;->INSTANCE:Lcom/sec/android/app/sbrowser/common/parental_control/ParentalControlBlockAppUtil;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final finish(Landroid/app/Activity;)V
    .locals 0

    const/4 p0, 0x1

    invoke-virtual {p1, p0}, Landroid/app/Activity;->moveTaskToBack(Z)Z

    const/4 p0, 0x0

    invoke-virtual {p1, p0}, Landroid/app/Activity;->setResult(I)V

    invoke-virtual {p1}, Landroid/app/Activity;->finishAffinity()V

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result p0

    invoke-static {p0}, Landroid/os/Process;->killProcess(I)V

    return-void
.end method


# virtual methods
.method public final launchBlockedActivity(Landroidx/activity/result/b;)V
    .locals 3
    .param p1    # Landroidx/activity/result/b;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/activity/result/b;",
            ")V"
        }
    .end annotation

    const-string p0, "launcher"

    invoke-static {p1, p0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "ParentalControlBlockAppUtil"

    const-string v0, "launchBlockedActivity"

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.android.app.parentalcare.action.REQUEST_BLOCK"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.category.DEFAULT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "applicationId"

    const-string v2, "5nvJWBWHQQ"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    new-instance v1, Lcom/sec/sbrowser/spl/wrapper/SemMultiWindowManager;

    invoke-direct {v1}, Lcom/sec/sbrowser/spl/wrapper/SemMultiWindowManager;-><init>()V

    invoke-virtual {v1}, Lcom/sec/sbrowser/spl/wrapper/SemMultiWindowManager;->getMode()I

    move-result v1

    sget-object v2, Lcom/sec/sbrowser/spl/wrapper/SemMultiWindowManager;->MODE_SPLIT_SCREEN:Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

    invoke-virtual {v2}, Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;->get()Ljava/lang/Integer;

    move-result-object v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v1, v2, :cond_1

    const/16 v1, -0x2710

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/sec/sbrowser/spl/wrapper/MajoIntent;->semSetLaunchOverTargetTask(Landroid/content/Intent;IZ)V

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_1
    :goto_0
    invoke-virtual {p1, v0}, Landroidx/activity/result/b;->a(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :goto_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string v0, "launchBlockedActivity : "

    invoke-static {v0, p1, p0}, Landroidx/recyclerview/widget/P;->u(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    return-void
.end method

.method public final onBlockLauncherResult(Landroidx/activity/result/ActivityResult;Landroid/app/Activity;)V
    .locals 4
    .param p1    # Landroidx/activity/result/ActivityResult;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/app/Activity;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "result"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "activity"

    invoke-static {p2, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "ParentalControlBlockAppUtil"

    iget v1, p1, Landroidx/activity/result/ActivityResult;->a:I

    if-eqz v1, :cond_2

    iget-object p1, p1, Landroidx/activity/result/ActivityResult;->b:Landroid/content/Intent;

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p1}, Ltb/k;->c(Ljava/lang/Object;)V

    const-string v1, "result_code"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    const-string v2, "result_message"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "BlockLauncher result : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v1, :cond_1

    invoke-direct {p0, p2}, Lcom/sec/android/app/sbrowser/common/parental_control/ParentalControlBlockAppUtil;->finish(Landroid/app/Activity;)V

    :cond_1
    return-void

    :cond_2
    :goto_0
    const-string p1, "BlockLauncher canceled or null data received. Finish app."

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p2}, Lcom/sec/android/app/sbrowser/common/parental_control/ParentalControlBlockAppUtil;->finish(Landroid/app/Activity;)V

    return-void
.end method
