.class public final synthetic Lcom/sec/android/app/sbrowser/settings/debug/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/Y;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/sec/android/app/sbrowser/settings/debug/QuickAccessDebugPreferenceFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/sec/android/app/sbrowser/settings/debug/QuickAccessDebugPreferenceFragment;I)V
    .locals 0

    iput p2, p0, Lcom/sec/android/app/sbrowser/settings/debug/l;->a:I

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/settings/debug/l;->b:Lcom/sec/android/app/sbrowser/settings/debug/QuickAccessDebugPreferenceFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onChanged(Ljava/lang/Object;)V
    .locals 1

    iget v0, p0, Lcom/sec/android/app/sbrowser/settings/debug/l;->a:I

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/debug/l;->b:Lcom/sec/android/app/sbrowser/settings/debug/QuickAccessDebugPreferenceFragment;

    packed-switch v0, :pswitch_data_0

    check-cast p1, Lcom/sec/android/app/sbrowser/common/livedata/Event;

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/settings/debug/QuickAccessDebugPreferenceFragment;->l(Lcom/sec/android/app/sbrowser/settings/debug/QuickAccessDebugPreferenceFragment;Lcom/sec/android/app/sbrowser/common/livedata/Event;)V

    return-void

    :pswitch_0
    check-cast p1, Landroidx/lifecycle/J;

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/settings/debug/QuickAccessDebugPreferenceFragment;->i(Lcom/sec/android/app/sbrowser/settings/debug/QuickAccessDebugPreferenceFragment;Landroidx/lifecycle/J;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
