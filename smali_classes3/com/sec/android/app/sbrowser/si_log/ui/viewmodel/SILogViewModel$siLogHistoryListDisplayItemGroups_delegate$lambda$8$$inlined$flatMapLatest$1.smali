.class public final Lcom/sec/android/app/sbrowser/si_log/ui/viewmodel/SILogViewModel$siLogHistoryListDisplayItemGroups_delegate$lambda$8$$inlined$flatMapLatest$1;
.super Lkb/i;
.source "SourceFile"

# interfaces
.implements Lsb/o;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/si_log/ui/viewmodel/SILogViewModel;-><init>(Landroid/app/Application;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkb/i;",
        "Lsb/o;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0005\u001a\u00020\u0004\"\u0004\u0008\u0000\u0010\u0000\"\u0004\u0008\u0001\u0010\u0001*\u0008\u0012\u0004\u0012\u00028\u00010\u00022\u0006\u0010\u0003\u001a\u00028\u0000H\u008a@"
    }
    d2 = {
        "T",
        "R",
        "LQc/i;",
        "it",
        "Ldb/r;",
        "<anonymous>"
    }
    k = 0x3
    mv = {
        0x2,
        0x0,
        0x0
    }
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.sec.android.app.sbrowser.si_log.ui.viewmodel.SILogViewModel$siLogHistoryListDisplayItemGroups_delegate$lambda$8$$inlined$flatMapLatest$1"
    f = "SILogViewModel.kt"
    l = {
        0xbd
    }
    m = "invokeSuspend"
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
.end annotation


# instance fields
.field private synthetic L$0:Ljava/lang/Object;

.field synthetic L$1:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/sec/android/app/sbrowser/si_log/ui/viewmodel/SILogViewModel;


# direct methods
.method public constructor <init>(Lib/c;Lcom/sec/android/app/sbrowser/si_log/ui/viewmodel/SILogViewModel;)V
    .locals 0

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/si_log/ui/viewmodel/SILogViewModel$siLogHistoryListDisplayItemGroups_delegate$lambda$8$$inlined$flatMapLatest$1;->this$0:Lcom/sec/android/app/sbrowser/si_log/ui/viewmodel/SILogViewModel;

    const/4 p2, 0x3

    invoke-direct {p0, p2, p1}, Lkb/i;-><init>(ILib/c;)V

    return-void
.end method


