.class public final synthetic Lcom/sec/android/app/sbrowser/quickaccess/ui/page/F;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;

.field public final synthetic c:Ljava/lang/Boolean;


# direct methods
.method public synthetic constructor <init>(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;Ljava/lang/Boolean;I)V
    .locals 0

    iput p3, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/F;->a:I

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/F;->b:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/F;->c:Ljava/lang/Boolean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/F;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/F;->b:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/F;->c:Ljava/lang/Boolean;

    invoke-static {v0, p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;->d(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;Ljava/lang/Boolean;)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/F;->b:Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/F;->c:Ljava/lang/Boolean;

    invoke-static {v0, p0}, Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;->x(Lcom/sec/android/app/sbrowser/quickaccess/ui/page/QuickAccessMainLayout;Ljava/lang/Boolean;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
