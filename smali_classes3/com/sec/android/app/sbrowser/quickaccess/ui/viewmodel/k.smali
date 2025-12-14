.class public final synthetic Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/Y;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessBottomBarShadowVisibility;


# direct methods
.method public synthetic constructor <init>(Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessBottomBarShadowVisibility;I)V
    .locals 0

    iput p2, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/k;->a:I

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/k;->b:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessBottomBarShadowVisibility;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onChanged(Ljava/lang/Object;)V
    .locals 1

    iget v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/k;->a:I

    packed-switch v0, :pswitch_data_0

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/k;->b:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessBottomBarShadowVisibility;

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessBottomBarShadowVisibility;->c(Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessBottomBarShadowVisibility;Z)V

    return-void

    :pswitch_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/k;->b:Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessBottomBarShadowVisibility;

    check-cast p1, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/EditMode;

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessBottomBarShadowVisibility;->b(Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/QuickAccessBottomBarShadowVisibility;Lcom/sec/android/app/sbrowser/quickaccess/ui/viewmodel/EditMode;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
