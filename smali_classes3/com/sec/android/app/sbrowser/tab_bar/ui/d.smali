.class public final synthetic Lcom/sec/android/app/sbrowser/tab_bar/ui/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarBaseLayout;


# direct methods
.method public synthetic constructor <init>(Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarBaseLayout;I)V
    .locals 0

    iput p2, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/d;->a:I

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/d;->b:Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarBaseLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 1

    iget v0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/d;->a:I

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_bar/ui/d;->b:Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarBaseLayout;

    packed-switch v0, :pswitch_data_0

    invoke-interface {p0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayoutEventListener;->onScrollHeaderKeyEvent(Landroid/view/View;ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0

    :pswitch_0
    invoke-interface {p0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayoutEventListener;->onScrollButtonKeyEvent(Landroid/view/View;ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0

    :pswitch_1
    invoke-interface {p0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/tab_bar/ui/TabBarLayoutEventListener;->onNewTabButtonKeyEvent(Landroid/view/View;ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
