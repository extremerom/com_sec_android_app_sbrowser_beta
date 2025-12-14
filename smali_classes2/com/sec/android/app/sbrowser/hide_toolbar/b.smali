.class public final synthetic Lcom/sec/android/app/sbrowser/hide_toolbar/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarHandlerBase;


# direct methods
.method public synthetic constructor <init>(Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarHandlerBase;I)V
    .locals 0

    iput p2, p0, Lcom/sec/android/app/sbrowser/hide_toolbar/b;->a:I

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/hide_toolbar/b;->b:Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarHandlerBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget v0, p0, Lcom/sec/android/app/sbrowser/hide_toolbar/b;->a:I

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/hide_toolbar/b;->b:Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarHandlerBase;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarHandlerSimple;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarHandlerSimple;->hideBottomControlView()V

    return-void

    :pswitch_0
    check-cast p0, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarHandlerCompact;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarHandlerCompact;->hideBottomControlView()V

    return-void

    :pswitch_1
    check-cast p0, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarHandlerFocus;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarHandlerFocus;->hideBottomControlView()V

    return-void

    :pswitch_2
    check-cast p0, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarHandlerDefault;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarHandlerDefault;->a(Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarHandlerDefault;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
