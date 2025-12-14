.class public final synthetic Lcom/sec/android/app/sbrowser/settings/website/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(IILjava/lang/Object;)V
    .locals 0

    iput p2, p0, Lcom/sec/android/app/sbrowser/settings/website/k;->a:I

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/settings/website/k;->c:Ljava/lang/Object;

    iput p1, p0, Lcom/sec/android/app/sbrowser/settings/website/k;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget v0, p0, Lcom/sec/android/app/sbrowser/settings/website/k;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/website/k;->c:Ljava/lang/Object;

    check-cast v0, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiFragment;

    iget p0, p0, Lcom/sec/android/app/sbrowser/settings/website/k;->b:I

    invoke-static {v0, p0}, Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiFragment;->n(Lcom/sec/android/app/sbrowser/settings/website/WebPushNotiFragment;I)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/website/k;->c:Ljava/lang/Object;

    check-cast v0, Lcom/sec/android/app/sbrowser/settings/website/WDRecyclerView;

    iget p0, p0, Lcom/sec/android/app/sbrowser/settings/website/k;->b:I

    invoke-static {v0, p0}, Lcom/sec/android/app/sbrowser/settings/website/WDRecyclerView;->E(Lcom/sec/android/app/sbrowser/settings/website/WDRecyclerView;I)V

    return-void

    :pswitch_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/website/k;->c:Ljava/lang/Object;

    check-cast v0, Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceFragment$4;

    iget p0, p0, Lcom/sec/android/app/sbrowser/settings/website/k;->b:I

    invoke-static {v0, p0}, Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceFragment$4;->a(Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceFragment$4;I)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
