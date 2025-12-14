.class public final synthetic Lcom/sec/android/app/sbrowser/hide_toolbar/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;


# direct methods
.method public synthetic constructor <init>(Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;I)V
    .locals 0

    iput p2, p0, Lcom/sec/android/app/sbrowser/hide_toolbar/c;->a:I

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/hide_toolbar/c;->b:Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget v0, p0, Lcom/sec/android/app/sbrowser/hide_toolbar/c;->a:I

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/hide_toolbar/c;->b:Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;

    packed-switch v0, :pswitch_data_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;->postCaptureTopBar()V

    return-void

    :pswitch_0
    invoke-static {p0}, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;->c(Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
