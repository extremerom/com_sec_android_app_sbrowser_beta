.class public final synthetic Lcom/sec/android/app/sbrowser/settings/U;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/sdk/scs/base/tasks/OnCompleteListener;
.implements Lcom/sec/android/app/sbrowser/artificial_intelligence/utils/WebAssistUtil$PromptScreenCallback;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/sec/android/app/sbrowser/settings/TranslatorPreferenceFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/sec/android/app/sbrowser/settings/TranslatorPreferenceFragment;I)V
    .locals 0

    iput p2, p0, Lcom/sec/android/app/sbrowser/settings/U;->a:I

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/settings/U;->b:Lcom/sec/android/app/sbrowser/settings/TranslatorPreferenceFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Lcom/samsung/android/sdk/scs/base/tasks/Task;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/U;->b:Lcom/sec/android/app/sbrowser/settings/TranslatorPreferenceFragment;

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/settings/TranslatorPreferenceFragment;->i(Lcom/sec/android/app/sbrowser/settings/TranslatorPreferenceFragment;Lcom/samsung/android/sdk/scs/base/tasks/Task;)V

    return-void
.end method

.method public onResult(Z)V
    .locals 1

    iget v0, p0, Lcom/sec/android/app/sbrowser/settings/U;->a:I

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/U;->b:Lcom/sec/android/app/sbrowser/settings/TranslatorPreferenceFragment;

    packed-switch v0, :pswitch_data_0

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/settings/TranslatorPreferenceFragment;->l(Lcom/sec/android/app/sbrowser/settings/TranslatorPreferenceFragment;Z)V

    return-void

    :pswitch_0
    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/settings/TranslatorPreferenceFragment;->p(Lcom/sec/android/app/sbrowser/settings/TranslatorPreferenceFragment;Z)V

    return-void

    :pswitch_1
    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/settings/TranslatorPreferenceFragment;->n(Lcom/sec/android/app/sbrowser/settings/TranslatorPreferenceFragment;Z)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
