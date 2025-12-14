.class public final synthetic Lcom/sec/android/app/sbrowser/settings/browsing_assist/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/sec/android/app/sbrowser/settings/browsing_assist/SummarizePreferenceFragment;

.field public final synthetic c:Z


# direct methods
.method public synthetic constructor <init>(Lcom/sec/android/app/sbrowser/settings/browsing_assist/SummarizePreferenceFragment;ZI)V
    .locals 0

    iput p3, p0, Lcom/sec/android/app/sbrowser/settings/browsing_assist/g;->a:I

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/settings/browsing_assist/g;->b:Lcom/sec/android/app/sbrowser/settings/browsing_assist/SummarizePreferenceFragment;

    iput-boolean p2, p0, Lcom/sec/android/app/sbrowser/settings/browsing_assist/g;->c:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget v0, p0, Lcom/sec/android/app/sbrowser/settings/browsing_assist/g;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/browsing_assist/g;->b:Lcom/sec/android/app/sbrowser/settings/browsing_assist/SummarizePreferenceFragment;

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/settings/browsing_assist/g;->c:Z

    invoke-static {v0, p0}, Lcom/sec/android/app/sbrowser/settings/browsing_assist/SummarizePreferenceFragment;->l(Lcom/sec/android/app/sbrowser/settings/browsing_assist/SummarizePreferenceFragment;Z)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/browsing_assist/g;->b:Lcom/sec/android/app/sbrowser/settings/browsing_assist/SummarizePreferenceFragment;

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/settings/browsing_assist/g;->c:Z

    invoke-static {v0, p0}, Lcom/sec/android/app/sbrowser/settings/browsing_assist/SummarizePreferenceFragment;->m(Lcom/sec/android/app/sbrowser/settings/browsing_assist/SummarizePreferenceFragment;Z)V

    return-void

    :pswitch_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/browsing_assist/g;->b:Lcom/sec/android/app/sbrowser/settings/browsing_assist/SummarizePreferenceFragment;

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/settings/browsing_assist/g;->c:Z

    invoke-static {v0, p0}, Lcom/sec/android/app/sbrowser/settings/browsing_assist/SummarizePreferenceFragment;->o(Lcom/sec/android/app/sbrowser/settings/browsing_assist/SummarizePreferenceFragment;Z)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
