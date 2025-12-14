.class public final synthetic Lcom/sec/android/app/sbrowser/settings/browsing_assist/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/artificial_intelligence/utils/WebAssistUtil$PromptScreenCallback;
.implements Lcom/samsung/android/sdk/scs/base/tasks/OnCompleteListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/sec/android/app/sbrowser/settings/browsing_assist/ReadArticlesAloudPreferenceFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/sec/android/app/sbrowser/settings/browsing_assist/ReadArticlesAloudPreferenceFragment;I)V
    .locals 0

    iput p2, p0, Lcom/sec/android/app/sbrowser/settings/browsing_assist/b;->a:I

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/settings/browsing_assist/b;->b:Lcom/sec/android/app/sbrowser/settings/browsing_assist/ReadArticlesAloudPreferenceFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Lcom/samsung/android/sdk/scs/base/tasks/Task;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/browsing_assist/b;->b:Lcom/sec/android/app/sbrowser/settings/browsing_assist/ReadArticlesAloudPreferenceFragment;

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/settings/browsing_assist/ReadArticlesAloudPreferenceFragment;->o(Lcom/sec/android/app/sbrowser/settings/browsing_assist/ReadArticlesAloudPreferenceFragment;Lcom/samsung/android/sdk/scs/base/tasks/Task;)V

    return-void
.end method

.method public onResult(Z)V
    .locals 1

    iget v0, p0, Lcom/sec/android/app/sbrowser/settings/browsing_assist/b;->a:I

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/browsing_assist/b;->b:Lcom/sec/android/app/sbrowser/settings/browsing_assist/ReadArticlesAloudPreferenceFragment;

    packed-switch v0, :pswitch_data_0

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/settings/browsing_assist/ReadArticlesAloudPreferenceFragment;->p(Lcom/sec/android/app/sbrowser/settings/browsing_assist/ReadArticlesAloudPreferenceFragment;Z)V

    return-void

    :pswitch_0
    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/settings/browsing_assist/ReadArticlesAloudPreferenceFragment;->i(Lcom/sec/android/app/sbrowser/settings/browsing_assist/ReadArticlesAloudPreferenceFragment;Z)V

    return-void

    :pswitch_1
    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/settings/browsing_assist/ReadArticlesAloudPreferenceFragment;->j(Lcom/sec/android/app/sbrowser/settings/browsing_assist/ReadArticlesAloudPreferenceFragment;Z)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