# virtual methods
.method public final invoke(LQc/i;Ljava/lang/Object;Lib/c;)Ljava/lang/Object;
    .locals 1
    .param p1    # LQc/i;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lib/c;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LQc/i;",
            "Ljava/lang/String;",
            "Lib/c<",
            "-",
            "Ldb/r;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    new-instance v0, Lcom/sec/android/app/sbrowser/si_log/ui/viewmodel/SILogViewModel$siLogHistoryListDisplayItemGroups_delegate$lambda$8$$inlined$flatMapLatest$1;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/si_log/ui/viewmodel/SILogViewModel$siLogHistoryListDisplayItemGroups_delegate$lambda$8$$inlined$flatMapLatest$1;->this$0:Lcom/sec/android/app/sbrowser/si_log/ui/viewmodel/SILogViewModel;

    invoke-direct {v0, p3, p0}, Lcom/sec/android/app/sbrowser/si_log/ui/viewmodel/SILogViewModel$siLogHistoryListDisplayItemGroups_delegate$lambda$8$$inlined$flatMapLatest$1;-><init>(Lib/c;Lcom/sec/android/app/sbrowser/si_log/ui/viewmodel/SILogViewModel;)V

    iput-object p1, v0, Lcom/sec/android/app/sbrowser/si_log/ui/viewmodel/SILogViewModel$siLogHistoryListDisplayItemGroups_delegate$lambda$8$$inlined$flatMapLatest$1;->L$0:Ljava/lang/Object;

    iput-object p2, v0, Lcom/sec/android/app/sbrowser/si_log/ui/viewmodel/SILogViewModel$siLogHistoryListDisplayItemGroups_delegate$lambda$8$$inlined$flatMapLatest$1;->L$1:Ljava/lang/Object;

    sget-object p0, Ldb/r;->a:Ldb/r;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/sbrowser/si_log/ui/viewmodel/SILogViewModel$siLogHistoryListDisplayItemGroups_delegate$lambda$8$$inlined$flatMapLatest$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, LQc/i;

    check-cast p3, Lib/c;

    invoke-virtual {p0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/si_log/ui/viewmodel/SILogViewModel$siLogHistoryListDisplayItemGroups_delegate$lambda$8$$inlined$flatMapLatest$1;->invoke(LQc/i;Ljava/lang/Object;Lib/c;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    sget-object v0, Ljb/a;->COROUTINE_SUSPENDED:Ljb/a;

    iget v1, p0, Lcom/sec/android/app/sbrowser/si_log/ui/viewmodel/SILogViewModel$siLogHistoryListDisplayItemGroups_delegate$lambda$8$$inlined$flatMapLatest$1;->label:I

    sget-object v2, Ldb/r;->a:Ldb/r;

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v3, :cond_0

    invoke-static {p1}, LG5/A2;->f(Ljava/lang/Object;)V

    goto :goto_2

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-static {p1}, LG5/A2;->f(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/si_log/ui/viewmodel/SILogViewModel$siLogHistoryListDisplayItemGroups_delegate$lambda$8$$inlined$flatMapLatest$1;->L$0:Ljava/lang/Object;

    check-cast p1, LQc/i;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/si_log/ui/viewmodel/SILogViewModel$siLogHistoryListDisplayItemGroups_delegate$lambda$8$$inlined$flatMapLatest$1;->L$1:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    const-string v4, "Service ID"

    invoke-static {v1, v4}, Ltb/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/si_log/ui/viewmodel/SILogViewModel$siLogHistoryListDisplayItemGroups_delegate$lambda$8$$inlined$flatMapLatest$1;->this$0:Lcom/sec/android/app/sbrowser/si_log/ui/viewmodel/SILogViewModel;

    invoke-virtual {v4}, Lcom/sec/android/app/sbrowser/si_log/ui/viewmodel/SILogViewModel;->getAllSILogsGroupByServiceId()LQc/h;

    move-result-object v4

    goto :goto_0

    :cond_2
    iget-object v4, p0, Lcom/sec/android/app/sbrowser/si_log/ui/viewmodel/SILogViewModel$siLogHistoryListDisplayItemGroups_delegate$lambda$8$$inlined$flatMapLatest$1;->this$0:Lcom/sec/android/app/sbrowser/si_log/ui/viewmodel/SILogViewModel;

    invoke-virtual {v4}, Lcom/sec/android/app/sbrowser/si_log/ui/viewmodel/SILogViewModel;->getAllSILogsGroupByEventId()LQc/h;

    move-result-object v4

    :goto_0
    new-instance v5, Lcom/sec/android/app/sbrowser/si_log/ui/viewmodel/SILogViewModel$siLogHistoryListDisplayItemGroups_delegate$lambda$8$lambda$7$$inlined$map$1;

    invoke-direct {v5, v4, v1}, Lcom/sec/android/app/sbrowser/si_log/ui/viewmodel/SILogViewModel$siLogHistoryListDisplayItemGroups_delegate$lambda$8$lambda$7$$inlined$map$1;-><init>(LQc/h;Ljava/lang/String;)V

    iput v3, p0, Lcom/sec/android/app/sbrowser/si_log/ui/viewmodel/SILogViewModel$siLogHistoryListDisplayItemGroups_delegate$lambda$8$$inlined$flatMapLatest$1;->label:I

    instance-of v1, p1, LQc/G0;

    if-nez v1, :cond_5

    invoke-interface {v5, p1, p0}, LQc/h;->collect(LQc/i;Lib/c;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_3

    goto :goto_1

    :cond_3
    move-object p0, v2

    :goto_1
    if-ne p0, v0, :cond_4

    return-object v0

    :cond_4
    :goto_2
    return-object v2

    :cond_5
    check-cast p1, LQc/G0;

    iget-object p0, p1, LQc/G0;->a:Ljava/lang/Throwable;

    throw p0
.end method
