.class public final synthetic Lcom/sec/android/app/sbrowser/settings/browsing_assist/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/sec/android/app/sbrowser/settings/browsing_assist/ReadArticlesAloudPreferenceFragment;

.field public final synthetic c:Z


# direct methods
.method public synthetic constructor <init>(Lcom/sec/android/app/sbrowser/settings/browsing_assist/ReadArticlesAloudPreferenceFragment;ZI)V
    .locals 0

    iput p3, p0, Lcom/sec/android/app/sbrowser/settings/browsing_assist/c;->a:I

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/settings/browsing_assist/c;->b:Lcom/sec/android/app/sbrowser/settings/browsing_assist/ReadArticlesAloudPreferenceFragment;

    iput-boolean p2, p0, Lcom/sec/android/app/sbrowser/settings/browsing_assist/c;->c:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget v0, p0, Lcom/sec/android/app/sbrowser/settings/browsing_assist/c;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/browsing_assist/c;->b:Lcom/sec/android/app/sbrowser/settings/browsing_assist/ReadArticlesAloudPreferenceFragment;

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/settings/browsing_assist/c;->c:Z

    invoke-static {v0, p0}, Lcom/sec/android/app/sbrowser/settings/browsing_assist/ReadArticlesAloudPreferenceFragment;->q(Lcom/sec/android/app/sbrowser/settings/browsing_assist/ReadArticlesAloudPreferenceFragment;Z)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/browsing_assist/c;->b:Lcom/sec/android/app/sbrowser/settings/browsing_assist/ReadArticlesAloudPreferenceFragment;

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/settings/browsing_assist/c;->c:Z

    invoke-static {v0, p0}, Lcom/sec/android/app/sbrowser/settings/browsing_assist/ReadArticlesAloudPreferenceFragment;->l(Lcom/sec/android/app/sbrowser/settings/browsing_assist/ReadArticlesAloudPreferenceFragment;Z)V

    return-void

    :pswitch_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/browsing_assist/c;->b:Lcom/sec/android/app/sbrowser/settings/browsing_assist/ReadArticlesAloudPreferenceFragment;

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/settings/browsing_assist/c;->c:Z

    invoke-static {v0, p0}, Lcom/sec/android/app/sbrowser/settings/browsing_assist/ReadArticlesAloudPreferenceFragment;->r(Lcom/sec/android/app/sbrowser/settings/browsing_assist/ReadArticlesAloudPreferenceFragment;Z)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
