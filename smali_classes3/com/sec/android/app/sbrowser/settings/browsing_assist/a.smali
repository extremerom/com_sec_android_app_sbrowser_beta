.class public final synthetic Lcom/sec/android/app/sbrowser/settings/browsing_assist/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/artificial_intelligence/utils/WebAssistUtil$PromptScreenCallback;
.implements Lcom/sec/android/app/sbrowser/artificial_intelligence/summarize/view/IntelligenceMenuPopupController$Callback;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/sec/android/app/sbrowser/settings/browsing_assist/BrowsingAssistFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/sec/android/app/sbrowser/settings/browsing_assist/BrowsingAssistFragment;I)V
    .locals 0

    iput p2, p0, Lcom/sec/android/app/sbrowser/settings/browsing_assist/a;->a:I

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/settings/browsing_assist/a;->b:Lcom/sec/android/app/sbrowser/settings/browsing_assist/BrowsingAssistFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onResult(Z)V
    .locals 1

    iget v0, p0, Lcom/sec/android/app/sbrowser/settings/browsing_assist/a;->a:I

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/browsing_assist/a;->b:Lcom/sec/android/app/sbrowser/settings/browsing_assist/BrowsingAssistFragment;

    packed-switch v0, :pswitch_data_0

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/settings/browsing_assist/BrowsingAssistFragment;->k(Lcom/sec/android/app/sbrowser/settings/browsing_assist/BrowsingAssistFragment;Z)V

    return-void

    :pswitch_0
    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/settings/browsing_assist/BrowsingAssistFragment;->i(Lcom/sec/android/app/sbrowser/settings/browsing_assist/BrowsingAssistFragment;Z)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
