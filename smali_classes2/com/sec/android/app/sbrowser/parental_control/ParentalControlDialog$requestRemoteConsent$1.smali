.class final Lcom/sec/android/app/sbrowser/parental_control/ParentalControlDialog$requestRemoteConsent$1;
.super Lkb/i;
.source "SourceFile"

# interfaces
.implements Lsb/n;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/parental_control/ParentalControlDialog;->requestRemoteConsent(Lcom/sec/android/app/sbrowser/common/parental_control/RemoteConsentType;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkb/i;",
        "Lsb/n;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n\u00a2\u0006\u0004\u0008\u0002\u0010\u0003"
    }
    d2 = {
        "LNc/B;",
        "Ldb/r;",
        "<anonymous>",
        "(LNc/B;)V"
    }
    k = 0x3
    mv = {
        0x2,
        0x0,
        0x0
    }
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.sec.android.app.sbrowser.parental_control.ParentalControlDialog$requestRemoteConsent$1"
    f = "ParentalControlDialog.kt"
    l = {
        0x76,
        0x7d
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $type:Lcom/sec/android/app/sbrowser/common/parental_control/RemoteConsentType;

.field final synthetic $userId:Ljava/lang/String;

.field private synthetic L$0:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/sec/android/app/sbrowser/parental_control/ParentalControlDialog;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/parental_control/ParentalControlDialog;Ljava/lang/String;Lcom/sec/android/app/sbrowser/common/parental_control/RemoteConsentType;Lib/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/android/app/sbrowser/parental_control/ParentalControlDialog;",
            "Ljava/lang/String;",
            "Lcom/sec/android/app/sbrowser/common/parental_control/RemoteConsentType;",
            "Lib/c<",
            "-",
            "Lcom/sec/android/app/sbrowser/parental_control/ParentalControlDialog$requestRemoteConsent$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/parental_control/ParentalControlDialog$requestRemoteConsent$1;->this$0:Lcom/sec/android/app/sbrowser/parental_control/ParentalControlDialog;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/parental_control/ParentalControlDialog$requestRemoteConsent$1;->$userId:Ljava/lang/String;

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/parental_control/ParentalControlDialog$requestRemoteConsent$1;->$type:Lcom/sec/android/app/sbrowser/common/parental_control/RemoteConsentType;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lkb/i;-><init>(ILib/c;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lib/c;)Lib/c;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lib/c<",
            "*>;)",
            "Lib/c<",
            "Ldb/r;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/sec/android/app/sbrowser/parental_control/ParentalControlDialog$requestRemoteConsent$1;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/parental_control/ParentalControlDialog$requestRemoteConsent$1;->this$0:Lcom/sec/android/app/sbrowser/parental_control/ParentalControlDialog;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/parental_control/ParentalControlDialog$requestRemoteConsent$1;->$userId:Ljava/lang/String;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/parental_control/ParentalControlDialog$requestRemoteConsent$1;->$type:Lcom/sec/android/app/sbrowser/common/parental_control/RemoteConsentType;

    invoke-direct {v0, v1, v2, p0, p2}, Lcom/sec/android/app/sbrowser/parental_control/ParentalControlDialog$requestRemoteConsent$1;-><init>(Lcom/sec/android/app/sbrowser/parental_control/ParentalControlDialog;Ljava/lang/String;Lcom/sec/android/app/sbrowser/common/parental_control/RemoteConsentType;Lib/c;)V

    iput-object p1, v0, Lcom/sec/android/app/sbrowser/parental_control/ParentalControlDialog$requestRemoteConsent$1;->L$0:Ljava/lang/Object;

    return-object v0
.end method

.method public final invoke(LNc/B;Lib/c;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LNc/B;",
            "Lib/c<",
            "-",
            "Ldb/r;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sbrowser/parental_control/ParentalControlDialog$requestRemoteConsent$1;->create(Ljava/lang/Object;Lib/c;)Lib/c;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/sbrowser/parental_control/ParentalControlDialog$requestRemoteConsent$1;

    sget-object p1, Ldb/r;->a:Ldb/r;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/parental_control/ParentalControlDialog$requestRemoteConsent$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, LNc/B;

    check-cast p2, Lib/c;

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sbrowser/parental_control/ParentalControlDialog$requestRemoteConsent$1;->invoke(LNc/B;Lib/c;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    sget-object v0, Ljb/a;->COROUTINE_SUSPENDED:Ljb/a;

    iget v1, p0, Lcom/sec/android/app/sbrowser/parental_control/ParentalControlDialog$requestRemoteConsent$1;->label:I

    sget-object v2, Ldb/r;->a:Ldb/r;

    const/4 v3, 0x3

    const/4 v4, 0x0

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-eqz v1, :cond_2

    if-eq v1, v6, :cond_1

    if-ne v1, v5, :cond_0

    invoke-static {p1}, LG5/A2;->f(Ljava/lang/Object;)V

    goto :goto_1

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/parental_control/ParentalControlDialog$requestRemoteConsent$1;->L$0:Ljava/lang/Object;

    check-cast v1, LNc/B;

    invoke-static {p1}, LG5/A2;->f(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    invoke-static {p1}, LG5/A2;->f(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/parental_control/ParentalControlDialog$requestRemoteConsent$1;->L$0:Ljava/lang/Object;

    move-object v1, p1

    check-cast v1, LNc/B;

    new-instance p1, Lcom/sec/android/app/sbrowser/parental_control/ParentalControlDialog$requestRemoteConsent$1$requestStatus$1;

    iget-object v7, p0, Lcom/sec/android/app/sbrowser/parental_control/ParentalControlDialog$requestRemoteConsent$1;->$type:Lcom/sec/android/app/sbrowser/common/parental_control/RemoteConsentType;

    invoke-direct {p1, v7, v4}, Lcom/sec/android/app/sbrowser/parental_control/ParentalControlDialog$requestRemoteConsent$1$requestStatus$1;-><init>(Lcom/sec/android/app/sbrowser/common/parental_control/RemoteConsentType;Lib/c;)V

    invoke-static {v1, v4, p1, v3}, LNc/E;->f(LNc/B;LNc/A;Lsb/n;I)LNc/I;

    move-result-object p1

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/parental_control/ParentalControlDialog$requestRemoteConsent$1;->L$0:Ljava/lang/Object;

    iput v6, p0, Lcom/sec/android/app/sbrowser/parental_control/ParentalControlDialog$requestRemoteConsent$1;->label:I

    invoke-virtual {p1, p0}, LNc/t0;->z(Lkb/c;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_3

    return-object v0

    :cond_3
    :goto_0
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    if-nez p1, :cond_5

    new-instance p1, Lcom/sec/android/app/sbrowser/parental_control/ParentalControlDialog$requestRemoteConsent$1$cancelResult$1;

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/parental_control/ParentalControlDialog$requestRemoteConsent$1;->$type:Lcom/sec/android/app/sbrowser/common/parental_control/RemoteConsentType;

    invoke-direct {p1, v6, v4}, Lcom/sec/android/app/sbrowser/parental_control/ParentalControlDialog$requestRemoteConsent$1$cancelResult$1;-><init>(Lcom/sec/android/app/sbrowser/common/parental_control/RemoteConsentType;Lib/c;)V

    invoke-static {v1, v4, p1, v3}, LNc/E;->f(LNc/B;LNc/A;Lsb/n;I)LNc/I;

    move-result-object p1

    iput-object v4, p0, Lcom/sec/android/app/sbrowser/parental_control/ParentalControlDialog$requestRemoteConsent$1;->L$0:Ljava/lang/Object;

    iput v5, p0, Lcom/sec/android/app/sbrowser/parental_control/ParentalControlDialog$requestRemoteConsent$1;->label:I

    invoke-virtual {p1, p0}, LNc/t0;->z(Lkb/c;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_4

    return-object v0

    :cond_4
    :goto_1
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    if-eqz p1, :cond_5

    const-string p1, "ParentalControlDialog"

    const-string v0, "Failed to cancel previous request"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/parental_control/ParentalControlDialog$requestRemoteConsent$1;->this$0:Lcom/sec/android/app/sbrowser/parental_control/ParentalControlDialog;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/parental_control/ParentalControlDialog;->access$getViewModel(Lcom/sec/android/app/sbrowser/parental_control/ParentalControlDialog;)Lcom/sec/android/app/sbrowser/parental_control/ParentalControlDialogViewModel;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/parental_control/ParentalControlDialogViewModel;->onFailureCancelRequest()V

    return-object v2

    :cond_5
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/parental_control/ParentalControlDialog$requestRemoteConsent$1;->$userId:Ljava/lang/String;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/parental_control/ParentalControlDialog$requestRemoteConsent$1;->$type:Lcom/sec/android/app/sbrowser/common/parental_control/RemoteConsentType;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/parental_control/RemoteConsentType;->getContentId()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/parental_control/ParentalControlDialog$requestRemoteConsent$1;->$type:Lcom/sec/android/app/sbrowser/common/parental_control/RemoteConsentType;

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/common/parental_control/RemoteConsentType;->getBundleUrls()Ldb/j;

    move-result-object v1

    iget-object v1, v1, Ldb/j;->a:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/parental_control/ParentalControlDialog$requestRemoteConsent$1;->$type:Lcom/sec/android/app/sbrowser/common/parental_control/RemoteConsentType;

    invoke-interface {v3}, Lcom/sec/android/app/sbrowser/common/parental_control/RemoteConsentType;->getBundleUrls()Ldb/j;

    move-result-object v3

    iget-object v3, v3, Ldb/j;->b:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    invoke-static {p1, v0, v1, v3}, Lcom/sec/android/app/sbrowser/common/parental_control/ParentalControlUtil;->requestRemoteConsent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_6

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/parental_control/ParentalControlDialog$requestRemoteConsent$1;->this$0:Lcom/sec/android/app/sbrowser/parental_control/ParentalControlDialog;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/parental_control/ParentalControlDialog;->access$getViewModel(Lcom/sec/android/app/sbrowser/parental_control/ParentalControlDialog;)Lcom/sec/android/app/sbrowser/parental_control/ParentalControlDialogViewModel;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/parental_control/ParentalControlDialogViewModel;->onSuccessRemoteConsent()V

    goto :goto_2

    :cond_6
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/parental_control/ParentalControlDialog$requestRemoteConsent$1;->this$0:Lcom/sec/android/app/sbrowser/parental_control/ParentalControlDialog;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/parental_control/ParentalControlDialog;->access$getViewModel(Lcom/sec/android/app/sbrowser/parental_control/ParentalControlDialog;)Lcom/sec/android/app/sbrowser/parental_control/ParentalControlDialogViewModel;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/parental_control/ParentalControlDialogViewModel;->onFailureRemoteConsent()V

    :goto_2
    return-object v2
.end method
