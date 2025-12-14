.class public final synthetic Lcom/sec/android/app/sbrowser/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/Y;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/sec/android/app/sbrowser/SBrowserMainActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/sec/android/app/sbrowser/SBrowserMainActivity;I)V
    .locals 0

    iput p2, p0, Lcom/sec/android/app/sbrowser/e;->a:I

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/e;->b:Lcom/sec/android/app/sbrowser/SBrowserMainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onChanged(Ljava/lang/Object;)V
    .locals 1

    iget v0, p0, Lcom/sec/android/app/sbrowser/e;->a:I

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/e;->b:Lcom/sec/android/app/sbrowser/SBrowserMainActivity;

    packed-switch v0, :pswitch_data_0

    check-cast p1, Ljava/lang/Boolean;

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->C(Lcom/sec/android/app/sbrowser/SBrowserMainActivity;Ljava/lang/Boolean;)V

    return-void

    :pswitch_0
    check-cast p1, Ljava/lang/Boolean;

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->z(Lcom/sec/android/app/sbrowser/SBrowserMainActivity;Ljava/lang/Boolean;)V

    return-void

    :pswitch_1
    check-cast p1, Lcom/sec/android/app/sbrowser/common/livedata/Event;

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/SBrowserMainActivity;->x(Lcom/sec/android/app/sbrowser/SBrowserMainActivity;Lcom/sec/android/app/sbrowser/common/livedata/Event;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
