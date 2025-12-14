.class public final synthetic Lcom/sec/android/app/sbrowser/hide_toolbar/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;

.field public final synthetic c:Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;


# direct methods
.method public synthetic constructor <init>(Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;I)V
    .locals 0

    iput p3, p0, Lcom/sec/android/app/sbrowser/hide_toolbar/e;->a:I

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/hide_toolbar/e;->b:Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/hide_toolbar/e;->c:Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget v0, p0, Lcom/sec/android/app/sbrowser/hide_toolbar/e;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/hide_toolbar/e;->b:Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/hide_toolbar/e;->c:Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;

    invoke-static {v0, p0}, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;->a(Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/hide_toolbar/e;->c:Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/hide_toolbar/e;->b:Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;

    invoke-static {p0, v0}, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;->b(Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
