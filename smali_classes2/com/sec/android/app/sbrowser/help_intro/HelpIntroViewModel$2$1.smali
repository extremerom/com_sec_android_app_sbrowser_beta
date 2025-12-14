.class final Lcom/sec/android/app/sbrowser/help_intro/HelpIntroViewModel$2$1;
.super Lkb/i;
.source "SourceFile"

# interfaces
.implements Lsb/n;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/help_intro/HelpIntroViewModel$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
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
        "\u0000\u000e\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0001\u001a\u00020\u0000H\n\u00a2\u0006\u0004\u0008\u0003\u0010\u0004"
    }
    d2 = {
        "",
        "hasPermission",
        "Ldb/r;",
        "<anonymous>",
        "(Z)V"
    }
    k = 0x3
    mv = {
        0x2,
        0x0,
        0x0
    }
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.sec.android.app.sbrowser.help_intro.HelpIntroViewModel$2$1"
    f = "HelpIntroViewModel.kt"
    l = {
        0x36
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field synthetic Z$0:Z

.field label:I

.field final synthetic this$0:Lcom/sec/android/app/sbrowser/help_intro/HelpIntroViewModel;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/help_intro/HelpIntroViewModel;Lib/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/android/app/sbrowser/help_intro/HelpIntroViewModel;",
            "Lib/c<",
            "-",
            "Lcom/sec/android/app/sbrowser/help_intro/HelpIntroViewModel$2$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/help_intro/HelpIntroViewModel$2$1;->this$0:Lcom/sec/android/app/sbrowser/help_intro/HelpIntroViewModel;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkb/i;-><init>(ILib/c;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lib/c;)Lib/c;
    .locals 1
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

    new-instance v0, Lcom/sec/android/app/sbrowser/help_intro/HelpIntroViewModel$2$1;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/help_intro/HelpIntroViewModel$2$1;->this$0:Lcom/sec/android/app/sbrowser/help_intro/HelpIntroViewModel;

    invoke-direct {v0, p0, p2}, Lcom/sec/android/app/sbrowser/help_intro/HelpIntroViewModel$2$1;-><init>(Lcom/sec/android/app/sbrowser/help_intro/HelpIntroViewModel;Lib/c;)V

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    iput-boolean p0, v0, Lcom/sec/android/app/sbrowser/help_intro/HelpIntroViewModel$2$1;->Z$0:Z

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    check-cast p2, Lib/c;

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sbrowser/help_intro/HelpIntroViewModel$2$1;->invoke(ZLib/c;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invoke(ZLib/c;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lib/c<",
            "-",
            "Ldb/r;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sbrowser/help_intro/HelpIntroViewModel$2$1;->create(Ljava/lang/Object;Lib/c;)Lib/c;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/sbrowser/help_intro/HelpIntroViewModel$2$1;

    sget-object p1, Ldb/r;->a:Ldb/r;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/help_intro/HelpIntroViewModel$2$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    sget-object v0, Ljb/a;->COROUTINE_SUSPENDED:Ljb/a;

    iget v1, p0, Lcom/sec/android/app/sbrowser/help_intro/HelpIntroViewModel$2$1;->label:I

    sget-object v2, Ldb/r;->a:Ldb/r;

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v3, :cond_0

    invoke-static {p1}, LG5/A2;->f(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-static {p1}, LG5/A2;->f(Ljava/lang/Object;)V

    iget-boolean p1, p0, Lcom/sec/android/app/sbrowser/help_intro/HelpIntroViewModel$2$1;->Z$0:Z

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/help_intro/HelpIntroViewModel$2$1;->this$0:Lcom/sec/android/app/sbrowser/help_intro/HelpIntroViewModel;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/help_intro/HelpIntroViewModel;->access$getShouldShowBlockedApp(Lcom/sec/android/app/sbrowser/help_intro/HelpIntroViewModel;)LQc/f0;

    move-result-object p1

    new-instance v1, Lcom/sec/android/app/sbrowser/common/livedata/Event;

    invoke-direct {v1, v2}, Lcom/sec/android/app/sbrowser/common/livedata/Event;-><init>(Ljava/lang/Object;)V

    iput v3, p0, Lcom/sec/android/app/sbrowser/help_intro/HelpIntroViewModel$2$1;->label:I

    check-cast p1, LQc/A0;

    invoke-virtual {p1, v1, p0}, LQc/A0;->emit(Ljava/lang/Object;Lib/c;)Ljava/lang/Object;

    if-ne v2, v0, :cond_2

    return-object v0

    :cond_2
    :goto_0
    return-object v2
.end method
